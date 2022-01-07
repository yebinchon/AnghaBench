; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_getpeer_app.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_getpeer_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dcb_peer_app_info = type { i64, i64 }
%struct.fw_port_cmd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.port_info = type { i32, %struct.TYPE_5__, %struct.adapter* }
%struct.TYPE_5__ = type { i32 }
%struct.adapter = type { i32, i32 }

@CXGB4_MAX_DCBX_APP_SUPPORTED = common dso_local global i32 0, align 4
@FW_PORT_DCB_TYPE_APP_ID = common dso_local global i32 0, align 4
@FW_PORT_DCB_CFG_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DCB app table read failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dcb_peer_app_info*, i32*)* @cxgb4_getpeer_app to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_getpeer_app(%struct.net_device* %0, %struct.dcb_peer_app_info* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dcb_peer_app_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fw_port_cmd, align 4
  %9 = alloca %struct.port_info*, align 8
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca { i64, i32 }, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.dcb_peer_app_info* %1, %struct.dcb_peer_app_info** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %14)
  store %struct.port_info* %15, %struct.port_info** %9, align 8
  %16 = load %struct.port_info*, %struct.port_info** %9, align 8
  %17 = getelementptr inbounds %struct.port_info, %struct.port_info* %16, i32 0, i32 2
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.port_info*, %struct.port_info** %9, align 8
  %20 = getelementptr inbounds %struct.port_info, %struct.port_info* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cxgb4_dcb_state_synced(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %90

26:                                               ; preds = %3
  %27 = load %struct.dcb_peer_app_info*, %struct.dcb_peer_app_info** %6, align 8
  %28 = getelementptr inbounds %struct.dcb_peer_app_info, %struct.dcb_peer_app_info* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.dcb_peer_app_info*, %struct.dcb_peer_app_info** %6, align 8
  %30 = getelementptr inbounds %struct.dcb_peer_app_info, %struct.dcb_peer_app_info* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32*, i32** %7, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %83, %26
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @CXGB4_MAX_DCBX_APP_SUPPORTED, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %86

36:                                               ; preds = %32
  %37 = load %struct.port_info*, %struct.port_info** %9, align 8
  %38 = getelementptr inbounds %struct.port_info, %struct.port_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = bitcast { i64, i32 }* %13 to i8*
  %41 = bitcast %struct.fw_port_cmd* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 12, i1 false)
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %43 = load i64, i64* %42, align 4
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @INIT_PORT_DCB_READ_PEER_CMD(i64 %43, i32 %45, i32 %39)
  %47 = load i32, i32* @FW_PORT_DCB_TYPE_APP_ID, align 4
  %48 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %8, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %8, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.adapter*, %struct.adapter** %10, align 8
  %59 = load %struct.adapter*, %struct.adapter** %10, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @t4_wr_mbox(%struct.adapter* %58, i32 %61, %struct.fw_port_cmd* %8, i32 12, %struct.fw_port_cmd* %8)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %36
  %67 = load %struct.adapter*, %struct.adapter** %10, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 0, %70
  %72 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %4, align 4
  br label %90

74:                                               ; preds = %36
  %75 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %8, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74
  br label %86

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %32

86:                                               ; preds = %81, %32
  %87 = load i32, i32* %11, align 4
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %66, %25
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @cxgb4_dcb_state_synced(i32) #1

declare dso_local i32 @INIT_PORT_DCB_READ_PEER_CMD(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_port_cmd*, i32, %struct.fw_port_cmd*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
