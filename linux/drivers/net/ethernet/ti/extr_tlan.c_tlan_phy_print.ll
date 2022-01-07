; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_phy_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_phy_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tlan_priv = type { i64*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TLAN_ADAPTER_UNMANAGED_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Unmanaged PHY\0A\00", align 1
@TLAN_PHY_MAX_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"PHY 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"   Off.  +0     +1     +2     +3\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"   0x%02x 0x%04hx 0x%04hx 0x%04hx 0x%04hx\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Invalid PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tlan_phy_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_phy_print(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tlan_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.tlan_priv* %11, %struct.tlan_priv** %3, align 8
  %12 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %13 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %16 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %21 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TLAN_ADAPTER_UNMANAGED_PHY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %77

31:                                               ; preds = %1
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @TLAN_PHY_MAX_ADDR, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %31
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %40

40:                                               ; preds = %69, %35
  %41 = load i64, i64* %4, align 8
  %42 = icmp slt i64 %41, 32
  br i1 %42, label %43, label %72

43:                                               ; preds = %40
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @tlan_mii_read_reg(%struct.net_device* %44, i64 %45, i64 %46, i64* %5)
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %4, align 8
  %51 = add nsw i64 %50, 1
  %52 = call i32 @tlan_mii_read_reg(%struct.net_device* %48, i64 %49, i64 %51, i64* %6)
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %4, align 8
  %56 = add nsw i64 %55, 2
  %57 = call i32 @tlan_mii_read_reg(%struct.net_device* %53, i64 %54, i64 %56, i64* %7)
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %4, align 8
  %61 = add nsw i64 %60, 3
  %62 = call i32 @tlan_mii_read_reg(%struct.net_device* %58, i64 %59, i64 %61, i64* %8)
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %63, i64 %64, i64 %65, i64 %66, i64 %67)
  br label %69

69:                                               ; preds = %43
  %70 = load i64, i64* %4, align 8
  %71 = add nsw i64 %70, 4
  store i64 %71, i64* %4, align 8
  br label %40

72:                                               ; preds = %40
  br label %76

73:                                               ; preds = %31
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %72
  br label %77

77:                                               ; preds = %76, %28
  ret void
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @tlan_mii_read_reg(%struct.net_device*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
