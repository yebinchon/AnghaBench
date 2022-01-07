; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_dis_lan_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_dis_lan_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ice_aqc_dis_txq_item = type { i32, i32* }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_dis_txqs = type { i32, i32, i64 }
%struct.ice_aq_desc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ice_aqc_dis_txqs }

@ice_aqc_opc_dis_txqs = common dso_local global i32 0, align 4
@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_LAN_TXQ_MAX_QGRPS = common dso_local global i64 0, align 8
@ICE_AQC_Q_DIS_TIMEOUT_S = common dso_local global i32 0, align 4
@ICE_AQC_Q_DIS_TIMEOUT_M = common dso_local global i32 0, align 4
@ICE_AQC_Q_DIS_CMD_VM_RESET = common dso_local global i32 0, align 4
@ICE_AQC_Q_DIS_VMVF_NUM_M = common dso_local global i64 0, align 8
@ICE_AQC_Q_DIS_CMD_VF_RESET = common dso_local global i32 0, align 4
@ICE_AQC_Q_DIS_CMD_FLUSH_PIPE = common dso_local global i32 0, align 4
@ICE_AQ_FLAG_RD = common dso_local global i64 0, align 8
@ICE_DBG_SCHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"VM%d disable failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"disable queue %d failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i64, %struct.ice_aqc_dis_txq_item*, i64, i32, i64, %struct.ice_sq_cd*)* @ice_aq_dis_lan_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_dis_lan_txq(%struct.ice_hw* %0, i64 %1, %struct.ice_aqc_dis_txq_item* %2, i64 %3, i32 %4, i64 %5, %struct.ice_sq_cd* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_hw*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ice_aqc_dis_txq_item*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.ice_sq_cd*, align 8
  %16 = alloca %struct.ice_aqc_dis_txqs*, align 8
  %17 = alloca %struct.ice_aq_desc, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.ice_aqc_dis_txq_item* %2, %struct.ice_aqc_dis_txq_item** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store %struct.ice_sq_cd* %6, %struct.ice_sq_cd** %15, align 8
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %17, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.ice_aqc_dis_txqs* %22, %struct.ice_aqc_dis_txqs** %16, align 8
  %23 = load i32, i32* @ice_aqc_opc_dis_txqs, align 4
  %24 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %17, i32 %23)
  %25 = load %struct.ice_aqc_dis_txq_item*, %struct.ice_aqc_dis_txq_item** %11, align 8
  %26 = icmp ne %struct.ice_aqc_dis_txq_item* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %31, i32* %8, align 4
  br label %172

32:                                               ; preds = %27, %7
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @ICE_LAN_TXQ_MAX_QGRPS, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %37, i32* %8, align 4
  br label %172

38:                                               ; preds = %32
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.ice_aqc_dis_txqs*, %struct.ice_aqc_dis_txqs** %16, align 8
  %41 = getelementptr inbounds %struct.ice_aqc_dis_txqs, %struct.ice_aqc_dis_txqs* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @ICE_AQC_Q_DIS_TIMEOUT_S, align 4
  %43 = shl i32 5, %42
  %44 = load i32, i32* @ICE_AQC_Q_DIS_TIMEOUT_M, align 4
  %45 = and i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = call i32 @cpu_to_le16(i64 %46)
  %48 = load %struct.ice_aqc_dis_txqs*, %struct.ice_aqc_dis_txqs** %16, align 8
  %49 = getelementptr inbounds %struct.ice_aqc_dis_txqs, %struct.ice_aqc_dis_txqs* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %13, align 4
  switch i32 %50, label %81 [
    i32 128, label %51
    i32 129, label %63
    i32 130, label %80
  ]

51:                                               ; preds = %38
  %52 = load i32, i32* @ICE_AQC_Q_DIS_CMD_VM_RESET, align 4
  %53 = load %struct.ice_aqc_dis_txqs*, %struct.ice_aqc_dis_txqs** %16, align 8
  %54 = getelementptr inbounds %struct.ice_aqc_dis_txqs, %struct.ice_aqc_dis_txqs* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* @ICE_AQC_Q_DIS_VMVF_NUM_M, align 8
  %57 = and i64 %55, %56
  %58 = call i32 @cpu_to_le16(i64 %57)
  %59 = load %struct.ice_aqc_dis_txqs*, %struct.ice_aqc_dis_txqs** %16, align 8
  %60 = getelementptr inbounds %struct.ice_aqc_dis_txqs, %struct.ice_aqc_dis_txqs* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %82

63:                                               ; preds = %38
  %64 = load i32, i32* @ICE_AQC_Q_DIS_CMD_VF_RESET, align 4
  %65 = load %struct.ice_aqc_dis_txqs*, %struct.ice_aqc_dis_txqs** %16, align 8
  %66 = getelementptr inbounds %struct.ice_aqc_dis_txqs, %struct.ice_aqc_dis_txqs* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %69 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %67, %71
  %73 = load i64, i64* @ICE_AQC_Q_DIS_VMVF_NUM_M, align 8
  %74 = and i64 %72, %73
  %75 = call i32 @cpu_to_le16(i64 %74)
  %76 = load %struct.ice_aqc_dis_txqs*, %struct.ice_aqc_dis_txqs** %16, align 8
  %77 = getelementptr inbounds %struct.ice_aqc_dis_txqs, %struct.ice_aqc_dis_txqs* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %82

