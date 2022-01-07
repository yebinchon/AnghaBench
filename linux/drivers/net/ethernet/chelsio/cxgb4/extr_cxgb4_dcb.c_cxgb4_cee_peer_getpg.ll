; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_cee_peer_getpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_cee_peer_getpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cee_pg = type { i32, i32*, i32, i32* }
%struct.fw_port_cmd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.port_info = type { i32, %struct.adapter* }
%struct.adapter = type { i32, i32 }

@FW_PORT_DCB_TYPE_PGID = common dso_local global i32 0, align 4
@FW_PORT_DCB_CFG_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DCB read PGID failed with %d\0A\00", align 1
@CXGB4_MAX_PRIORITY = common dso_local global i32 0, align 4
@FW_PORT_DCB_TYPE_PGRATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"DCB read PGRATE failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.cee_pg*)* @cxgb4_cee_peer_getpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_cee_peer_getpg(%struct.net_device* %0, %struct.cee_pg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.cee_pg*, align 8
  %6 = alloca %struct.fw_port_cmd, align 8
  %7 = alloca %struct.port_info*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.cee_pg* %1, %struct.cee_pg** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %12)
  store %struct.port_info* %13, %struct.port_info** %7, align 8
  %14 = load %struct.port_info*, %struct.port_info** %7, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 1
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %8, align 8
  %17 = load %struct.cee_pg*, %struct.cee_pg** %5, align 8
  %18 = getelementptr inbounds %struct.cee_pg, %struct.cee_pg* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.port_info*, %struct.port_info** %7, align 8
  %20 = getelementptr inbounds %struct.port_info, %struct.port_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @INIT_PORT_DCB_READ_PEER_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %6, i32 %21)
  %23 = load i32, i32* @FW_PORT_DCB_TYPE_PGID, align 4
  %24 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %6, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.adapter*, %struct.adapter** %8, align 8
  %29 = load %struct.adapter*, %struct.adapter** %8, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @t4_wr_mbox(%struct.adapter* %28, i32 %31, %struct.fw_port_cmd* %6, i32 32, %struct.fw_port_cmd* %6)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %2
  %37 = load %struct.adapter*, %struct.adapter** %8, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %3, align 4
  br label %129

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %6, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @be32_to_cpu(i32 %49)
  store i32 %50, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %68, %44
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @CXGB4_MAX_PRIORITY, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 %57, 4
  %59 = ashr i32 %56, %58
  %60 = and i32 %59, 15
  %61 = load %struct.cee_pg*, %struct.cee_pg** %5, align 8
  %62 = getelementptr inbounds %struct.cee_pg, %struct.cee_pg* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 7, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %60, i32* %67, align 4
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %51

71:                                               ; preds = %51
  %72 = load %struct.port_info*, %struct.port_info** %7, align 8
  %73 = getelementptr inbounds %struct.port_info, %struct.port_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @INIT_PORT_DCB_READ_PEER_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %6, i32 %74)
  %76 = load i32, i32* @FW_PORT_DCB_TYPE_PGRATE, align 4
  %77 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %6, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32 %76, i32* %80, align 8
  %81 = load %struct.adapter*, %struct.adapter** %8, align 8
  %82 = load %struct.adapter*, %struct.adapter** %8, align 8
  %83 = getelementptr inbounds %struct.adapter, %struct.adapter* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @t4_wr_mbox(%struct.adapter* %81, i32 %84, %struct.fw_port_cmd* %6, i32 32, %struct.fw_port_cmd* %6)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %71
  %90 = load %struct.adapter*, %struct.adapter** %8, align 8
  %91 = getelementptr inbounds %struct.adapter, %struct.adapter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sub nsw i32 0, %93
  %95 = call i32 @dev_err(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %3, align 4
  br label %129

97:                                               ; preds = %71
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %118, %97
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @CXGB4_MAX_PRIORITY, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %6, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.cee_pg*, %struct.cee_pg** %5, align 8
  %113 = getelementptr inbounds %struct.cee_pg, %struct.cee_pg* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %111, i32* %117, align 4
  br label %118

118:                                              ; preds = %102
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %98

121:                                              ; preds = %98
  %122 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %6, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.cee_pg*, %struct.cee_pg** %5, align 8
  %128 = getelementptr inbounds %struct.cee_pg, %struct.cee_pg* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %121, %89, %36
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @INIT_PORT_DCB_READ_PEER_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8, i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_port_cmd*, i32, %struct.fw_port_cmd*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
