; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_setpgbwgcfg_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_setpgbwgcfg_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fw_port_cmd = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.port_info = type { %struct.TYPE_8__, i32, %struct.adapter* }
%struct.TYPE_8__ = type { i64 }
%struct.adapter = type { i32, i32 }

@FW_PORT_DCB_TYPE_PGRATE = common dso_local global i32 0, align 4
@FW_PORT_DCB_CFG_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DCB read PGRATE failed with %d\0A\00", align 1
@CXGB4_DCB_STATE_HOST = common dso_local global i64 0, align 8
@FW_PORT_CMD_APPLY_F = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"DCB write PGRATE failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @cxgb4_setpgbwgcfg_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb4_setpgbwgcfg_tx(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_port_cmd, align 8
  %8 = alloca %struct.port_info*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %11)
  store %struct.port_info* %12, %struct.port_info** %8, align 8
  %13 = load %struct.port_info*, %struct.port_info** %8, align 8
  %14 = getelementptr inbounds %struct.port_info, %struct.port_info* %13, i32 0, i32 2
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  store %struct.adapter* %15, %struct.adapter** %9, align 8
  %16 = load %struct.port_info*, %struct.port_info** %8, align 8
  %17 = getelementptr inbounds %struct.port_info, %struct.port_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @INIT_PORT_DCB_READ_LOCAL_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %7, i32 %18)
  %20 = load i32, i32* @FW_PORT_DCB_TYPE_PGRATE, align 4
  %21 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %7, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 8
  %25 = load %struct.adapter*, %struct.adapter** %9, align 8
  %26 = load %struct.adapter*, %struct.adapter** %9, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @t4_wr_mbox(%struct.adapter* %25, i32 %28, %struct.fw_port_cmd* %7, i32 24, %struct.fw_port_cmd* %7)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load %struct.adapter*, %struct.adapter** %9, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %82

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %7, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %41, i32* %49, align 4
  %50 = load %struct.port_info*, %struct.port_info** %8, align 8
  %51 = getelementptr inbounds %struct.port_info, %struct.port_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @INIT_PORT_DCB_WRITE_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %7, i32 %52)
  %54 = load %struct.port_info*, %struct.port_info** %8, align 8
  %55 = getelementptr inbounds %struct.port_info, %struct.port_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CXGB4_DCB_STATE_HOST, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %40
  %61 = load i32, i32* @FW_PORT_CMD_APPLY_F, align 4
  %62 = call i32 @cpu_to_be32(i32 %61)
  %63 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %40
  %67 = load %struct.adapter*, %struct.adapter** %9, align 8
  %68 = load %struct.adapter*, %struct.adapter** %9, align 8
  %69 = getelementptr inbounds %struct.adapter, %struct.adapter* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @t4_wr_mbox(%struct.adapter* %67, i32 %70, %struct.fw_port_cmd* %7, i32 24, %struct.fw_port_cmd* %7)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load %struct.adapter*, %struct.adapter** %9, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %33, %75, %66
  ret void
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @INIT_PORT_DCB_READ_LOCAL_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8, i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_port_cmd*, i32, %struct.fw_port_cmd*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @INIT_PORT_DCB_WRITE_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
