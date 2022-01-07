; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.usbnet = type { %struct.TYPE_3__*, %struct.aqc111_data* }
%struct.TYPE_3__ = type { i32 }
%struct.aqc111_data = type { i64, i64 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@SPEED_5000 = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_2500 = common dso_local global i64 0, align 8
@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @aqc111_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqc111_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca %struct.aqc111_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.usbnet* @netdev_priv(%struct.net_device* %11)
  store %struct.usbnet* %12, %struct.usbnet** %6, align 8
  %13 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %14 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %13, i32 0, i32 1
  %15 = load %struct.aqc111_data*, %struct.aqc111_data** %14, align 8
  store %struct.aqc111_data* %15, %struct.aqc111_data** %7, align 8
  %16 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @AUTONEG_ENABLE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %2
  %33 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %34 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AUTONEG_ENABLE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  %39 = load i64, i64* @AUTONEG_ENABLE, align 8
  %40 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %41 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @USB_SPEED_SUPER, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i64, i64* @SPEED_5000, align 8
  br label %49

47:                                               ; preds = %38
  %48 = load i64, i64* @SPEED_1000, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  %51 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %52 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %54 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %55 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %58 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @aqc111_set_phy_speed(%struct.usbnet* %53, i64 %56, i64 %59)
  br label %61

61:                                               ; preds = %49, %32
  br label %126

62:                                               ; preds = %2
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @SPEED_100, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* @SPEED_1000, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* @SPEED_2500, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* @SPEED_5000, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @SPEED_UNKNOWN, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %127

85:                                               ; preds = %78, %74, %70, %66, %62
  %86 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DUPLEX_FULL, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %127

95:                                               ; preds = %85
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @USB_SPEED_SUPER, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @SPEED_1000, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %127

106:                                              ; preds = %99, %95
  %107 = load i64, i64* @AUTONEG_DISABLE, align 8
  %108 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %109 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @SPEED_UNKNOWN, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %116 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %113, %106
  %118 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %119 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %120 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.aqc111_data*, %struct.aqc111_data** %7, align 8
  %123 = getelementptr inbounds %struct.aqc111_data, %struct.aqc111_data* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @aqc111_set_phy_speed(%struct.usbnet* %118, i64 %121, i64 %124)
  br label %126

126:                                              ; preds = %117, %61
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %103, %92, %82
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @aqc111_set_phy_speed(%struct.usbnet*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
