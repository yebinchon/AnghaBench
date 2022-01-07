; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_mii_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_mii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smsc9420_pdata = type { %struct.TYPE_9__*, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.smsc9420_pdata*, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRV_MDIONAME = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@smsc9420_mii_read = common dso_local global i32 0, align 4
@smsc9420_mii_write = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Error registering mii bus\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Error probing mii bus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smsc9420_mii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_mii_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smsc9420_pdata*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %6)
  store %struct.smsc9420_pdata* %7, %struct.smsc9420_pdata** %4, align 8
  %8 = load i32, i32* @ENXIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = call %struct.TYPE_9__* (...) @mdiobus_alloc()
  %11 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %12 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %11, i32 0, i32 0
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %12, align 8
  %13 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %14 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %100

20:                                               ; preds = %1
  %21 = load i32, i32* @DRV_MDIONAME, align 4
  %22 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %23 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 5
  store i32 %21, i32* %25, align 4
  %26 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %27 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %32 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %33 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %41 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %39, %44
  %46 = call i32 @snprintf(i32 %30, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %48 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %49 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  store %struct.smsc9420_pdata* %47, %struct.smsc9420_pdata** %51, align 8
  %52 = load i32, i32* @smsc9420_mii_read, align 4
  %53 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %54 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  store i32 %52, i32* %56, align 8
  %57 = load i32, i32* @smsc9420_mii_write, align 4
  %58 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %59 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 4
  %62 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %63 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 -3, i32* %65, align 8
  %66 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %67 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = call i64 @mdiobus_register(%struct.TYPE_9__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %20
  %72 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %73 = load i32, i32* @probe, align 4
  %74 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %75 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @netif_warn(%struct.smsc9420_pdata* %72, i32 %73, i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %95

78:                                               ; preds = %20
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = call i64 @smsc9420_mii_probe(%struct.net_device* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %84 = load i32, i32* @probe, align 4
  %85 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %86 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @netif_warn(%struct.smsc9420_pdata* %83, i32 %84, i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %90

89:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %102

90:                                               ; preds = %82
  %91 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %92 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = call i32 @mdiobus_unregister(%struct.TYPE_9__* %93)
  br label %95

95:                                               ; preds = %90, %71
  %96 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %97 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = call i32 @mdiobus_free(%struct.TYPE_9__* %98)
  br label %100

100:                                              ; preds = %95, %17
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %89
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_9__* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @mdiobus_register(%struct.TYPE_9__*) #1

declare dso_local i32 @netif_warn(%struct.smsc9420_pdata*, i32, i32, i8*) #1

declare dso_local i64 @smsc9420_mii_probe(%struct.net_device*) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_9__*) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
