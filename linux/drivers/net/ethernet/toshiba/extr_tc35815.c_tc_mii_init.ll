; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_tc_mii_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_tc_mii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc35815_local = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i8*, i32*, %struct.net_device*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"tc35815_mii_bus\00", align 1
@tc_mdio_read = common dso_local global i32 0, align 4
@tc_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @tc_mii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_mii_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.tc35815_local*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.tc35815_local* @netdev_priv(%struct.net_device* %6)
  store %struct.tc35815_local* %7, %struct.tc35815_local** %4, align 8
  %8 = call %struct.TYPE_9__* (...) @mdiobus_alloc()
  %9 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %10 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %9, i32 0, i32 0
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %10, align 8
  %11 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %12 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp eq %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %91

18:                                               ; preds = %1
  %19 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %20 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* @tc_mdio_read, align 4
  %24 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %25 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 5
  store i32 %23, i32* %27, align 8
  %28 = load i32, i32* @tc_mdio_write, align 4
  %29 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %30 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  store i32 %28, i32* %32, align 4
  %33 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %34 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %39 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %40 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 8
  %47 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %48 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %46, %51
  %53 = call i32 @snprintf(i32 %37, i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %56 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store %struct.net_device* %54, %struct.net_device** %58, align 8
  %59 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %60 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %64 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i32* %62, i32** %66, align 8
  %67 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %68 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = call i32 @mdiobus_register(%struct.TYPE_9__* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %18
  br label %86

74:                                               ; preds = %18
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = call i32 @tc_mii_probe(%struct.net_device* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %81

80:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %93

81:                                               ; preds = %79
  %82 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %83 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = call i32 @mdiobus_unregister(%struct.TYPE_9__* %84)
  br label %86

86:                                               ; preds = %81, %73
  %87 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %88 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = call i32 @mdiobus_free(%struct.TYPE_9__* %89)
  br label %91

91:                                               ; preds = %86, %15
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %80
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.tc35815_local* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_9__* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @mdiobus_register(%struct.TYPE_9__*) #1

declare dso_local i32 @tc_mii_probe(%struct.net_device*) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_9__*) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
