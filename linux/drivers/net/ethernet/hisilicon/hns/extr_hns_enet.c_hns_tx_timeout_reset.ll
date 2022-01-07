; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_tx_timeout_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_tx_timeout_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_nic_priv = type { i32, i32, i32 }

@NIC_STATE_DOWN = common dso_local global i32 0, align 4
@NIC_STATE2_RESET_REQUESTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"initiating reset due to tx timeout(%llu,0x%lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_nic_priv*)* @hns_tx_timeout_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_tx_timeout_reset(%struct.hns_nic_priv* %0) #0 {
  %2 = alloca %struct.hns_nic_priv*, align 8
  store %struct.hns_nic_priv* %0, %struct.hns_nic_priv** %2, align 8
  %3 = load i32, i32* @NIC_STATE_DOWN, align 4
  %4 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %5 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %4, i32 0, i32 1
  %6 = call i32 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @NIC_STATE2_RESET_REQUESTED, align 4
  %10 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %11 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %10, i32 0, i32 1
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %14 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %17 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %20 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @netdev_warn(i32 %15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %24 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %2, align 8
  %28 = call i32 @hns_nic_task_schedule(%struct.hns_nic_priv* %27)
  br label %29

29:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @hns_nic_task_schedule(%struct.hns_nic_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
