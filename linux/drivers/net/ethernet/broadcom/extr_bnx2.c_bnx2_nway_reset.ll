; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_nway_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_nway_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2 = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@AUTONEG_SPEED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_REMOTE_PHY_CAP = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_SERDES = common dso_local global i32 0, align 4
@BMCR_LOOPBACK = common dso_local global i32 0, align 4
@BNX2_SERDES_AN_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bnx2_nway_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_nway_reset(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bnx2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.bnx2* @netdev_priv(%struct.net_device* %7)
  store %struct.bnx2* %8, %struct.bnx2** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @netif_running(%struct.net_device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %102

15:                                               ; preds = %1
  %16 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %17 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AUTONEG_SPEED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %102

25:                                               ; preds = %15
  %26 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %27 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %26, i32 0, i32 3
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %30 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BNX2_PHY_FLAG_REMOTE_PHY_CAP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %25
  %36 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %37 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %38 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bnx2_setup_remote_phy(%struct.bnx2* %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %42 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %41, i32 0, i32 3
  %43 = call i32 @spin_unlock_bh(i32* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %102

45:                                               ; preds = %25
  %46 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %47 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %45
  %53 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %54 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %55 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BMCR_LOOPBACK, align 4
  %58 = call i32 @bnx2_write_phy(%struct.bnx2* %53, i32 %56, i32 %57)
  %59 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %60 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %59, i32 0, i32 3
  %61 = call i32 @spin_unlock_bh(i32* %60)
  %62 = call i32 @msleep(i32 20)
  %63 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %64 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %63, i32 0, i32 3
  %65 = call i32 @spin_lock_bh(i32* %64)
  %66 = load i64, i64* @BNX2_SERDES_AN_TIMEOUT, align 8
  %67 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %68 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %67, i32 0, i32 5
  store i64 %66, i64* %68, align 8
  %69 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %70 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %72 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %71, i32 0, i32 6
  %73 = load i64, i64* @jiffies, align 8
  %74 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %75 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = call i32 @mod_timer(i32* %72, i64 %77)
  br label %79

79:                                               ; preds = %52, %45
  %80 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %81 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %82 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @bnx2_read_phy(%struct.bnx2* %80, i32 %83, i32* %5)
  %85 = load i32, i32* @BMCR_LOOPBACK, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %90 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %91 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @BMCR_ANRESTART, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @BMCR_ANENABLE, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @bnx2_write_phy(%struct.bnx2* %89, i32 %92, i32 %97)
  %99 = load %struct.bnx2*, %struct.bnx2** %4, align 8
  %100 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %99, i32 0, i32 3
  %101 = call i32 @spin_unlock_bh(i32* %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %79, %35, %22, %12
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @bnx2_setup_remote_phy(%struct.bnx2*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @bnx2_write_phy(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @bnx2_read_phy(%struct.bnx2*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
