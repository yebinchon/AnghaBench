; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_free_ddcb_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_free_ddcb_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32 }
%struct.ddcb_queue = type { i32, i64, i32*, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.genwqe_dev*, %struct.ddcb_queue*)* @free_ddcb_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_ddcb_queue(%struct.genwqe_dev* %0, %struct.ddcb_queue* %1) #0 {
  %3 = alloca %struct.genwqe_dev*, align 8
  %4 = alloca %struct.ddcb_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %3, align 8
  store %struct.ddcb_queue* %1, %struct.ddcb_queue** %4, align 8
  %6 = load %struct.ddcb_queue*, %struct.ddcb_queue** %4, align 8
  %7 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = call i32 @roundup(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ddcb_queue*, %struct.ddcb_queue** %4, align 8
  %15 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @kfree(i32* %16)
  %18 = load %struct.ddcb_queue*, %struct.ddcb_queue** %4, align 8
  %19 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.ddcb_queue*, %struct.ddcb_queue** %4, align 8
  %21 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %2
  %25 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.ddcb_queue*, %struct.ddcb_queue** %4, align 8
  %28 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.ddcb_queue*, %struct.ddcb_queue** %4, align 8
  %31 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @__genwqe_free_consistent(%struct.genwqe_dev* %25, i32 %26, i32* %29, i64 %32)
  %34 = load %struct.ddcb_queue*, %struct.ddcb_queue** %4, align 8
  %35 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.ddcb_queue*, %struct.ddcb_queue** %4, align 8
  %37 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %24, %2
  ret void
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @__genwqe_free_consistent(%struct.genwqe_dev*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
