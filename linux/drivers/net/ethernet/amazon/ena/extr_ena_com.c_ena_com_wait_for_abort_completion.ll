; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_wait_for_abort_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_wait_for_abort_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_admin_queue }
%struct.ena_com_admin_queue = type { i32, i32 }

@ENA_POLL_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_com_wait_for_abort_completion(%struct.ena_com_dev* %0) #0 {
  %2 = alloca %struct.ena_com_dev*, align 8
  %3 = alloca %struct.ena_com_admin_queue*, align 8
  %4 = alloca i64, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %2, align 8
  %5 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %6 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %5, i32 0, i32 0
  store %struct.ena_com_admin_queue* %6, %struct.ena_com_admin_queue** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %8 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  br label %11

11:                                               ; preds = %16, %1
  %12 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %13 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %12, i32 0, i32 1
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %18 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load i32, i32* @ENA_POLL_MS, align 4
  %22 = call i32 @msleep(i32 %21)
  %23 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %24 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %23, i32 0, i32 0
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %29 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
