; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_queue_wake_up_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_queue_wake_up_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { %struct.ddcb_queue }
%struct.ddcb_queue = type { i32, i64, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genwqe_dev*)* @queue_wake_up_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_wake_up_all(%struct.genwqe_dev* %0) #0 {
  %2 = alloca %struct.genwqe_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ddcb_queue*, align 8
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %2, align 8
  %6 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %7 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %6, i32 0, i32 0
  store %struct.ddcb_queue* %7, %struct.ddcb_queue** %5, align 8
  %8 = load %struct.ddcb_queue*, %struct.ddcb_queue** %5, align 8
  %9 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %8, i32 0, i32 2
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %27, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.ddcb_queue*, %struct.ddcb_queue** %5, align 8
  %15 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.ddcb_queue*, %struct.ddcb_queue** %5, align 8
  %20 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.ddcb_queue*, %struct.ddcb_queue** %5, align 8
  %23 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = call i32 @wake_up_interruptible(i32* %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.ddcb_queue*, %struct.ddcb_queue** %5, align 8
  %32 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %31, i32 0, i32 3
  %33 = call i32 @wake_up_interruptible(i32* %32)
  %34 = load %struct.ddcb_queue*, %struct.ddcb_queue** %5, align 8
  %35 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %34, i32 0, i32 2
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
