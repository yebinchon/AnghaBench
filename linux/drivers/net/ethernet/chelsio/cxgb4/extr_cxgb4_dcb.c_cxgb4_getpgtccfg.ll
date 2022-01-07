; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_getpgtccfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_getpgtccfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fw_port_cmd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.port_info = type { i32, %struct.adapter* }
%struct.adapter = type { i32, i32 }

@FW_PORT_DCB_TYPE_PGID = common dso_local global i32 0, align 4
@FW_PORT_DCB_CFG_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DCB read PGID failed with %d\0A\00", align 1
@FW_PORT_DCB_TYPE_PGRATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"DCB read PGRATE failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i64*, i64*, i64*, i64*, i32)* @cxgb4_getpgtccfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb4_getpgtccfg(%struct.net_device* %0, i32 %1, i64* %2, i64* %3, i64* %4, i64* %5, i32 %6) #0 {
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.fw_port_cmd, align 8
  %16 = alloca %struct.port_info*, align 8
  %17 = alloca %struct.adapter*, align 8
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %19)
  store %struct.port_info* %20, %struct.port_info** %16, align 8
  %21 = load %struct.port_info*, %struct.port_info** %16, align 8
  %22 = getelementptr inbounds %struct.port_info, %struct.port_info* %21, i32 0, i32 1
  %23 = load %struct.adapter*, %struct.adapter** %22, align 8
  store %struct.adapter* %23, %struct.adapter** %17, align 8
  %24 = load i64*, i64** %13, align 8
  store i64 0, i64* %24, align 8
  %25 = load i64*, i64** %12, align 8
  store i64 0, i64* %25, align 8
  %26 = load i64*, i64** %11, align 8
  store i64 0, i64* %26, align 8
  %27 = load i64*, i64** %10, align 8
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %7
  %31 = load %struct.port_info*, %struct.port_info** %16, align 8
  %32 = getelementptr inbounds %struct.port_info, %struct.port_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @INIT_PORT_DCB_READ_LOCAL_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %15, i32 %33)
  br label %40

35:                                               ; preds = %7
  %36 = load %struct.port_info*, %struct.port_info** %16, align 8
  %37 = getelementptr inbounds %struct.port_info, %struct.port_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @INIT_PORT_DCB_READ_PEER_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %15, i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @FW_PORT_DCB_TYPE_PGID, align 4
  %42 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %15, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.adapter*, %struct.adapter** %17, align 8
  %47 = load %struct.adapter*, %struct.adapter** %17, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @t4_wr_mbox(%struct.adapter* %46, i32 %49, %struct.fw_port_cmd* %15, i32 24, %struct.fw_port_cmd* %15)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = load %struct.adapter*, %struct.adapter** %17, align 8
  %56 = getelementptr inbounds %struct.adapter, %struct.adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %18, align 4
  %59 = sub nsw i32 0, %58
  %60 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %127

61:                                               ; preds = %40
  %62 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %15, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @be32_to_cpu(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %68, 4
  %70 = ashr i32 %67, %69
  %71 = and i32 %70, 15
  %72 = sext i32 %71 to i64
  %73 = load i64*, i64** %11, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %61
  %77 = load %struct.port_info*, %struct.port_info** %16, align 8
  %78 = getelementptr inbounds %struct.port_info, %struct.port_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @INIT_PORT_DCB_READ_LOCAL_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %15, i32 %79)
  br label %86

81:                                               ; preds = %61
  %82 = load %struct.port_info*, %struct.port_info** %16, align 8
  %83 = getelementptr inbounds %struct.port_info, %struct.port_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @INIT_PORT_DCB_READ_PEER_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %15, i32 %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i32, i32* @FW_PORT_DCB_TYPE_PGRATE, align 4
  %88 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %15, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 8
  %92 = load %struct.adapter*, %struct.adapter** %17, align 8
  %93 = load %struct.adapter*, %struct.adapter** %17, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @t4_wr_mbox(%struct.adapter* %92, i32 %95, %struct.fw_port_cmd* %15, i32 24, %struct.fw_port_cmd* %15)
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %86
  %101 = load %struct.adapter*, %struct.adapter** %17, align 8
  %102 = getelementptr inbounds %struct.adapter, %struct.adapter* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %18, align 4
  %105 = sub nsw i32 0, %104
  %106 = call i32 @dev_err(i32 %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %127

107:                                              ; preds = %86
  %108 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %15, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load i64*, i64** %11, align 8
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %12, align 8
  store i64 %116, i64* %117, align 8
  %118 = load i32, i32* %9, align 4
  %119 = shl i32 1, %118
  %120 = sext i32 %119 to i64
  %121 = load i64*, i64** %13, align 8
  store i64 %120, i64* %121, align 8
  %122 = load i64*, i64** %11, align 8
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 15
  br i1 %124, label %125, label %127

125:                                              ; preds = %107
  %126 = load i64*, i64** %10, align 8
  store i64 2, i64* %126, align 8
  br label %127

127:                                              ; preds = %54, %100, %125, %107
  ret void
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @INIT_PORT_DCB_READ_LOCAL_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8, i32) #1

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
