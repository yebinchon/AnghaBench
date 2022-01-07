; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_get_comm_ownership.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_get_comm_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32 }

@xgbe_phy_comm_lock = common dso_local global i32 0, align 4
@XP_I2C_MUTEX = common dso_local global i32 0, align 4
@XGBE_MUTEX_RELEASE = common dso_local global i32 0, align 4
@XP_MDIO_MUTEX = common dso_local global i32 0, align 4
@ID = common dso_local global i32 0, align 4
@ACTIVE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unable to obtain hardware mutexes\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_get_comm_ownership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_get_comm_ownership(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_phy_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 1
  %9 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %8, align 8
  store %struct.xgbe_phy_data* %9, %struct.xgbe_phy_data** %4, align 8
  %10 = call i32 @mutex_lock(i32* @xgbe_phy_comm_lock)
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %12 = load i32, i32* @XP_I2C_MUTEX, align 4
  %13 = load i32, i32* @XGBE_MUTEX_RELEASE, align 4
  %14 = call i32 @XP_IOWRITE(%struct.xgbe_prv_data* %11, i32 %12, i32 %13)
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %16 = load i32, i32* @XP_MDIO_MUTEX, align 4
  %17 = load i32, i32* @XGBE_MUTEX_RELEASE, align 4
  %18 = call i32 @XP_IOWRITE(%struct.xgbe_prv_data* %15, i32 %16, i32 %17)
  store i32 0, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @XP_I2C_MUTEX, align 4
  %21 = load i32, i32* @ID, align 4
  %22 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %23 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @XP_SET_BITS(i32 %19, i32 %20, i32 %21, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @XP_I2C_MUTEX, align 4
  %28 = load i32, i32* @ACTIVE, align 4
  %29 = call i32 @XP_SET_BITS(i32 %26, i32 %27, i32 %28, i32 1)
  %30 = load i32, i32* @jiffies, align 4
  %31 = load i32, i32* @HZ, align 4
  %32 = mul nsw i32 5, %31
  %33 = add nsw i32 %30, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %50, %1
  %36 = load i32, i32* @jiffies, align 4
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @time_before(i32 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %42 = load i32, i32* @XP_I2C_MUTEX, align 4
  %43 = call i64 @XP_IOREAD(%struct.xgbe_prv_data* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %47 = load i32, i32* @XP_MDIO_MUTEX, align 4
  %48 = call i64 @XP_IOREAD(%struct.xgbe_prv_data* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %40
  %51 = call i32 @usleep_range(i32 100, i32 200)
  br label %35

52:                                               ; preds = %45
  %53 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %54 = load i32, i32* @XP_I2C_MUTEX, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @XP_IOWRITE(%struct.xgbe_prv_data* %53, i32 %54, i32 %55)
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %58 = load i32, i32* @XP_MDIO_MUTEX, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @XP_IOWRITE(%struct.xgbe_prv_data* %57, i32 %58, i32 %59)
  store i32 0, i32* %2, align 4
  br label %69

61:                                               ; preds = %35
  %62 = call i32 @mutex_unlock(i32* @xgbe_phy_comm_lock)
  %63 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %64 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @netdev_err(i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @ETIMEDOUT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %61, %52
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @XP_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XP_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i64 @XP_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
