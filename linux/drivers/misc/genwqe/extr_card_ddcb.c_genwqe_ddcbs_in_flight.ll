; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_genwqe_ddcbs_in_flight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_genwqe_ddcbs_in_flight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { %struct.ddcb_queue }
%struct.ddcb_queue = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genwqe_ddcbs_in_flight(%struct.genwqe_dev* %0) #0 {
  %2 = alloca %struct.genwqe_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddcb_queue*, align 8
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %7 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %6, i32 0, i32 0
  store %struct.ddcb_queue* %7, %struct.ddcb_queue** %5, align 8
  %8 = load %struct.ddcb_queue*, %struct.ddcb_queue** %5, align 8
  %9 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %8, i32 0, i32 1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ddcb_queue*, %struct.ddcb_queue** %5, align 8
  %13 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ddcb_queue*, %struct.ddcb_queue** %5, align 8
  %18 = getelementptr inbounds %struct.ddcb_queue, %struct.ddcb_queue* %17, i32 0, i32 1
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
