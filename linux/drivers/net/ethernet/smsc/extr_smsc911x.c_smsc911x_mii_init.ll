; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_mii_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_mii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i8*, i32, i32 }
%struct.net_device = type { i32 }
%struct.smsc911x_data = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32*, i32, i32, %struct.smsc911x_data*, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMSC_MDIONAME = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@smsc911x_mii_read = common dso_local global i32 0, align 4
@smsc911x_mii_write = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"External PHY is not supported, using internal PHY\00", align 1
@probe = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Error registering mii bus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.net_device*)* @smsc911x_mii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_mii_init(%struct.platform_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.smsc911x_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.smsc911x_data* @netdev_priv(%struct.net_device* %8)
  store %struct.smsc911x_data* %9, %struct.smsc911x_data** %6, align 8
  %10 = load i32, i32* @ENXIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = call %struct.TYPE_4__* (...) @mdiobus_alloc()
  %13 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %14 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %13, i32 0, i32 1
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %16 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %101

22:                                               ; preds = %2
  %23 = load i32, i32* @SMSC_MDIONAME, align 4
  %24 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %25 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 6
  store i32 %23, i32* %27, align 4
  %28 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %29 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %34 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @snprintf(i32 %32, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %39)
  %41 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %42 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %43 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  store %struct.smsc911x_data* %41, %struct.smsc911x_data** %45, align 8
  %46 = load i32, i32* @smsc911x_mii_read, align 4
  %47 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %48 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @smsc911x_mii_write, align 4
  %52 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %53 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 %51, i32* %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 2
  %58 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %59 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32* %57, i32** %61, align 8
  %62 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %63 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, -65536
  switch i32 %65, label %69 [
    i32 18284544, label %66
    i32 18153472, label %66
    i32 293208064, label %66
    i32 291110912, label %66
  ]

66:                                               ; preds = %22, %22, %22, %22
  %67 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %68 = call i32 @smsc911x_phy_initialise_external(%struct.smsc911x_data* %67)
  br label %75

69:                                               ; preds = %22
  %70 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %71 = load i32, i32* @hw, align 4
  %72 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %70, i32 %71, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %74 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %69, %66
  %76 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %77 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %82 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 -3, i32* %84, align 8
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %87 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = call i64 @mdiobus_register(%struct.TYPE_4__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %93 = load i32, i32* @probe, align 4
  %94 = call i32 @SMSC_WARN(%struct.smsc911x_data* %92, i32 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %96

95:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %103

96:                                               ; preds = %91
  %97 = load %struct.smsc911x_data*, %struct.smsc911x_data** %6, align 8
  %98 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = call i32 @mdiobus_free(%struct.TYPE_4__* %99)
  br label %101

101:                                              ; preds = %96, %19
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %95
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.smsc911x_data* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_4__* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @smsc911x_phy_initialise_external(%struct.smsc911x_data*) #1

declare dso_local i32 @SMSC_TRACE(%struct.smsc911x_data*, i32, i8*) #1

declare dso_local i64 @mdiobus_register(%struct.TYPE_4__*) #1

declare dso_local i32 @SMSC_WARN(%struct.smsc911x_data*, i32, i8*) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
