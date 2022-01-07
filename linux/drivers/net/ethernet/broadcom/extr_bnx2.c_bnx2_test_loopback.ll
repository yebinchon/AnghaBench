; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_test_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_test_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32 }

@BNX2_LOOPBACK_FAILED = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_CODE_RESET = common dso_local global i32 0, align 4
@BNX2_MAC_LOOPBACK = common dso_local global i32 0, align 4
@BNX2_MAC_LOOPBACK_FAILED = common dso_local global i32 0, align 4
@BNX2_PHY_LOOPBACK = common dso_local global i32 0, align 4
@BNX2_PHY_LOOPBACK_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_test_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_test_loopback(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %6 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @netif_running(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @BNX2_LOOPBACK_FAILED, align 4
  store i32 %11, i32* %2, align 4
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %14 = load i32, i32* @BNX2_DRV_MSG_CODE_RESET, align 4
  %15 = call i32 @bnx2_reset_nic(%struct.bnx2* %13, i32 %14)
  %16 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %20 = call i32 @bnx2_init_phy(%struct.bnx2* %19, i32 1)
  %21 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_bh(i32* %22)
  %24 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %25 = load i32, i32* @BNX2_MAC_LOOPBACK, align 4
  %26 = call i64 @bnx2_run_loopback(%struct.bnx2* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %12
  %29 = load i32, i32* @BNX2_MAC_LOOPBACK_FAILED, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %12
  %33 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %34 = load i32, i32* @BNX2_PHY_LOOPBACK, align 4
  %35 = call i64 @bnx2_run_loopback(%struct.bnx2* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @BNX2_PHY_LOOPBACK_FAILED, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @bnx2_reset_nic(%struct.bnx2*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @bnx2_init_phy(%struct.bnx2*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @bnx2_run_loopback(%struct.bnx2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
