; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_getpeerapp_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_getpeerapp_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dcb_app = type { i64, i32, i64 }
%struct.fw_port_cmd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32 }
%struct.port_info = type { i32, %struct.TYPE_5__, %struct.adapter* }
%struct.TYPE_5__ = type { i32 }
%struct.adapter = type { i32, i32 }

@CXGB4_MAX_DCBX_APP_SUPPORTED = common dso_local global i32 0, align 4
@FW_PORT_DCB_TYPE_APP_ID = common dso_local global i32 0, align 4
@FW_PORT_DCB_CFG_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DCB app table read failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dcb_app*)* @cxgb4_getpeerapp_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_getpeerapp_tbl(%struct.net_device* %0, %struct.dcb_app* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dcb_app*, align 8
  %6 = alloca %struct.fw_port_cmd, align 8
  %7 = alloca %struct.port_info*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.dcb_app* %1, %struct.dcb_app** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %11)
  store %struct.port_info* %12, %struct.port_info** %7, align 8
  %13 = load %struct.port_info*, %struct.port_info** %7, align 8
  %14 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i32 0, i32 2
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  store %struct.adapter* %15, %struct.adapter** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.port_info*, %struct.port_info** %7, align 8
  %17 = getelementptr inbounds %struct.port_info, %struct.port_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cxgb4_dcb_state_synced(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %107

23:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %102, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @CXGB4_MAX_DCBX_APP_SUPPORTED, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %105

28:                                               ; preds = %24
  %29 = load %struct.port_info*, %struct.port_info** %7, align 8
  %30 = getelementptr inbounds %struct.port_info, %struct.port_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @INIT_PORT_DCB_READ_PEER_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %6, i32 %31)
  %33 = load i32, i32* @FW_PORT_DCB_TYPE_APP_ID, align 4
  %34 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %6, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  store i32 %33, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %6, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  %43 = load %struct.adapter*, %struct.adapter** %8, align 8
  %44 = load %struct.adapter*, %struct.adapter** %8, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @t4_wr_mbox(%struct.adapter* %43, i32 %46, %struct.fw_port_cmd* %6, i32 32, %struct.fw_port_cmd* %6)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %28
  %52 = load %struct.adapter*, %struct.adapter** %8, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 0, %55
  %57 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %107

59:                                               ; preds = %28
  %60 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %6, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %105

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %6, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  %74 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %74, i64 %76
  %78 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %77, i32 0, i32 2
  store i64 %73, i64* %78, align 8
  %79 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %6, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @be16_to_cpu(i32 %83)
  %85 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %85, i64 %87
  %89 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %88, i32 0, i32 1
  store i32 %84, i32* %89, align 8
  %90 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %6, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @ffs(i32 %94)
  %96 = sub nsw i64 %95, 1
  %97 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %97, i64 %99
  %101 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %100, i32 0, i32 0
  store i64 %96, i64* %101, align 8
  br label %102

102:                                              ; preds = %67
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %24

105:                                              ; preds = %66, %24
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %51, %22
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @cxgb4_dcb_state_synced(i32) #1

declare dso_local i32 @INIT_PORT_DCB_READ_PEER_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8, i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_port_cmd*, i32, %struct.fw_port_cmd*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
