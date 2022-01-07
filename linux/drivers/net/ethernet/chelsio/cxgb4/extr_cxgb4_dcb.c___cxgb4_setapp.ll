; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c___cxgb4_setapp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c___cxgb4_setapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fw_port_cmd = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i8*, i64, i8* }
%struct.port_info = type { %struct.TYPE_5__, i32, %struct.adapter* }
%struct.TYPE_5__ = type { i64 }
%struct.adapter = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@CXGB4_MAX_DCBX_APP_SUPPORTED = common dso_local global i32 0, align 4
@FW_PORT_DCB_TYPE_APP_ID = common dso_local global i8* null, align 8
@FW_PORT_DCB_CFG_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"DCB app table read failed with %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"DCB app table full\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@CXGB4_DCB_STATE_HOST = common dso_local global i64 0, align 8
@FW_PORT_CMD_APPLY_F = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"DCB app table write failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*, i64, i8*)* @__cxgb4_setapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cxgb4_setapp(%struct.net_device* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fw_port_cmd, align 8
  %11 = alloca %struct.port_info*, align 8
  %12 = alloca %struct.adapter*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %15)
  store %struct.port_info* %16, %struct.port_info** %11, align 8
  %17 = load %struct.port_info*, %struct.port_info** %11, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 2
  %19 = load %struct.adapter*, %struct.adapter** %18, align 8
  store %struct.adapter* %19, %struct.adapter** %12, align 8
  %20 = load %struct.port_info*, %struct.port_info** %11, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @cxgb4_dcb_state_synced(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %170

29:                                               ; preds = %4
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call i32 @netif_carrier_ok(%struct.net_device* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ENOLINK, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %170

36:                                               ; preds = %29
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %95, %36
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @CXGB4_MAX_DCBX_APP_SUPPORTED, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %98

41:                                               ; preds = %37
  %42 = load %struct.port_info*, %struct.port_info** %11, align 8
  %43 = getelementptr inbounds %struct.port_info, %struct.port_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @INIT_PORT_DCB_READ_LOCAL_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %10, i32 %44)
  %46 = load i8*, i8** @FW_PORT_DCB_TYPE_APP_ID, align 8
  %47 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %10, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  store i8* %46, i8** %50, align 8
  %51 = load i32, i32* %13, align 4
  %52 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %10, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  %56 = load %struct.adapter*, %struct.adapter** %12, align 8
  %57 = load %struct.adapter*, %struct.adapter** %12, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @t4_wr_mbox(%struct.adapter* %56, i32 %59, %struct.fw_port_cmd* %10, i32 48, %struct.fw_port_cmd* %10)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %41
  %65 = load %struct.adapter*, %struct.adapter** %12, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %14, align 4
  %69 = sub nsw i32 0, %68
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %5, align 4
  br label %170

72:                                               ; preds = %41
  %73 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %10, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @be16_to_cpu(i64 %77)
  %79 = load i64, i64* %8, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %10, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  br label %98

86:                                               ; preds = %72
  %87 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %10, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %98

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %37

98:                                               ; preds = %93, %81, %37
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @CXGB4_MAX_DCBX_APP_SUPPORTED, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load %struct.adapter*, %struct.adapter** %12, align 8
  %104 = getelementptr inbounds %struct.adapter, %struct.adapter* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @dev_err(i32 %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @EBUSY, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %170

109:                                              ; preds = %98
  %110 = load %struct.port_info*, %struct.port_info** %11, align 8
  %111 = getelementptr inbounds %struct.port_info, %struct.port_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @INIT_PORT_DCB_WRITE_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %10, i32 %112)
  %114 = load %struct.port_info*, %struct.port_info** %11, align 8
  %115 = getelementptr inbounds %struct.port_info, %struct.port_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @CXGB4_DCB_STATE_HOST, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %109
  %121 = load i32, i32* @FW_PORT_CMD_APPLY_F, align 4
  %122 = call i32 @cpu_to_be32(i32 %121)
  %123 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %10, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %122
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %120, %109
  %127 = load i8*, i8** @FW_PORT_DCB_TYPE_APP_ID, align 8
  %128 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %10, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 4
  store i8* %127, i8** %131, align 8
  %132 = load i64, i64* %8, align 8
  %133 = call i64 @cpu_to_be16(i64 %132)
  %134 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %10, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  store i64 %133, i64* %137, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %10, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  store i8* %138, i8** %142, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %10, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  store i8* %143, i8** %147, align 8
  %148 = load i32, i32* %13, align 4
  %149 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %10, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i32 %148, i32* %152, align 8
  %153 = load %struct.adapter*, %struct.adapter** %12, align 8
  %154 = load %struct.adapter*, %struct.adapter** %12, align 8
  %155 = getelementptr inbounds %struct.adapter, %struct.adapter* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @t4_wr_mbox(%struct.adapter* %153, i32 %156, %struct.fw_port_cmd* %10, i32 48, %struct.fw_port_cmd* %10)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %126
  %162 = load %struct.adapter*, %struct.adapter** %12, align 8
  %163 = getelementptr inbounds %struct.adapter, %struct.adapter* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %14, align 4
  %166 = sub nsw i32 0, %165
  %167 = call i32 (i32, i8*, ...) @dev_err(i32 %164, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %14, align 4
  store i32 %168, i32* %5, align 4
  br label %170

169:                                              ; preds = %126
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %169, %161, %102, %64, %33, %26
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local %struct.port_info* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @cxgb4_dcb_state_synced(i64) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @INIT_PORT_DCB_READ_LOCAL_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8, i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_port_cmd*, i32, %struct.fw_port_cmd*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i32 @INIT_PORT_DCB_WRITE_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @cpu_to_be16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
