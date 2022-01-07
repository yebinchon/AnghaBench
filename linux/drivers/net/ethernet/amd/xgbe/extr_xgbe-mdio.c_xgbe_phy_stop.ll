; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i64, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.xgbe_prv_data.0*)* }
%struct.xgbe_prv_data.0 = type opaque

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"stopping PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_stop(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %3 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %4 = load i32, i32* @link, align 4
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @netif_dbg(%struct.xgbe_prv_data* %3, i32 %4, i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %18 = call i32 @xgbe_an_disable_all(%struct.xgbe_prv_data* %17)
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %20 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %23 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %14
  %27 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %28 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %31 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %34 = call i32 @devm_free_irq(i32 %29, i64 %32, %struct.xgbe_prv_data* %33)
  br label %35

35:                                               ; preds = %26, %14
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %37 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %39, align 8
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %42 = bitcast %struct.xgbe_prv_data* %41 to %struct.xgbe_prv_data.0*
  %43 = call i32 %40(%struct.xgbe_prv_data.0* %42)
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %45 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %48 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @netif_carrier_off(i32 %49)
  %51 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %52 = call i32 @xgbe_phy_adjust_link(%struct.xgbe_prv_data* %51)
  br label %53

53:                                               ; preds = %35, %13
  ret void
}

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*) #1

declare dso_local i32 @xgbe_an_disable_all(%struct.xgbe_prv_data*) #1

declare dso_local i32 @devm_free_irq(i32, i64, %struct.xgbe_prv_data*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @xgbe_phy_adjust_link(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
