; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_tx_channel_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_tx_channel_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i64*, i64**, i32*, %struct.hw_info* }
%struct.hw_info = type { i32, i32, i32, i32, i32, i64 }
%struct.sq_cfg_msg = type { i64, i64 }

@NIC_HW_MAX_FRS = common dso_local global i32 0, align 4
@MAX_QUEUES_PER_QSET = common dso_local global i32 0, align 4
@MAX_SQS_PER_VF = common dso_local global i32 0, align 4
@MAX_LMAC_PER_BGX = common dso_local global i32 0, align 4
@NIC_PF_QSET_0_127_SQ_0_7_CFG2 = common dso_local global i32 0, align 4
@NIC_QS_ID_SHIFT = common dso_local global i32 0, align 4
@NIC_Q_NUM_SHIFT = common dso_local global i32 0, align 4
@NIC_PF_TL4_0_1023_CFG = common dso_local global i32 0, align 4
@NIC_PF_TL3_0_255_CFG = common dso_local global i32 0, align 4
@NIC_PF_TL3_0_255_CHAN = common dso_local global i32 0, align 4
@NIC_PF_CHAN_0_255_TX_CFG = common dso_local global i32 0, align 4
@NIC_PF_TL3A_0_63_CFG = common dso_local global i32 0, align 4
@NIC_PF_TL2_0_63_CFG = common dso_local global i32 0, align 4
@NIC_PF_TL2_0_63_PRI = common dso_local global i32 0, align 4
@NIC_PF_TL2_LMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, i64, %struct.sq_cfg_msg*)* @nic_tx_channel_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_tx_channel_cfg(%struct.nicpf* %0, i64 %1, %struct.sq_cfg_msg* %2) #0 {
  %4 = alloca %struct.nicpf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sq_cfg_msg*, align 8
  %7 = alloca %struct.hw_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.sq_cfg_msg* %2, %struct.sq_cfg_msg** %6, align 8
  %18 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %19 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %18, i32 0, i32 3
  %20 = load %struct.hw_info*, %struct.hw_info** %19, align 8
  store %struct.hw_info* %20, %struct.hw_info** %7, align 8
  %21 = load %struct.sq_cfg_msg*, %struct.sq_cfg_msg** %6, align 8
  %22 = getelementptr inbounds %struct.sq_cfg_msg, %struct.sq_cfg_msg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %15, align 8
  %24 = load %struct.sq_cfg_msg*, %struct.sq_cfg_msg** %6, align 8
  %25 = getelementptr inbounds %struct.sq_cfg_msg, %struct.sq_cfg_msg* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %30 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %16, align 8
  br label %37

35:                                               ; preds = %3
  %36 = load i64, i64* %5, align 8
  store i64 %36, i64* %16, align 8
  br label %37

37:                                               ; preds = %35, %28
  %38 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %39 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %16, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %46 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %16, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @NIC_HW_MAX_FRS, align 4
  %53 = add nsw i32 %52, 24
  %54 = sdiv i32 %53, 4
  store i32 %54, i32* %14, align 4
  %55 = load %struct.hw_info*, %struct.hw_info** %7, align 8
  %56 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %121

59:                                               ; preds = %37
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.hw_info*, %struct.hw_info** %7, align 8
  %62 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.hw_info*, %struct.hw_info** %7, align 8
  %65 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %63, %66
  %68 = mul nsw i32 %60, %67
  store i32 %68, i32* %13, align 4
  %69 = load %struct.sq_cfg_msg*, %struct.sq_cfg_msg** %6, align 8
  %70 = getelementptr inbounds %struct.sq_cfg_msg, %struct.sq_cfg_msg* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @MAX_QUEUES_PER_QSET, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %13, align 4
  br label %120

79:                                               ; preds = %59
  store i32 0, i32* %17, align 4
  br label %80

80:                                               ; preds = %99, %79
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* @MAX_SQS_PER_VF, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %86 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %85, i32 0, i32 1
  %87 = load i64**, i64*** %86, align 8
  %88 = load i64, i64* %16, align 8
  %89 = getelementptr inbounds i64*, i64** %87, i64 %88
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %102

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %17, align 4
  br label %80

102:                                              ; preds = %97, %80
  %103 = load i32, i32* @MAX_LMAC_PER_BGX, align 4
  %104 = load i32, i32* @MAX_QUEUES_PER_QSET, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @MAX_QUEUES_PER_QSET, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32, i32* @MAX_SQS_PER_VF, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* @MAX_QUEUES_PER_QSET, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %102, %73
  br label %127

