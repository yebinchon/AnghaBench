; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, %struct.xgbe_phy_data* }
%struct.TYPE_4__ = type { i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.1*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.xgbe_prv_data.2*, i32, i32)* }
%struct.xgbe_prv_data.2 = type opaque
%struct.xgbe_phy_data = type { i32, i32, i32, i32, i64 }

@XGBE_MDIO_MODE_CL22 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"redriver mdio port not compatible (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_start(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_phy_data*, align 8
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 3
  %8 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %7, align 8
  store %struct.xgbe_phy_data* %8, %struct.xgbe_phy_data** %4, align 8
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %11, align 8
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %14 = bitcast %struct.xgbe_prv_data* %13 to %struct.xgbe_prv_data.0*
  %15 = call i32 %12(%struct.xgbe_prv_data.0* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %85

20:                                               ; preds = %1
  %21 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %22 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %20
  %26 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %27 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %25
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %32 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.xgbe_prv_data.2*, i32, i32)*, i32 (%struct.xgbe_prv_data.2*, i32, i32)** %33, align 8
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %36 = bitcast %struct.xgbe_prv_data* %35 to %struct.xgbe_prv_data.2*
  %37 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %38 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @XGBE_MDIO_MODE_CL22, align 4
  %41 = call i32 %34(%struct.xgbe_prv_data.2* %36, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %30
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %49 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @netdev_err(i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %85

53:                                               ; preds = %30
  br label %54

54:                                               ; preds = %53, %25, %20
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %56 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %57 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @xgbe_phy_set_mode(%struct.xgbe_prv_data* %55, i32 %58)
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %61 = call i32 @xgbe_phy_cdr_track(%struct.xgbe_prv_data* %60)
  %62 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %63 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %68 [
    i32 128, label %65
  ]

65:                                               ; preds = %54
  %66 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %67 = call i32 @xgbe_phy_sfp_detect(%struct.xgbe_prv_data* %66)
  br label %69

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %68, %65
  %70 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %71 = call i32 @xgbe_phy_find_phy_device(%struct.xgbe_prv_data* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %76

75:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %85

76:                                               ; preds = %74
  %77 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %78 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %79, align 8
  %81 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %82 = bitcast %struct.xgbe_prv_data* %81 to %struct.xgbe_prv_data.1*
  %83 = call i32 %80(%struct.xgbe_prv_data.1* %82)
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %76, %75, %44, %18
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @xgbe_phy_set_mode(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_phy_cdr_track(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_sfp_detect(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_find_phy_device(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
