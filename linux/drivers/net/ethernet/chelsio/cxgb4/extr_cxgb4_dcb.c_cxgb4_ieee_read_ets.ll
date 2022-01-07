; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_ieee_read_ets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_ieee_read_ets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_ets = type { i32, i32*, i32*, i32*, i32*, i32 }
%struct.port_info = type { i32, %struct.adapter*, %struct.port_dcb_info }
%struct.adapter = type { i32, i32 }
%struct.port_dcb_info = type { i32, i32 }
%struct.fw_port_cmd = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@CXGB4_DCB_FW_PGID = common dso_local global i32 0, align 4
@CXGB4_DCB_FW_PGRATE = common dso_local global i32 0, align 4
@FW_PORT_DCB_TYPE_PGID = common dso_local global i32 0, align 4
@FW_PORT_DCB_CFG_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DCB read PGID failed with %d\0A\00", align 1
@FW_PORT_DCB_TYPE_PGRATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"DCB read PGRATE failed with %d\0A\00", align 1
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_ets*, i32)* @cxgb4_ieee_read_ets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_ieee_read_ets(%struct.net_device* %0, %struct.ieee_ets* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ieee_ets*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.port_info*, align 8
  %9 = alloca %struct.port_dcb_info*, align 8
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fw_port_cmd, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.port_info* @netdev2pinfo(%struct.net_device* %16)
  store %struct.port_info* %17, %struct.port_info** %8, align 8
  %18 = load %struct.port_info*, %struct.port_info** %8, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 2
  store %struct.port_dcb_info* %19, %struct.port_dcb_info** %9, align 8
  %20 = load %struct.port_info*, %struct.port_info** %8, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 1
  %22 = load %struct.adapter*, %struct.adapter** %21, align 8
  store %struct.adapter* %22, %struct.adapter** %10, align 8
  %23 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %24 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CXGB4_DCB_FW_PGID, align 4
  %27 = load i32, i32* @CXGB4_DCB_FW_PGRATE, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %181

32:                                               ; preds = %3
  %33 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %34 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ieee_ets*, %struct.ieee_ets** %6, align 8
  %37 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.ieee_ets*, %struct.ieee_ets** %6, align 8
  %42 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.port_info*, %struct.port_info** %8, align 8
  %44 = getelementptr inbounds %struct.port_info, %struct.port_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @INIT_PORT_DCB_READ_LOCAL_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %12, i32 %45)
  br label %52

47:                                               ; preds = %32
  %48 = load %struct.port_info*, %struct.port_info** %8, align 8
  %49 = getelementptr inbounds %struct.port_info, %struct.port_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @INIT_PORT_DCB_READ_PEER_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %12, i32 %50)
  br label %52

52:                                               ; preds = %47, %40
  %53 = load i32, i32* @FW_PORT_DCB_TYPE_PGID, align 4
  %54 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %12, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  %58 = load %struct.adapter*, %struct.adapter** %10, align 8
  %59 = load %struct.adapter*, %struct.adapter** %10, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @t4_wr_mbox(%struct.adapter* %58, i32 %61, %struct.fw_port_cmd* %12, i32 32, %struct.fw_port_cmd* %12)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %52
  %67 = load %struct.adapter*, %struct.adapter** %10, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %15, align 4
  %71 = sub nsw i32 0, %70
  %72 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %4, align 4
  br label %181

74:                                               ; preds = %52
  %75 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %12, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @be32_to_cpu(i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load %struct.port_info*, %struct.port_info** %8, align 8
  %85 = getelementptr inbounds %struct.port_info, %struct.port_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @INIT_PORT_DCB_READ_LOCAL_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %12, i32 %86)
  br label %93

88:                                               ; preds = %74
  %89 = load %struct.port_info*, %struct.port_info** %8, align 8
  %90 = getelementptr inbounds %struct.port_info, %struct.port_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @INIT_PORT_DCB_READ_PEER_CMD(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %12, i32 %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* @FW_PORT_DCB_TYPE_PGRATE, align 4
  %95 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %12, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  store i32 %94, i32* %98, align 8
  %99 = load %struct.adapter*, %struct.adapter** %10, align 8
  %100 = load %struct.adapter*, %struct.adapter** %10, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @t4_wr_mbox(%struct.adapter* %99, i32 %102, %struct.fw_port_cmd* %12, i32 32, %struct.fw_port_cmd* %12)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @FW_PORT_DCB_CFG_SUCCESS, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %93
  %108 = load %struct.adapter*, %struct.adapter** %10, align 8
  %109 = getelementptr inbounds %struct.adapter, %struct.adapter* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %15, align 4
  %112 = sub nsw i32 0, %111
  %113 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %15, align 4
  store i32 %114, i32* %4, align 4
  br label %181

115:                                              ; preds = %93
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %177, %115
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %180

120:                                              ; preds = %116
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %13, align 4
  %123 = sub nsw i32 7, %122
  %124 = mul nsw i32 %123, 4
  %125 = ashr i32 %121, %124
  %126 = and i32 %125, 15
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.ieee_ets*, %struct.ieee_ets** %6, align 8
  %129 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %127, i32* %133, align 4
  %134 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %12, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ieee_ets*, %struct.ieee_ets** %6, align 8
  %144 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %142, i32* %148, align 4
  %149 = load %struct.ieee_ets*, %struct.ieee_ets** %6, align 8
  %150 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ieee_ets*, %struct.ieee_ets** %6, align 8
  %157 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  %162 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %12, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ieee_ets*, %struct.ieee_ets** %6, align 8
  %172 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %170, i32* %176, align 4
  br label %177

177:                                              ; preds = %120
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %116

180:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %180, %107, %66, %31
  %182 = load i32, i32* %4, align 4
  ret i32 %182
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
