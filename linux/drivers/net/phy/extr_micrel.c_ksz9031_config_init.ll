; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_ksz9031_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_ksz9031_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { %struct.device*, %struct.device_node* }
%struct.device_node = type { i32 }

@ksz9031_config_init.clk_skews = internal global [2 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [12 x i8] c"rxc-skew-ps\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"txc-skew-ps\00", align 1
@ksz9031_config_init.rx_data_skews = internal global [4 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [13 x i8] c"rxd0-skew-ps\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"rxd1-skew-ps\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"rxd2-skew-ps\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"rxd3-skew-ps\00", align 1
@ksz9031_config_init.tx_data_skews = internal global [4 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str.6 = private unnamed_addr constant [13 x i8] c"txd0-skew-ps\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"txd1-skew-ps\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"txd2-skew-ps\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"txd3-skew-ps\00", align 1
@ksz9031_config_init.control_skews = internal global [2 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [13 x i8] c"txen-skew-ps\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"rxdv-skew-ps\00", align 1
@MII_KSZ9031RN_CLK_PAD_SKEW = common dso_local global i32 0, align 4
@MII_KSZ9031RN_CONTROL_PAD_SKEW = common dso_local global i32 0, align 4
@MII_KSZ9031RN_RX_DATA_PAD_SKEW = common dso_local global i32 0, align 4
@MII_KSZ9031RN_TX_DATA_PAD_SKEW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"micrel,force-master\00", align 1
@MII_CTRL1000 = common dso_local global i32 0, align 4
@CTL1000_ENABLE_MASTER = common dso_local global i32 0, align 4
@CTL1000_AS_MASTER = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [40 x i8] c"failed to force the phy to master mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @ksz9031_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9031_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %8 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 1
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = call i32 @ksz9031_enable_edpd(%struct.phy_device* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %91

20:                                               ; preds = %1
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %6, align 8
  br label %24

24:                                               ; preds = %37, %20
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 1
  %27 = load %struct.device_node*, %struct.device_node** %26, align 8
  store %struct.device_node* %27, %struct.device_node** %5, align 8
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load %struct.device*, %struct.device** %29, align 8
  store %struct.device* %30, %struct.device** %6, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = icmp ne %struct.device_node* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = icmp ne %struct.device* %35, null
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i1 [ false, %31 ], [ %36, %34 ]
  br i1 %38, label %24, label %39

39:                                               ; preds = %37
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = icmp ne %struct.device_node* %40, null
  br i1 %41, label %42, label %84

42:                                               ; preds = %39
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = load %struct.device_node*, %struct.device_node** %5, align 8
  %45 = load i32, i32* @MII_KSZ9031RN_CLK_PAD_SKEW, align 4
  %46 = call i32 @ksz9031_of_load_skew_values(%struct.phy_device* %43, %struct.device_node* %44, i32 %45, i32 5, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @ksz9031_config_init.clk_skews, i64 0, i64 0), i32 2)
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = load %struct.device_node*, %struct.device_node** %5, align 8
  %49 = load i32, i32* @MII_KSZ9031RN_CONTROL_PAD_SKEW, align 4
  %50 = call i32 @ksz9031_of_load_skew_values(%struct.phy_device* %47, %struct.device_node* %48, i32 %49, i32 4, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @ksz9031_config_init.control_skews, i64 0, i64 0), i32 2)
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = load %struct.device_node*, %struct.device_node** %5, align 8
  %53 = load i32, i32* @MII_KSZ9031RN_RX_DATA_PAD_SKEW, align 4
  %54 = call i32 @ksz9031_of_load_skew_values(%struct.phy_device* %51, %struct.device_node* %52, i32 %53, i32 4, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @ksz9031_config_init.rx_data_skews, i64 0, i64 0), i32 4)
  %55 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %56 = load %struct.device_node*, %struct.device_node** %5, align 8
  %57 = load i32, i32* @MII_KSZ9031RN_TX_DATA_PAD_SKEW, align 4
  %58 = call i32 @ksz9031_of_load_skew_values(%struct.phy_device* %55, %struct.device_node* %56, i32 %57, i32 4, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @ksz9031_config_init.tx_data_skews, i64 0, i64 0), i32 4)
  %59 = load %struct.device_node*, %struct.device_node** %5, align 8
  %60 = call i64 @of_property_read_bool(%struct.device_node* %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %42
  %63 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %64 = load i32, i32* @MII_CTRL1000, align 4
  %65 = call i32 @phy_read(%struct.phy_device* %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %87

69:                                               ; preds = %62
  %70 = load i32, i32* @CTL1000_ENABLE_MASTER, align 4
  %71 = load i32, i32* @CTL1000_AS_MASTER, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %76 = load i32, i32* @MII_CTRL1000, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @phy_write(%struct.phy_device* %75, i32 %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %87

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %42
  br label %84

84:                                               ; preds = %83, %39
  %85 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %86 = call i32 @ksz9031_center_flp_timing(%struct.phy_device* %85)
  store i32 %86, i32* %2, align 4
  br label %91

87:                                               ; preds = %81, %68
  %88 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %89 = call i32 @phydev_err(%struct.phy_device* %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %84, %18
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @ksz9031_enable_edpd(%struct.phy_device*) #1

declare dso_local i32 @ksz9031_of_load_skew_values(%struct.phy_device*, %struct.device_node*, i32, i32, i8**, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @ksz9031_center_flp_timing(%struct.phy_device*) #1

declare dso_local i32 @phydev_err(%struct.phy_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