121:                                              ; preds = %37
  %122 = load i64, i64* %5, align 8
  %123 = load i32, i32* @MAX_QUEUES_PER_QSET, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 %122, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %121, %120
  %128 = load i64, i64* %15, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.hw_info*, %struct.hw_info** %7, align 8
  %135 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.hw_info*, %struct.hw_info** %7, align 8
  %138 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = sdiv i32 %136, %139
  %141 = sdiv i32 %133, %140
  store i32 %141, i32* %12, align 4
  %142 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %143 = load i32, i32* @NIC_PF_QSET_0_127_SQ_0_7_CFG2, align 4
  %144 = load i64, i64* %5, align 8
  %145 = trunc i64 %144 to i32
  %146 = load i32, i32* @NIC_QS_ID_SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = or i32 %143, %147
  %149 = load i64, i64* %15, align 8
  %150 = trunc i64 %149 to i32
  %151 = load i32, i32* @NIC_Q_NUM_SHIFT, align 4
  %152 = shl i32 %150, %151
  %153 = or i32 %148, %152
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @nic_reg_write(%struct.nicpf* %142, i32 %153, i32 %154)
  %156 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %157 = load i32, i32* @NIC_PF_TL4_0_1023_CFG, align 4
  %158 = load i32, i32* %13, align 4
  %159 = shl i32 %158, 3
  %160 = or i32 %157, %159
  %161 = load i64, i64* %5, align 8
  %162 = trunc i64 %161 to i32
  %163 = shl i32 %162, 27
  %164 = load i64, i64* %15, align 8
  %165 = trunc i64 %164 to i32
  %166 = shl i32 %165, 24
  %167 = or i32 %163, %166
  %168 = load i32, i32* %14, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @nic_reg_write(%struct.nicpf* %156, i32 %160, i32 %169)
  %171 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %172 = load i32, i32* @NIC_PF_TL3_0_255_CFG, align 4
  %173 = load i32, i32* %12, align 4
  %174 = shl i32 %173, 3
  %175 = or i32 %172, %174
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @nic_reg_write(%struct.nicpf* %171, i32 %175, i32 %176)
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.hw_info*, %struct.hw_info** %7, align 8
  %180 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = mul nsw i32 %178, %181
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.hw_info*, %struct.hw_info** %7, align 8
  %185 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = mul nsw i32 %183, %186
  %188 = add nsw i32 %182, %187
  store i32 %188, i32* %10, align 4
  %189 = load %struct.hw_info*, %struct.hw_info** %7, align 8
  %190 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %127
  %194 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %195 = load i32, i32* @NIC_PF_TL3_0_255_CHAN, align 4
  %196 = load i32, i32* %12, align 4
  %197 = shl i32 %196, 3
  %198 = or i32 %195, %197
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @nic_reg_write(%struct.nicpf* %194, i32 %198, i32 %199)
  br label %208

201:                                              ; preds = %127
  %202 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %203 = load i32, i32* @NIC_PF_TL3_0_255_CHAN, align 4
  %204 = load i32, i32* %12, align 4
  %205 = shl i32 %204, 3
  %206 = or i32 %203, %205
  %207 = call i32 @nic_reg_write(%struct.nicpf* %202, i32 %206, i32 0)
  br label %208

208:                                              ; preds = %201, %193
  %209 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %210 = load i32, i32* @NIC_PF_CHAN_0_255_TX_CFG, align 4
  %211 = load i32, i32* %10, align 4
  %212 = shl i32 %211, 3
  %213 = or i32 %210, %212
  %214 = call i32 @nic_reg_write(%struct.nicpf* %209, i32 %213, i32 1)
  %215 = load i32, i32* %12, align 4
  %216 = ashr i32 %215, 2
  store i32 %216, i32* %11, align 4
  %217 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %218 = load i32, i32* @NIC_PF_TL3A_0_63_CFG, align 4
  %219 = load i32, i32* %11, align 4
  %220 = shl i32 %219, 3
  %221 = or i32 %218, %220
  %222 = load i32, i32* %11, align 4
  %223 = call i32 @nic_reg_write(%struct.nicpf* %217, i32 %221, i32 %222)
  %224 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %225 = load i32, i32* @NIC_PF_TL2_0_63_CFG, align 4
  %226 = load i32, i32* %11, align 4
  %227 = shl i32 %226, 3
  %228 = or i32 %225, %227
  %229 = load i32, i32* %14, align 4
  %230 = call i32 @nic_reg_write(%struct.nicpf* %224, i32 %228, i32 %229)
  %231 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %232 = load i32, i32* @NIC_PF_TL2_0_63_PRI, align 4
  %233 = load i32, i32* %11, align 4
  %234 = shl i32 %233, 3
  %235 = or i32 %232, %234
  %236 = call i32 @nic_reg_write(%struct.nicpf* %231, i32 %235, i32 0)
  %237 = load %struct.hw_info*, %struct.hw_info** %7, align 8
  %238 = getelementptr inbounds %struct.hw_info, %struct.hw_info* %237, i32 0, i32 5
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %253, label %241

241:                                              ; preds = %208
  %242 = load %struct.nicpf*, %struct.nicpf** %4, align 8
  %243 = load i32, i32* @NIC_PF_TL2_LMAC, align 4
  %244 = load i32, i32* %11, align 4
  %245 = shl i32 %244, 3
  %246 = or i32 %243, %245
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* @MAX_LMAC_PER_BGX, align 4
  %250 = mul nsw i32 %248, %249
  %251 = add nsw i32 %247, %250
  %252 = call i32 @nic_reg_write(%struct.nicpf* %242, i32 %246, i32 %251)
  br label %253

253:                                              ; preds = %241, %208
  ret void
}

declare dso_local i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32) #1

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
