; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_genwqe_next_ddcb_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_genwqe_next_ddcb_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { %struct.ddcb_queue }
%struct.ddcb_queue = type { i64, i32, %struct.ddcb* }
%struct.ddcb = type { i32 }

@DDCB_COMPLETED_BE32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genwqe_dev*)* @genwqe_next_ddcb_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genwqe_next_ddcb_ready(%struct.genwqe_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.genwqe_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ddcb*, align 8
  %6 = alloca %struct.ddcb_queue*, align 8
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %3, align 8
  %7 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %8 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %7, i32 0, i32 0
  store %struct.ddcb_queue* %8, %struct.ddcb_queue** %6, align 8
  %9 = load %struct.ddcb_queue*, %struct.ddcb_queue** %6, align 8
  %10 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %9, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ddcb_queue*, %struct.ddcb_queue** %6, align 8
  %14 = call i64 @queue_empty(%struct.ddcb_queue* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.ddcb_queue*, %struct.ddcb_queue** %6, align 8
  %18 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %17, i32 0, i32 1
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  store i32 0, i32* %2, align 4
  br label %45

21:                                               ; preds = %1
  %22 = load %struct.ddcb_queue*, %struct.ddcb_queue** %6, align 8
  %23 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %22, i32 0, i32 2
  %24 = load %struct.ddcb*, %struct.ddcb** %23, align 8
  %25 = load %struct.ddcb_queue*, %struct.ddcb_queue** %6, align 8
  %26 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %24, i64 %27
  store %struct.ddcb* %28, %struct.ddcb** %5, align 8
  %29 = load %struct.ddcb*, %struct.ddcb** %5, align 8
  %30 = getelementptr inbounds %struct.ddcb, %struct.ddcb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DDCB_COMPLETED_BE32, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %21
  %36 = load %struct.ddcb_queue*, %struct.ddcb_queue** %6, align 8
  %37 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %36, i32 0, i32 1
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  store i32 1, i32* %2, align 4
  br label %45

40:                                               ; preds = %21
  %41 = load %struct.ddcb_queue*, %struct.ddcb_queue** %6, align 8
  %42 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %41, i32 0, i32 1
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %35, %16
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @queue_empty(%struct.ddcb_queue*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
