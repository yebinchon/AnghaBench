; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.r8152 = type { i32, i32, i32, i32, i32, i32 }

@ETHTOOL_LINK_MODE_10baseT_Half_BIT = common dso_local global i32 0, align 4
@RTL_ADVERTISED_10_HALF = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10baseT_Full_BIT = common dso_local global i32 0, align 4
@RTL_ADVERTISED_10_FULL = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_100baseT_Half_BIT = common dso_local global i32 0, align 4
@RTL_ADVERTISED_100_HALF = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_100baseT_Full_BIT = common dso_local global i32 0, align 4
@RTL_ADVERTISED_100_FULL = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Half_BIT = common dso_local global i32 0, align 4
@RTL_ADVERTISED_1000_HALF = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Full_BIT = common dso_local global i32 0, align 4
@RTL_ADVERTISED_1000_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @rtl8152_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.r8152*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.r8152* @netdev_priv(%struct.net_device* %8)
  store %struct.r8152* %9, %struct.r8152** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.r8152*, %struct.r8152** %5, align 8
  %11 = getelementptr inbounds %struct.r8152, %struct.r8152* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @usb_autopm_get_interface(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %140

17:                                               ; preds = %2
  %18 = load i32, i32* @ETHTOOL_LINK_MODE_10baseT_Half_BIT, align 4
  %19 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @test_bit(i32 %18, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* @RTL_ADVERTISED_10_HALF, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %17
  %30 = load i32, i32* @ETHTOOL_LINK_MODE_10baseT_Full_BIT, align 4
  %31 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @test_bit(i32 %30, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @RTL_ADVERTISED_10_FULL, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i32, i32* @ETHTOOL_LINK_MODE_100baseT_Half_BIT, align 4
  %43 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @test_bit(i32 %42, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* @RTL_ADVERTISED_100_HALF, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %41
  %54 = load i32, i32* @ETHTOOL_LINK_MODE_100baseT_Full_BIT, align 4
  %55 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %56 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @test_bit(i32 %54, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @RTL_ADVERTISED_100_FULL, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %53
  %66 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Half_BIT, align 4
  %67 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %68 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @test_bit(i32 %66, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* @RTL_ADVERTISED_1000_HALF, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %65
  %78 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Full_BIT, align 4
  %79 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %80 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @test_bit(i32 %78, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i32, i32* @RTL_ADVERTISED_1000_FULL, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %77
  %90 = load %struct.r8152*, %struct.r8152** %5, align 8
  %91 = getelementptr inbounds %struct.r8152, %struct.r8152* %90, i32 0, i32 1
  %92 = call i32 @mutex_lock(i32* %91)
  %93 = load %struct.r8152*, %struct.r8152** %5, align 8
  %94 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %95 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %99 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %103 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @rtl8152_set_speed(%struct.r8152* %93, i32 %97, i32 %101, i32 %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %89
  %111 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %112 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.r8152*, %struct.r8152** %5, align 8
  %116 = getelementptr inbounds %struct.r8152, %struct.r8152* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %118 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.r8152*, %struct.r8152** %5, align 8
  %122 = getelementptr inbounds %struct.r8152, %struct.r8152* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %124 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.r8152*, %struct.r8152** %5, align 8
  %128 = getelementptr inbounds %struct.r8152, %struct.r8152* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.r8152*, %struct.r8152** %5, align 8
  %131 = getelementptr inbounds %struct.r8152, %struct.r8152* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %110, %89
  %133 = load %struct.r8152*, %struct.r8152** %5, align 8
  %134 = getelementptr inbounds %struct.r8152, %struct.r8152* %133, i32 0, i32 1
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load %struct.r8152*, %struct.r8152** %5, align 8
  %137 = getelementptr inbounds %struct.r8152, %struct.r8152* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @usb_autopm_put_interface(i32 %138)
  br label %140

140:                                              ; preds = %132, %16
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local %struct.r8152* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtl8152_set_speed(%struct.r8152*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
