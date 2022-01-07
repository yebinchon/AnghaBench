; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_setpgtccfg_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_setpgtccfg_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fw_port_cmd = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.port_info = type { %struct.TYPE_10__, i32, %struct.adapter* }
%struct.TYPE_10__ = type { i64 }
%struct.adapter = type { i32, i32 }

@DCB_ATTR_VALUE_UNDEFINED = common dso_local global i64 0, align 8
@FW_PORT_DCB_TYPE_PGID = common dso_local global i32 0, align 4
@FW_PORT_DCB_CFG_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DCB read PGID failed with %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DCB write PGID failed with %d\0A\00", align 1
@FW_PORT_DCB_TYPE_PGRATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"DCB read PGRATE failed with %d\0A\00", align 1
@CXGB4_DCB_STATE_HOST = common dso_local global i64 0, align 8
@FW_PORT_CMD_APPLY_F = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"DCB write PGRATE failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i64, i64, i64, i64)* @cxgb4_setpgtccfg_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb4_setpgtccfg_tx(%struct.net_device* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.fw_port_cmd, align 8
  %14 = alloca %struct.port_info*, align 8
  %15 = alloca %struct.adapter*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %19)
  store %struct.port_info* %20, %struct.port_info** %14, align 8
  %21 = load %struct.port_info*, %struct.port_info** %14, align 8
  %22 = getelementptr inbounds %struct.port_info, %struct.port_info* %21, i32 0, i32 2
  %23 = load %struct.adapter*, %struct.adapter** %22, align 8
  store %struct.adapter* %23, %struct.adapter** %15, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 7, %24
  store i32 %25, i32* %16, align 4
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @DCB_ATTR_VALUE_UNDEFINED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  br label %174

30:                                               ; preds = %6
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @DCB_ATTR_VALUE_UNDEFINED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %174

35:                                               ; preds = %30
  %36 = load %struct.port_info*, %struct.port_info** %14, align 8
  %37 = getelementptr inbounds %struct.port_info, %struct.port_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @INIT_PORT_DCB_READ_LOCAL_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %13, i32 %38)
  %40 = load i32, i32* @FW_PORT_DCB_TYPE_PGID, align 4
  %41 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %13, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load %struct.adapter*, %struct.adapter** %15, align 8
  %46 = load %struct.adapter*, %struct.adapter** %15, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @t4_wr_mbox(%struct.adapter* %45, i32 %48, %struct.fw_port_cmd* %13, i32 32, %struct.fw_port_cmd* %13)
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %35
  %54 = load %struct.adapter*, %struct.adapter** %15, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %18, align 4
  %58 = sub nsw i32 0, %57
  %59 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %174

60:                                               ; preds = %35
  %61 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %13, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @be32_to_cpu(i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %16, align 4
  %68 = mul nsw i32 %67, 4
  %69 = shl i32 15, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %17, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %17, align 4
  %73 = load i64, i64* %10, align 8
  %74 = load i32, i32* %16, align 4
  %75 = mul nsw i32 %74, 4
  %76 = zext i32 %75 to i64
  %77 = shl i64 %73, %76
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = or i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @cpu_to_be32(i32 %82)
  %84 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %13, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 8
  %88 = load %struct.port_info*, %struct.port_info** %14, align 8
  %89 = getelementptr inbounds %struct.port_info, %struct.port_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @INIT_PORT_DCB_WRITE_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %13, i32 %90)
  %92 = load %struct.adapter*, %struct.adapter** %15, align 8
  %93 = load %struct.adapter*, %struct.adapter** %15, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @t4_wr_mbox(%struct.adapter* %92, i32 %95, %struct.fw_port_cmd* %13, i32 32, %struct.fw_port_cmd* %13)
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %60
  %101 = load %struct.adapter*, %struct.adapter** %15, align 8
  %102 = getelementptr inbounds %struct.adapter, %struct.adapter* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %18, align 4
  %105 = sub nsw i32 0, %104
  %106 = call i32 @dev_err(i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %174

107:                                              ; preds = %60
  %108 = call i32 @memset(%struct.fw_port_cmd* %13, i32 0, i32 32)
  %109 = load %struct.port_info*, %struct.port_info** %14, align 8
  %110 = getelementptr inbounds %struct.port_info, %struct.port_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @INIT_PORT_DCB_READ_LOCAL_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %13, i32 %111)
  %113 = load i32, i32* @FW_PORT_DCB_TYPE_PGRATE, align 4
  %114 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %13, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 8
  %118 = load %struct.adapter*, %struct.adapter** %15, align 8
  %119 = load %struct.adapter*, %struct.adapter** %15, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @t4_wr_mbox(%struct.adapter* %118, i32 %121, %struct.fw_port_cmd* %13, i32 32, %struct.fw_port_cmd* %13)
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %107
  %127 = load %struct.adapter*, %struct.adapter** %15, align 8
  %128 = getelementptr inbounds %struct.adapter, %struct.adapter* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %18, align 4
  %131 = sub nsw i32 0, %130
  %132 = call i32 @dev_err(i32 %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %174

133:                                              ; preds = %107
  %134 = load i64, i64* %11, align 8
  %135 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %13, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* %10, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  store i64 %134, i64* %141, align 8
  %142 = load %struct.port_info*, %struct.port_info** %14, align 8
  %143 = getelementptr inbounds %struct.port_info, %struct.port_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @INIT_PORT_DCB_WRITE_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %13, i32 %144)
  %146 = load %struct.port_info*, %struct.port_info** %14, align 8
  %147 = getelementptr inbounds %struct.port_info, %struct.port_info* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @CXGB4_DCB_STATE_HOST, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %133
  %153 = load i32, i32* @FW_PORT_CMD_APPLY_F, align 4
  %154 = call i32 @cpu_to_be32(i32 %153)
  %155 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %13, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %154
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %152, %133
  %159 = load %struct.adapter*, %struct.adapter** %15, align 8
  %160 = load %struct.adapter*, %struct.adapter** %15, align 8
  %161 = getelementptr inbounds %struct.adapter, %struct.adapter* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @t4_wr_mbox(%struct.adapter* %159, i32 %162, %struct.fw_port_cmd* %13, i32 32, %struct.fw_port_cmd* %13)
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %158
  %168 = load %struct.adapter*, %struct.adapter** %15, align 8
  %169 = getelementptr inbounds %struct.adapter, %struct.adapter* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %18, align 4
  %172 = sub nsw i32 0, %171
  %173 = call i32 @dev_err(i32 %170, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %29, %34, %53, %100, %126, %167, %158
  ret void
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @INIT_PORT_DCB_READ_LOCAL_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8, i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_port_cmd*, i32, %struct.fw_port_cmd*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @INIT_PORT_DCB_WRITE_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8, i32) #1

declare dso_local i32 @memset(%struct.fw_port_cmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
