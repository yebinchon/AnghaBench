; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_check_link_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_check_link_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i64, i32 }

@XGBE_LINK_TIMEOUT = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"AN link timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_check_link_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_check_link_timeout(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i64, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @XGBE_LINK_TIMEOUT, align 8
  %8 = load i64, i64* @HZ, align 8
  %9 = mul i64 %7, %8
  %10 = add i64 %6, %9
  store i64 %10, i64* %3, align 8
  %11 = load i32, i32* @jiffies, align 4
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @time_after(i32 %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %17 = load i32, i32* @link, align 4
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %19 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @netif_dbg(%struct.xgbe_prv_data* %16, i32 %17, i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %23 = call i32 @xgbe_phy_config_aneg(%struct.xgbe_prv_data* %22)
  br label %24

24:                                               ; preds = %15, %1
  ret void
}

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*) #1

declare dso_local i32 @xgbe_phy_config_aneg(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
