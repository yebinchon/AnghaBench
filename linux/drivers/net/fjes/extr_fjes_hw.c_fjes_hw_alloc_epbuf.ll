; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_alloc_epbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_alloc_epbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epbuf_handler = type { i32*, %union.ep_buffer_info*, i32, i8* }
%union.ep_buffer_info = type { i32 }

@EP_BUFFER_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.epbuf_handler*)* @fjes_hw_alloc_epbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjes_hw_alloc_epbuf(%struct.epbuf_handler* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.epbuf_handler*, align 8
  %4 = alloca i8*, align 8
  store %struct.epbuf_handler* %0, %struct.epbuf_handler** %3, align 8
  %5 = load i32, i32* @EP_BUFFER_SIZE, align 4
  %6 = call i8* @vzalloc(i32 %5)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.epbuf_handler*, %struct.epbuf_handler** %3, align 8
  %15 = getelementptr inbounds %struct.epbuf_handler, %struct.epbuf_handler* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @EP_BUFFER_SIZE, align 4
  %17 = load %struct.epbuf_handler*, %struct.epbuf_handler** %3, align 8
  %18 = getelementptr inbounds %struct.epbuf_handler, %struct.epbuf_handler* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to %union.ep_buffer_info*
  %21 = load %struct.epbuf_handler*, %struct.epbuf_handler** %3, align 8
  %22 = getelementptr inbounds %struct.epbuf_handler, %struct.epbuf_handler* %21, i32 0, i32 1
  store %union.ep_buffer_info* %20, %union.ep_buffer_info** %22, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr i8, i8* %23, i64 4
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.epbuf_handler*, %struct.epbuf_handler** %3, align 8
  %27 = getelementptr inbounds %struct.epbuf_handler, %struct.epbuf_handler* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %12, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i8* @vzalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
