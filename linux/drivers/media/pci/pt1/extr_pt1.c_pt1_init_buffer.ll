; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_init_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_init_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { i32 }
%struct.pt1_buffer = type { i32, %struct.pt1_buffer_page* }
%struct.pt1_buffer_page = type { i64* }

@ENOMEM = common dso_local global i32 0, align 4
@PT1_NR_UPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt1*, %struct.pt1_buffer*, i32*)* @pt1_init_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt1_init_buffer(%struct.pt1* %0, %struct.pt1_buffer* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt1*, align 8
  %6 = alloca %struct.pt1_buffer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pt1_buffer_page*, align 8
  %9 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %5, align 8
  store %struct.pt1_buffer* %1, %struct.pt1_buffer** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.pt1*, %struct.pt1** %5, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call %struct.pt1_buffer_page* @pt1_alloc_page(%struct.pt1* %10, i32* %9, i32* %11)
  store %struct.pt1_buffer_page* %12, %struct.pt1_buffer_page** %8, align 8
  %13 = load %struct.pt1_buffer_page*, %struct.pt1_buffer_page** %8, align 8
  %14 = icmp eq %struct.pt1_buffer_page* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %32

18:                                               ; preds = %3
  %19 = load %struct.pt1_buffer_page*, %struct.pt1_buffer_page** %8, align 8
  %20 = getelementptr inbounds %struct.pt1_buffer_page, %struct.pt1_buffer_page* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* @PT1_NR_UPACKETS, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  store i64 0, i64* %25, align 8
  %26 = load %struct.pt1_buffer_page*, %struct.pt1_buffer_page** %8, align 8
  %27 = load %struct.pt1_buffer*, %struct.pt1_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.pt1_buffer, %struct.pt1_buffer* %27, i32 0, i32 1
  store %struct.pt1_buffer_page* %26, %struct.pt1_buffer_page** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.pt1_buffer*, %struct.pt1_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.pt1_buffer, %struct.pt1_buffer* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %18, %15
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.pt1_buffer_page* @pt1_alloc_page(%struct.pt1*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
