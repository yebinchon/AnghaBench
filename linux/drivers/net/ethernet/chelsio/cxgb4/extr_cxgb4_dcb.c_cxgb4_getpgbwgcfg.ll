; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_getpgbwgcfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_getpgbwgcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fw_port_cmd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.port_info = type { i32, %struct.adapter* }
%struct.adapter = type { i32, i32 }

@FW_PORT_DCB_TYPE_PGRATE = common dso_local global i32 0, align 4
@FW_PORT_DCB_CFG_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DCB read PGRATE failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*, i32)* @cxgb4_getpgbwgcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb4_getpgbwgcfg(%struct.net_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fw_port_cmd, align 8
  %10 = alloca %struct.port_info*, align 8
  %11 = alloca %struct.adapter*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %13)
  store %struct.port_info* %14, %struct.port_info** %10, align 8
  %15 = load %struct.port_info*, %struct.port_info** %10, align 8
  %16 = getelementptr inbounds %struct.port_info, %struct.port_info* %15, i32 0, i32 1
  %17 = load %struct.adapter*, %struct.adapter** %16, align 8
  store %struct.adapter* %17, %struct.adapter** %11, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load %struct.port_info*, %struct.port_info** %10, align 8
  %22 = getelementptr inbounds %struct.port_info, %struct.port_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = bitcast %struct.fw_port_cmd* %9 to { i32*, i32 }*
  %25 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %24, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @INIT_PORT_DCB_READ_LOCAL_CMD(i32* %26, i32 %28, i32 %23)
  br label %40

30:                                               ; preds = %4
  %31 = load %struct.port_info*, %struct.port_info** %10, align 8
  %32 = getelementptr inbounds %struct.port_info, %struct.port_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = bitcast %struct.fw_port_cmd* %9 to { i32*, i32 }*
  %35 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %34, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @INIT_PORT_DCB_READ_PEER_CMD(i32* %36, i32 %38, i32 %33)
  br label %40

40:                                               ; preds = %30, %20
  %41 = load i32, i32* @FW_PORT_DCB_TYPE_PGRATE, align 4
  %42 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %9, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 8
  %46 = load %struct.adapter*, %struct.adapter** %11, align 8
  %47 = load %struct.adapter*, %struct.adapter** %11, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @t4_wr_mbox(%struct.adapter* %46, i32 %49, %struct.fw_port_cmd* %9, i32 16, %struct.fw_port_cmd* %9)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = load %struct.adapter*, %struct.adapter** %11, align 8
  %56 = getelementptr inbounds %struct.adapter, %struct.adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 0, %58
  %60 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %72

61:                                               ; preds = %40
  %62 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %9, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %61, %54
  ret void
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @INIT_PORT_DCB_READ_LOCAL_CMD(i32*, i32, i32) #1

declare dso_local i32 @INIT_PORT_DCB_READ_PEER_CMD(i32*, i32, i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_port_cmd*, i32, %struct.fw_port_cmd*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
