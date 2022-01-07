; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_rx_proc_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_rx_proc_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_info = type { i32, i32, i32 (%struct.dev_info*)*, %struct.ksz_hw }
%struct.ksz_hw = type { i32 }

@KS884X_INT_RX_MASK = common dso_local global i32 0, align 4
@KS884X_INT_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rx_proc_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_proc_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.dev_info*, align 8
  %4 = alloca %struct.ksz_hw*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.dev_info*
  store %struct.dev_info* %6, %struct.dev_info** %3, align 8
  %7 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %8 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %7, i32 0, i32 3
  store %struct.ksz_hw* %8, %struct.ksz_hw** %4, align 8
  %9 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %44

14:                                               ; preds = %1
  %15 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %16 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %15, i32 0, i32 2
  %17 = load i32 (%struct.dev_info*)*, i32 (%struct.dev_info*)** %16, align 8
  %18 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %19 = call i32 %17(%struct.dev_info* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %14
  %26 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %27 = call i32 @hw_resume_rx(%struct.ksz_hw* %26)
  %28 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %29 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %32 = load i32, i32* @KS884X_INT_RX_MASK, align 4
  %33 = call i32 @hw_turn_on_intr(%struct.ksz_hw* %31, i32 %32)
  %34 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %35 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %34, i32 0, i32 1
  %36 = call i32 @spin_unlock_irq(i32* %35)
  br label %44

37:                                               ; preds = %14
  %38 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %39 = load i32, i32* @KS884X_INT_RX, align 4
  %40 = call i32 @hw_ack_intr(%struct.ksz_hw* %38, i32 %39)
  %41 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %42 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %41, i32 0, i32 0
  %43 = call i32 @tasklet_schedule(i32* %42)
  br label %44

44:                                               ; preds = %13, %37, %25
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hw_resume_rx(%struct.ksz_hw*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @hw_turn_on_intr(%struct.ksz_hw*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @hw_ack_intr(%struct.ksz_hw*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
