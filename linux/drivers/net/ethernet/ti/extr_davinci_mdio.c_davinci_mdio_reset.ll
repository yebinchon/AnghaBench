; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_mdio.c_davinci_mdio_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_mdio.c_davinci_mdio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.davinci_mdio_data* }
%struct.davinci_mdio_data = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"davinci mdio revision %d.%d, bus freq %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"detected phy mask %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"no live phy, scanning all\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*)* @davinci_mdio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mdio_reset(%struct.mii_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_bus*, align 8
  %4 = alloca %struct.davinci_mdio_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %3, align 8
  %8 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %9 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %8, i32 0, i32 0
  %10 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %9, align 8
  store %struct.davinci_mdio_data* %10, %struct.davinci_mdio_data** %4, align 8
  %11 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %4, align 8
  %12 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pm_runtime_get_sync(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %4, align 8
  %19 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pm_runtime_put_noidle(i32 %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %2, align 4
  br label %90

23:                                               ; preds = %1
  %24 = load i32, i32* @PHY_MAX_ADDR, align 4
  %25 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %4, align 8
  %26 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %24, %27
  %29 = call i32 @msleep(i32 %28)
  %30 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %4, align 8
  %31 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %30, i32 0, i32 3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = call i32 @readl(i32* %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %4, align 8
  %36 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 255
  %43 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %4, align 8
  %44 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %42, i32 %46)
  %48 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %4, align 8
  %49 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %23
  br label %81

53:                                               ; preds = %23
  %54 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %4, align 8
  %55 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %54, i32 0, i32 3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i32 @readl(i32* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %4, align 8
  %63 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = xor i32 %65, -1
  %67 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = xor i32 %68, -1
  store i32 %69, i32* %5, align 4
  br label %75

70:                                               ; preds = %53
  %71 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %4, align 8
  %72 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_warn(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %61
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %4, align 8
  %78 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %52
  %82 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %4, align 8
  %83 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pm_runtime_mark_last_busy(i32 %84)
  %86 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %4, align 8
  %87 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pm_runtime_put_autosuspend(i32 %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %81, %17
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
