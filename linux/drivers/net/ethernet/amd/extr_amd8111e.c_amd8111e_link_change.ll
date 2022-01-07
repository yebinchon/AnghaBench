; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.amd8111e_priv = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i32 }

@STAT0 = common dso_local global i64 0, align 8
@LINK_STATS = common dso_local global i32 0, align 4
@AUTONEG_COMPLETE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@FULL_DPLX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@SPEED_MASK = common dso_local global i32 0, align 4
@PHY_SPEED_10 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i64 0, align 8
@PHY_SPEED_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Link is Up. Speed is %s Mbps %s Duplex\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@SPEED_INVALID = common dso_local global i64 0, align 8
@DUPLEX_INVALID = common dso_local global i64 0, align 8
@AUTONEG_INVALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"Link is Down.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @amd8111e_link_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_link_change(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.amd8111e_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.amd8111e_priv* %7, %struct.amd8111e_priv** %3, align 8
  %8 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %9 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @STAT0, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @LINK_STATS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %92

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @AUTONEG_COMPLETE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* @AUTONEG_ENABLE, align 4
  %25 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %26 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  br label %33

28:                                               ; preds = %18
  %29 = load i32, i32* @AUTONEG_DISABLE, align 4
  %30 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %31 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @FULL_DPLX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i64, i64* @DUPLEX_FULL, align 8
  %40 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %41 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  br label %48

43:                                               ; preds = %33
  %44 = load i64, i64* @DUPLEX_HALF, align 8
  %45 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %46 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @SPEED_MASK, align 4
  %51 = and i32 %49, %50
  %52 = ashr i32 %51, 7
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @PHY_SPEED_10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load i64, i64* @SPEED_10, align 8
  %58 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %59 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i64 %57, i64* %60, align 8
  br label %71

61:                                               ; preds = %48
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @PHY_SPEED_100, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i64, i64* @SPEED_100, align 8
  %67 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %68 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i64 %66, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %61
  br label %71

71:                                               ; preds = %70, %56
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %74 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SPEED_100, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %81 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %82 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DUPLEX_FULL, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %89 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %80, i8* %88)
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = call i32 @netif_carrier_on(%struct.net_device* %90)
  br label %109

92:                                               ; preds = %1
  %93 = load i64, i64* @SPEED_INVALID, align 8
  %94 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %95 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i64 %93, i64* %96, align 8
  %97 = load i64, i64* @DUPLEX_INVALID, align 8
  %98 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %99 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i64 %97, i64* %100, align 8
  %101 = load i32, i32* @AUTONEG_INVALID, align 4
  %102 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %3, align 8
  %103 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 8
  %105 = load %struct.net_device*, %struct.net_device** %2, align 8
  %106 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %105, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = call i32 @netif_carrier_off(%struct.net_device* %107)
  br label %109

109:                                              ; preds = %92, %71
  ret i32 0
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
