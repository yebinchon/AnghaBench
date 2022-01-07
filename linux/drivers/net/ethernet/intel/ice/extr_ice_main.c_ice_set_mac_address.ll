; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { i32, %struct.ice_pf* }
%struct.ice_pf = type { i32, %struct.ice_hw }
%struct.ice_hw = type { i32 }
%struct.sockaddr = type { i64 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"already using mac %pM\0A\00", align 1
@__ICE_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"can't set mac %pM. device not ready\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"can't set MAC %pM. filter update failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"updated MAC address to %pM\0A\00", align 1
@ICE_AQC_MAN_MAC_UPDATE_LAA_WOL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"can't set MAC %pM. write to firmware failed error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @ice_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ice_netdev_priv*, align 8
  %7 = alloca %struct.ice_vsi*, align 8
  %8 = alloca %struct.ice_pf*, align 8
  %9 = alloca %struct.ice_hw*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.ice_netdev_priv* %16, %struct.ice_netdev_priv** %6, align 8
  %17 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %6, align 8
  %18 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %17, i32 0, i32 0
  %19 = load %struct.ice_vsi*, %struct.ice_vsi** %18, align 8
  store %struct.ice_vsi* %19, %struct.ice_vsi** %7, align 8
  %20 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %21 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %20, i32 0, i32 1
  %22 = load %struct.ice_pf*, %struct.ice_pf** %21, align 8
  store %struct.ice_pf* %22, %struct.ice_pf** %8, align 8
  %23 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %24 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %23, i32 0, i32 1
  store %struct.ice_hw* %24, %struct.ice_hw** %9, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to %struct.sockaddr*
  store %struct.sockaddr* %26, %struct.sockaddr** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %14, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = call i32 @is_valid_ether_addr(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @EADDRNOTAVAIL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %125

37:                                               ; preds = %2
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = call i64 @ether_addr_equal(i32* %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = call i32 @netdev_warn(%struct.net_device* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %46)
  store i32 0, i32* %3, align 4
  br label %125

48:                                               ; preds = %37
  %49 = load i32, i32* @__ICE_DOWN, align 4
  %50 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %51 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @test_bit(i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  %56 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  %57 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @ice_is_reset_in_progress(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55, %48
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 (%struct.net_device*, i8*, i32*, ...) @netdev_err(%struct.net_device* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32* %63)
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %125

67:                                               ; preds = %55
  %68 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @ice_vsi_cfg_mac_fltr(%struct.ice_vsi* %68, i32* %71, i32 0)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* @EADDRNOTAVAIL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %13, align 4
  br label %88

78:                                               ; preds = %67
  %79 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = call i32 @ice_vsi_cfg_mac_fltr(%struct.ice_vsi* %79, i32* %80, i32 1)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EADDRNOTAVAIL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  br label %88

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %84, %75
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 (%struct.net_device*, i8*, i32*, ...) @netdev_err(%struct.net_device* %92, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32* %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %3, align 4
  br label %125

96:                                               ; preds = %88
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @memcpy(i32* %99, i32* %100, i32 %103)
  %105 = load %struct.ice_vsi*, %struct.ice_vsi** %7, align 8
  %106 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.net_device*, %struct.net_device** %4, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @netdev_dbg(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* %110)
  %112 = load i32, i32* @ICE_AQC_MAN_MAC_UPDATE_LAA_WOL, align 4
  store i32 %112, i32* %12, align 4
  %113 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %114 = load i32*, i32** %14, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @ice_aq_manage_mac_write(%struct.ice_hw* %113, i32* %114, i32 %115, i32* null)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %96
  %120 = load %struct.net_device*, %struct.net_device** %4, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 (%struct.net_device*, i8*, i32*, ...) @netdev_err(%struct.net_device* %120, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %96
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %91, %61, %44, %34
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @ice_is_reset_in_progress(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32*, ...) #1

declare dso_local i32 @ice_vsi_cfg_mac_fltr(%struct.ice_vsi*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32*) #1

declare dso_local i32 @ice_aq_manage_mac_write(%struct.ice_hw*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
