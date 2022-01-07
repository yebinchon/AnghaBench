; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_probe_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_probe_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_platform_config = type { i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@PHY_INTERFACE_MODE_NA = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"reg-io-width\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SMSC911X_USE_32BIT = common dso_local global i32 0, align 4
@SMSC911X_USE_16BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"reg-shift\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"smsc,irq-active-high\00", align 1
@SMSC911X_IRQ_POLARITY_ACTIVE_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"smsc,irq-push-pull\00", align 1
@SMSC911X_IRQ_TYPE_PUSH_PULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"smsc,force-internal-phy\00", align 1
@SMSC911X_FORCE_INTERNAL_PHY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"smsc,force-external-phy\00", align 1
@SMSC911X_FORCE_EXTERNAL_PHY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"smsc,save-mac-address\00", align 1
@SMSC911X_SAVE_MAC_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc911x_platform_config*, %struct.device*)* @smsc911x_probe_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_probe_config(%struct.smsc911x_platform_config* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smsc911x_platform_config*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.smsc911x_platform_config* %0, %struct.smsc911x_platform_config** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call i32 @device_get_phy_mode(%struct.device* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @PHY_INTERFACE_MODE_NA, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %4, align 8
  %18 = getelementptr inbounds %struct.smsc911x_platform_config, %struct.smsc911x_platform_config* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %4, align 8
  %21 = getelementptr inbounds %struct.smsc911x_platform_config, %struct.smsc911x_platform_config* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i32 @device_get_mac_address(%struct.device* %19, i32 %22, i32 %23)
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call i32 @device_property_read_u32(%struct.device* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %15
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %102

33:                                               ; preds = %15
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* @SMSC911X_USE_32BIT, align 4
  %41 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %4, align 8
  %42 = getelementptr inbounds %struct.smsc911x_platform_config, %struct.smsc911x_platform_config* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %51

45:                                               ; preds = %36, %33
  %46 = load i32, i32* @SMSC911X_USE_16BIT, align 4
  %47 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %4, align 8
  %48 = getelementptr inbounds %struct.smsc911x_platform_config, %struct.smsc911x_platform_config* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %4, align 8
  %54 = getelementptr inbounds %struct.smsc911x_platform_config, %struct.smsc911x_platform_config* %53, i32 0, i32 1
  %55 = call i32 @device_property_read_u32(%struct.device* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %54)
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = call i64 @device_property_present(%struct.device* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32, i32* @SMSC911X_IRQ_POLARITY_ACTIVE_HIGH, align 4
  %61 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %4, align 8
  %62 = getelementptr inbounds %struct.smsc911x_platform_config, %struct.smsc911x_platform_config* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %51
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call i64 @device_property_present(%struct.device* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @SMSC911X_IRQ_TYPE_PUSH_PULL, align 4
  %69 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %4, align 8
  %70 = getelementptr inbounds %struct.smsc911x_platform_config, %struct.smsc911x_platform_config* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = call i64 @device_property_present(%struct.device* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* @SMSC911X_FORCE_INTERNAL_PHY, align 4
  %77 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %4, align 8
  %78 = getelementptr inbounds %struct.smsc911x_platform_config, %struct.smsc911x_platform_config* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %71
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = call i64 @device_property_present(%struct.device* %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* @SMSC911X_FORCE_EXTERNAL_PHY, align 4
  %87 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %4, align 8
  %88 = getelementptr inbounds %struct.smsc911x_platform_config, %struct.smsc911x_platform_config* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %81
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = call i64 @device_property_present(%struct.device* %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* @SMSC911X_SAVE_MAC_ADDRESS, align 4
  %97 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %4, align 8
  %98 = getelementptr inbounds %struct.smsc911x_platform_config, %struct.smsc911x_platform_config* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %91
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %31
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @device_get_phy_mode(%struct.device*) #1

declare dso_local i32 @device_get_mac_address(%struct.device*, i32, i32) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i64 @device_property_present(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
