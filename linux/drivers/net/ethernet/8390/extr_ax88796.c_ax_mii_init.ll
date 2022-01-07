; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_mii_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_mii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { i8*, i32 }
%struct.ei_device = type { i64 }
%struct.ax_device = type { %struct.TYPE_7__*, %struct.TYPE_8__, i64 }
%struct.TYPE_7__ = type { i8*, i32, i32 }
%struct.TYPE_8__ = type { i32* }

@bb_ops = common dso_local global i32 0, align 4
@AX_MEMR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ax88796_mii_bus\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ax_mii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax_mii_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.ei_device*, align 8
  %6 = alloca %struct.ax_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.platform_device* @to_platform_device(i32 %11)
  store %struct.platform_device* %12, %struct.platform_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.ei_device* @netdev_priv(%struct.net_device* %13)
  store %struct.ei_device* %14, %struct.ei_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.ax_device* @to_ax_dev(%struct.net_device* %15)
  store %struct.ax_device* %16, %struct.ax_device** %6, align 8
  %17 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %18 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32* @bb_ops, i32** %19, align 8
  %20 = load %struct.ei_device*, %struct.ei_device** %5, align 8
  %21 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AX_MEMR, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %26 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %28 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %27, i32 0, i32 1
  %29 = call %struct.TYPE_7__* @alloc_mdio_bitbang(%struct.TYPE_8__* %28)
  %30 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %31 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %30, i32 0, i32 0
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %31, align 8
  %32 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %33 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %78

39:                                               ; preds = %1
  %40 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %41 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %49 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 4
  %52 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %53 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %58 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @snprintf(i32 %56, i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %60, i32 %63)
  %65 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %66 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call i32 @mdiobus_register(%struct.TYPE_7__* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %39
  br label %73

72:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %80

73:                                               ; preds = %71
  %74 = load %struct.ax_device*, %struct.ax_device** %6, align 8
  %75 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = call i32 @free_mdio_bitbang(%struct.TYPE_7__* %76)
  br label %78

78:                                               ; preds = %73, %36
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %72
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ax_device* @to_ax_dev(%struct.net_device*) #1

declare dso_local %struct.TYPE_7__* @alloc_mdio_bitbang(%struct.TYPE_8__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @mdiobus_register(%struct.TYPE_7__*) #1

declare dso_local i32 @free_mdio_bitbang(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
