; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_manage_mac_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_manage_mac_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_manage_mac_read_resp = type { i64, i32 }
%struct.ice_aqc_manage_mac_read = type { i64, i32 }
%struct.ice_aq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ice_aqc_manage_mac_read }

@ICE_ERR_BUF_TOO_SHORT = common dso_local global i32 0, align 4
@ice_aqc_opc_manage_mac_read = common dso_local global i32 0, align 4
@ICE_AQC_MAN_MAC_READ_M = common dso_local global i32 0, align 4
@ICE_AQC_MAN_MAC_LAN_ADDR_VALID = common dso_local global i32 0, align 4
@ICE_DBG_LAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"got invalid MAC address\0A\00", align 1
@ICE_ERR_CFG = common dso_local global i32 0, align 4
@ICE_AQC_MAN_MAC_ADDR_TYPE_LAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i8*, i32, %struct.ice_sq_cd*)* @ice_aq_manage_mac_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_manage_mac_read(%struct.ice_hw* %0, i8* %1, i32 %2, %struct.ice_sq_cd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_sq_cd*, align 8
  %10 = alloca %struct.ice_aqc_manage_mac_read_resp*, align 8
  %11 = alloca %struct.ice_aqc_manage_mac_read*, align 8
  %12 = alloca %struct.ice_aq_desc, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ice_sq_cd* %3, %struct.ice_sq_cd** %9, align 8
  %16 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %12, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.ice_aqc_manage_mac_read* %17, %struct.ice_aqc_manage_mac_read** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 16
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @ICE_ERR_BUF_TOO_SHORT, align 4
  store i32 %22, i32* %5, align 4
  br label %98

23:                                               ; preds = %4
  %24 = load i32, i32* @ice_aqc_opc_manage_mac_read, align 4
  %25 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %12, i32 %24)
  %26 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %9, align 8
  %30 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %26, %struct.ice_aq_desc* %12, i8* %27, i32 %28, %struct.ice_sq_cd* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %5, align 4
  br label %98

35:                                               ; preds = %23
  %36 = load i8*, i8** %7, align 8
  %37 = bitcast i8* %36 to %struct.ice_aqc_manage_mac_read_resp*
  store %struct.ice_aqc_manage_mac_read_resp* %37, %struct.ice_aqc_manage_mac_read_resp** %10, align 8
  %38 = load %struct.ice_aqc_manage_mac_read*, %struct.ice_aqc_manage_mac_read** %11, align 8
  %39 = getelementptr inbounds %struct.ice_aqc_manage_mac_read, %struct.ice_aqc_manage_mac_read* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = load i32, i32* @ICE_AQC_MAN_MAC_READ_M, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @ICE_AQC_MAN_MAC_LAN_ADDR_VALID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %35
  %49 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %50 = load i32, i32* @ICE_DBG_LAN, align 4
  %51 = call i32 @ice_debug(%struct.ice_hw* %49, i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %52, i32* %5, align 4
  br label %98

53:                                               ; preds = %35
  store i64 0, i64* %15, align 8
  br label %54

54:                                               ; preds = %94, %53
  %55 = load i64, i64* %15, align 8
  %56 = load %struct.ice_aqc_manage_mac_read*, %struct.ice_aqc_manage_mac_read** %11, align 8
  %57 = getelementptr inbounds %struct.ice_aqc_manage_mac_read, %struct.ice_aqc_manage_mac_read* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %97

60:                                               ; preds = %54
  %61 = load %struct.ice_aqc_manage_mac_read_resp*, %struct.ice_aqc_manage_mac_read_resp** %10, align 8
  %62 = load i64, i64* %15, align 8
  %63 = getelementptr inbounds %struct.ice_aqc_manage_mac_read_resp, %struct.ice_aqc_manage_mac_read_resp* %61, i64 %62
  %64 = getelementptr inbounds %struct.ice_aqc_manage_mac_read_resp, %struct.ice_aqc_manage_mac_read_resp* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ICE_AQC_MAN_MAC_ADDR_TYPE_LAN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %60
  %69 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %70 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ice_aqc_manage_mac_read_resp*, %struct.ice_aqc_manage_mac_read_resp** %10, align 8
  %76 = load i64, i64* %15, align 8
  %77 = getelementptr inbounds %struct.ice_aqc_manage_mac_read_resp, %struct.ice_aqc_manage_mac_read_resp* %75, i64 %76
  %78 = getelementptr inbounds %struct.ice_aqc_manage_mac_read_resp, %struct.ice_aqc_manage_mac_read_resp* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ether_addr_copy(i32 %74, i32 %79)
  %81 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %82 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ice_aqc_manage_mac_read_resp*, %struct.ice_aqc_manage_mac_read_resp** %10, align 8
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds %struct.ice_aqc_manage_mac_read_resp, %struct.ice_aqc_manage_mac_read_resp* %87, i64 %88
  %90 = getelementptr inbounds %struct.ice_aqc_manage_mac_read_resp, %struct.ice_aqc_manage_mac_read_resp* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ether_addr_copy(i32 %86, i32 %91)
  br label %97

93:                                               ; preds = %60
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %15, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %15, align 8
  br label %54

97:                                               ; preds = %68, %54
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %48, %33, %21
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, i8*, i32, %struct.ice_sq_cd*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