80:                                               ; preds = %38
  br label %81

81:                                               ; preds = %38, %80
  br label %82

82:                                               ; preds = %81, %63, %51
  %83 = load i32, i32* @ICE_AQC_Q_DIS_CMD_FLUSH_PIPE, align 4
  %84 = load %struct.ice_aqc_dis_txqs*, %struct.ice_aqc_dis_txqs** %16, align 8
  %85 = getelementptr inbounds %struct.ice_aqc_dis_txqs, %struct.ice_aqc_dis_txqs* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.ice_aqc_dis_txq_item*, %struct.ice_aqc_dis_txq_item** %11, align 8
  %89 = icmp ne %struct.ice_aqc_dis_txq_item* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %82
  br label %134

91:                                               ; preds = %82
  %92 = load i64, i64* @ICE_AQ_FLAG_RD, align 8
  %93 = call i32 @cpu_to_le16(i64 %92)
  %94 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %17, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 8
  store i64 0, i64* %19, align 8
  br label %97

97:                                               ; preds = %124, %91
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* %10, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %97
  %102 = load %struct.ice_aqc_dis_txq_item*, %struct.ice_aqc_dis_txq_item** %11, align 8
  %103 = load i64, i64* %19, align 8
  %104 = getelementptr inbounds %struct.ice_aqc_dis_txq_item, %struct.ice_aqc_dis_txq_item* %102, i64 %103
  %105 = getelementptr inbounds %struct.ice_aqc_dis_txq_item, %struct.ice_aqc_dis_txq_item* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 8
  %109 = load i64, i64* %20, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %20, align 8
  %111 = load i64, i64* %20, align 8
  %112 = add i64 %111, 8
  store i64 %112, i64* %20, align 8
  %113 = load %struct.ice_aqc_dis_txq_item*, %struct.ice_aqc_dis_txq_item** %11, align 8
  %114 = load i64, i64* %19, align 8
  %115 = getelementptr inbounds %struct.ice_aqc_dis_txq_item, %struct.ice_aqc_dis_txq_item* %113, i64 %114
  %116 = getelementptr inbounds %struct.ice_aqc_dis_txq_item, %struct.ice_aqc_dis_txq_item* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = srem i32 %117, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %101
  %121 = load i64, i64* %20, align 8
  %122 = add nsw i64 %121, 2
  store i64 %122, i64* %20, align 8
  br label %123

123:                                              ; preds = %120, %101
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %19, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %19, align 8
  br label %97

127:                                              ; preds = %97
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* %20, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %132, i32* %8, align 4
  br label %172

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133, %90
  %135 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %136 = load %struct.ice_aqc_dis_txq_item*, %struct.ice_aqc_dis_txq_item** %11, align 8
  %137 = load i64, i64* %12, align 8
  %138 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %15, align 8
  %139 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %135, %struct.ice_aq_desc* %17, %struct.ice_aqc_dis_txq_item* %136, i64 %137, %struct.ice_sq_cd* %138)
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %18, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %170

142:                                              ; preds = %134
  %143 = load %struct.ice_aqc_dis_txq_item*, %struct.ice_aqc_dis_txq_item** %11, align 8
  %144 = icmp ne %struct.ice_aqc_dis_txq_item* %143, null
  br i1 %144, label %154, label %145

145:                                              ; preds = %142
  %146 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %147 = load i32, i32* @ICE_DBG_SCHED, align 4
  %148 = load i64, i64* %14, align 8
  %149 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %150 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @ice_debug(%struct.ice_hw* %146, i32 %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %148, i32 %152)
  br label %169

154:                                              ; preds = %142
  %155 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %156 = load i32, i32* @ICE_DBG_SCHED, align 4
  %157 = load %struct.ice_aqc_dis_txq_item*, %struct.ice_aqc_dis_txq_item** %11, align 8
  %158 = getelementptr inbounds %struct.ice_aqc_dis_txq_item, %struct.ice_aqc_dis_txq_item* %157, i64 0
  %159 = getelementptr inbounds %struct.ice_aqc_dis_txq_item, %struct.ice_aqc_dis_txq_item* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @le16_to_cpu(i32 %162)
  %164 = load %struct.ice_hw*, %struct.ice_hw** %9, align 8
  %165 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @ice_debug(%struct.ice_hw* %155, i32 %156, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %163, i32 %167)
  br label %169

169:                                              ; preds = %154, %145
  br label %170

170:                                              ; preds = %169, %134
  %171 = load i32, i32* %18, align 4
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %170, %131, %36, %30
  %173 = load i32, i32* %8, align 4
  ret i32 %173
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, %struct.ice_aqc_dis_txq_item*, i64, %struct.ice_sq_cd*) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, i64, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
