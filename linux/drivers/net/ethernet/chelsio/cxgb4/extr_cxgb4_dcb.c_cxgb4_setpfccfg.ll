; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_setpfccfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_setpfccfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fw_port_cmd = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.port_info = type { %struct.TYPE_5__, i32, %struct.adapter* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.adapter = type { i32, i32 }

@CXGB4_MAX_PRIORITY = common dso_local global i32 0, align 4
@CXGB4_DCB_STATE_HOST = common dso_local global i64 0, align 8
@FW_PORT_CMD_APPLY_F = common dso_local global i32 0, align 4
@FW_PORT_DCB_TYPE_PFC = common dso_local global i32 0, align 4
@FW_PORT_DCB_CFG_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DCB PFC write failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i64)* @cxgb4_setpfccfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb4_setpfccfg(%struct.net_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.fw_port_cmd, align 4
  %8 = alloca %struct.port_info*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca { i64, i32 }, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %12)
  store %struct.port_info* %13, %struct.port_info** %8, align 8
  %14 = load %struct.port_info*, %struct.port_info** %8, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 2
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %9, align 8
  %17 = load %struct.port_info*, %struct.port_info** %8, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @cxgb4_dcb_state_synced(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @CXGB4_MAX_PRIORITY, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %3
  br label %113

28:                                               ; preds = %23
  %29 = load %struct.port_info*, %struct.port_info** %8, align 8
  %30 = getelementptr inbounds %struct.port_info, %struct.port_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = bitcast { i64, i32 }* %11 to i8*
  %33 = bitcast %struct.fw_port_cmd* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 12, i1 false)
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @INIT_PORT_DCB_WRITE_CMD(i64 %35, i32 %37, i32 %31)
  %39 = load %struct.port_info*, %struct.port_info** %8, align 8
  %40 = getelementptr inbounds %struct.port_info, %struct.port_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CXGB4_DCB_STATE_HOST, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %28
  %46 = load i32, i32* @FW_PORT_CMD_APPLY_F, align 4
  %47 = call i32 @cpu_to_be32(i32 %46)
  %48 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %28
  %52 = load i32, i32* @FW_PORT_DCB_TYPE_PFC, align 4
  %53 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %7, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.port_info*, %struct.port_info** %8, align 8
  %58 = getelementptr inbounds %struct.port_info, %struct.port_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %7, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %51
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 7, %68
  %70 = shl i32 1, %69
  %71 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %7, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %70
  store i32 %76, i32* %74, align 4
  br label %88

77:                                               ; preds = %51
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 7, %78
  %80 = shl i32 1, %79
  %81 = xor i32 %80, -1
  %82 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %7, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %81
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %77, %67
  %89 = load %struct.adapter*, %struct.adapter** %9, align 8
  %90 = load %struct.adapter*, %struct.adapter** %9, align 8
  %91 = getelementptr inbounds %struct.adapter, %struct.adapter* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @t4_wr_mbox(%struct.adapter* %89, i32 %92, %struct.fw_port_cmd* %7, i32 12, %struct.fw_port_cmd* %7)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %88
  %98 = load %struct.adapter*, %struct.adapter** %9, align 8
  %99 = getelementptr inbounds %struct.adapter, %struct.adapter* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %10, align 4
  %102 = sub nsw i32 0, %101
  %103 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %113

104:                                              ; preds = %88
  %105 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %7, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.port_info*, %struct.port_info** %8, align 8
  %111 = getelementptr inbounds %struct.port_info, %struct.port_info* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 8
  br label %113

113:                                              ; preds = %104, %97, %27
  ret void
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @cxgb4_dcb_state_synced(i64) #1

declare dso_local i32 @INIT_PORT_DCB_WRITE_CMD(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_port_cmd*, i32, %struct.fw_port_cmd*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
