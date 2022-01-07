; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32, %struct.dsaf_hw_stats* }
%struct.dsaf_hw_stats = type { i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DSAF_INODE_PAD_DISCARD_NUM_0_REG = common dso_local global i64 0, align 8
@DSAF_INODE_FINAL_IN_MAN_NUM_0_REG = common dso_local global i64 0, align 8
@DSAF_INODE_FINAL_IN_PKT_NUM_0_REG = common dso_local global i64 0, align 8
@DSAF_INODE_SBM_PID_NUM_0_REG = common dso_local global i64 0, align 8
@DSAF_INODE_FINAL_IN_PAUSE_NUM_0_REG = common dso_local global i64 0, align 8
@DSAFV2_INODE_FINAL_IN_PAUSE_NUM_0_REG = common dso_local global i64 0, align 8
@DSAF_INODE_SBM_RELS_NUM_0_REG = common dso_local global i64 0, align 8
@DSAF_INODE_SBM_DROP_NUM_0_REG = common dso_local global i64 0, align 8
@DSAF_INODE_CRC_FALSE_NUM_0_REG = common dso_local global i64 0, align 8
@DSAF_INODE_BP_DISCARD_NUM_0_REG = common dso_local global i64 0, align 8
@DSAF_INODE_RSLT_DISCARD_NUM_0_REG = common dso_local global i64 0, align 8
@DSAF_INODE_LOCAL_ADDR_FALSE_NUM_0_REG = common dso_local global i64 0, align 8
@DSAF_INODE_SW_VLAN_TAG_DISC_0_REG = common dso_local global i64 0, align 8
@DSAF_INODE_IN_DATA_STP_DISC_0_REG = common dso_local global i64 0, align 8
@DSAF_SERVICE_NW_NUM = common dso_local global i64 0, align 8
@DSAF_PRIO_NR = common dso_local global i32 0, align 4
@DSAF_XOD_XGE_PFC_PRIO_CNT_BASE_REG = common dso_local global i64 0, align 8
@DSAF_XOD_XGE_PFC_PRIO_CNT_OFFSET = common dso_local global i32 0, align 4
@DSAF_XOD_RCVPKT_CNT_0_REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_dsaf_update_stats(%struct.dsaf_device* %0, i64 %1) #0 {
  %3 = alloca %struct.dsaf_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dsaf_hw_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.dsaf_device* %0, %struct.dsaf_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %10 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %9, i32 0, i32 1
  %11 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %11, i64 %12
  store %struct.dsaf_hw_stats* %13, %struct.dsaf_hw_stats** %5, align 8
  %14 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %15 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @AE_IS_VER1(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %19 = load i64, i64* @DSAF_INODE_PAD_DISCARD_NUM_0_REG, align 8
  %20 = load i64, i64* %4, align 8
  %21 = trunc i64 %20 to i32
  %22 = mul nsw i32 128, %21
  %23 = sext i32 %22 to i64
  %24 = add i64 %19, %23
  %25 = call i64 @dsaf_read_dev(%struct.dsaf_device* %18, i64 %24)
  %26 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %27 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %26, i32 0, i32 15
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 8
  %32 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %33 = load i64, i64* @DSAF_INODE_FINAL_IN_MAN_NUM_0_REG, align 8
  %34 = load i64, i64* %4, align 8
  %35 = trunc i64 %34 to i32
  %36 = mul nsw i32 128, %35
  %37 = sext i32 %36 to i64
  %38 = add i64 %33, %37
  %39 = call i64 @dsaf_read_dev(%struct.dsaf_device* %32, i64 %38)
  %40 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %41 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %40, i32 0, i32 14
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  %46 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %47 = load i64, i64* @DSAF_INODE_FINAL_IN_PKT_NUM_0_REG, align 8
  %48 = load i64, i64* %4, align 8
  %49 = trunc i64 %48 to i32
  %50 = mul nsw i32 128, %49
  %51 = sext i32 %50 to i64
  %52 = add i64 %47, %51
  %53 = call i64 @dsaf_read_dev(%struct.dsaf_device* %46, i64 %52)
  %54 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %55 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %54, i32 0, i32 13
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 8
  %60 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %61 = load i64, i64* @DSAF_INODE_SBM_PID_NUM_0_REG, align 8
  %62 = load i64, i64* %4, align 8
  %63 = trunc i64 %62 to i32
  %64 = mul nsw i32 128, %63
  %65 = sext i32 %64 to i64
  %66 = add i64 %61, %65
  %67 = call i64 @dsaf_read_dev(%struct.dsaf_device* %60, i64 %66)
  %68 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %69 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %68, i32 0, i32 12
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %67
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %2
  %77 = load i64, i64* @DSAF_INODE_FINAL_IN_PAUSE_NUM_0_REG, align 8
  br label %80

78:                                               ; preds = %2
  %79 = load i64, i64* @DSAFV2_INODE_FINAL_IN_PAUSE_NUM_0_REG, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i64 [ %77, %76 ], [ %79, %78 ]
  store i64 %81, i64* %8, align 8
  %82 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %4, align 8
  %85 = trunc i64 %84 to i32
  %86 = mul nsw i32 128, %85
  %87 = sext i32 %86 to i64
  %88 = add i64 %83, %87
  %89 = call i64 @dsaf_read_dev(%struct.dsaf_device* %82, i64 %88)
  %90 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %91 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 8
  %96 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %97 = load i64, i64* @DSAF_INODE_SBM_RELS_NUM_0_REG, align 8
  %98 = load i64, i64* %4, align 8
  %99 = trunc i64 %98 to i32
  %100 = mul nsw i32 128, %99
  %101 = sext i32 %100 to i64
  %102 = add i64 %97, %101
  %103 = call i64 @dsaf_read_dev(%struct.dsaf_device* %96, i64 %102)
  %104 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %105 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  %110 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %111 = load i64, i64* @DSAF_INODE_SBM_DROP_NUM_0_REG, align 8
  %112 = load i64, i64* %4, align 8
  %113 = trunc i64 %112 to i32
  %114 = mul nsw i32 128, %113
  %115 = sext i32 %114 to i64
  %116 = add i64 %111, %115
  %117 = call i64 @dsaf_read_dev(%struct.dsaf_device* %110, i64 %116)
  %118 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %119 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 8
  %124 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %125 = load i64, i64* @DSAF_INODE_CRC_FALSE_NUM_0_REG, align 8
  %126 = load i64, i64* %4, align 8
  %127 = trunc i64 %126 to i32
  %128 = mul nsw i32 128, %127
  %129 = sext i32 %128 to i64
  %130 = add i64 %125, %129
  %131 = call i64 @dsaf_read_dev(%struct.dsaf_device* %124, i64 %130)
  %132 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %133 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %131
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 4
  %138 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %139 = load i64, i64* @DSAF_INODE_BP_DISCARD_NUM_0_REG, align 8
  %140 = load i64, i64* %4, align 8
  %141 = trunc i64 %140 to i32
  %142 = mul nsw i32 128, %141
  %143 = sext i32 %142 to i64
  %144 = add i64 %139, %143
  %145 = call i64 @dsaf_read_dev(%struct.dsaf_device* %138, i64 %144)
  %146 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %147 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %145
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 8
  %152 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %153 = load i64, i64* @DSAF_INODE_RSLT_DISCARD_NUM_0_REG, align 8
  %154 = load i64, i64* %4, align 8
  %155 = trunc i64 %154 to i32
  %156 = mul nsw i32 128, %155
  %157 = sext i32 %156 to i64
  %158 = add i64 %153, %157
  %159 = call i64 @dsaf_read_dev(%struct.dsaf_device* %152, i64 %158)
  %160 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %161 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %159
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %161, align 4
  %166 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %167 = load i64, i64* @DSAF_INODE_LOCAL_ADDR_FALSE_NUM_0_REG, align 8
  %168 = load i64, i64* %4, align 8
  %169 = trunc i64 %168 to i32
  %170 = mul nsw i32 128, %169
  %171 = sext i32 %170 to i64
  %172 = add i64 %167, %171
  %173 = call i64 @dsaf_read_dev(%struct.dsaf_device* %166, i64 %172)
  %174 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %175 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %173
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %175, align 8
  %180 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %181 = load i64, i64* @DSAF_INODE_SW_VLAN_TAG_DISC_0_REG, align 8
  %182 = load i64, i64* %4, align 8
  %183 = trunc i64 %182 to i32
  %184 = mul nsw i32 4, %183
  %185 = sext i32 %184 to i64
  %186 = add i64 %181, %185
  %187 = call i64 @dsaf_read_dev(%struct.dsaf_device* %180, i64 %186)
  %188 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %189 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %191, %187
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %189, align 4
  %194 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %195 = load i64, i64* @DSAF_INODE_IN_DATA_STP_DISC_0_REG, align 8
  %196 = load i64, i64* %4, align 8
  %197 = trunc i64 %196 to i32
  %198 = mul nsw i32 4, %197
  %199 = sext i32 %198 to i64
  %200 = add i64 %195, %199
  %201 = call i64 @dsaf_read_dev(%struct.dsaf_device* %194, i64 %200)
  %202 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %203 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %205, %201
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %203, align 8
  %208 = load i64, i64* %4, align 8
  %209 = load i64, i64* @DSAF_SERVICE_NW_NUM, align 8
  %210 = icmp ult i64 %208, %209
  br i1 %210, label %211, label %267

211:                                              ; preds = %80
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %267, label %214

214:                                              ; preds = %211
  store i32 0, i32* %7, align 4
  br label %215

215:                                              ; preds = %263, %214
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* @DSAF_PRIO_NR, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %266

219:                                              ; preds = %215
  %220 = load i32, i32* %7, align 4
  %221 = call i64 @hns_dsaf_get_inode_prio_reg(i32 %220)
  store i64 %221, i64* %8, align 8
  %222 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %223 = load i64, i64* %8, align 8
  %224 = load i64, i64* %4, align 8
  %225 = trunc i64 %224 to i32
  %226 = mul nsw i32 4, %225
  %227 = sext i32 %226 to i64
  %228 = add i64 %223, %227
  %229 = call i64 @dsaf_read_dev(%struct.dsaf_device* %222, i64 %228)
  %230 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %231 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %237, %229
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %235, align 4
  %240 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %241 = load i64, i64* @DSAF_XOD_XGE_PFC_PRIO_CNT_BASE_REG, align 8
  %242 = load i32, i32* @DSAF_XOD_XGE_PFC_PRIO_CNT_OFFSET, align 4
  %243 = load i32, i32* %7, align 4
  %244 = mul nsw i32 %242, %243
  %245 = sext i32 %244 to i64
  %246 = add i64 %241, %245
  %247 = load i64, i64* %4, align 8
  %248 = trunc i64 %247 to i32
  %249 = mul nsw i32 240, %248
  %250 = sext i32 %249 to i64
  %251 = add i64 %246, %250
  %252 = call i64 @dsaf_read_dev(%struct.dsaf_device* %240, i64 %251)
  %253 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %254 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %260, %252
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %258, align 4
  br label %263

263:                                              ; preds = %219
  %264 = load i32, i32* %7, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %7, align 4
  br label %215

266:                                              ; preds = %215
  br label %267

267:                                              ; preds = %266, %211, %80
  %268 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %269 = load i64, i64* @DSAF_XOD_RCVPKT_CNT_0_REG, align 8
  %270 = load i64, i64* %4, align 8
  %271 = trunc i64 %270 to i32
  %272 = mul nsw i32 144, %271
  %273 = sext i32 %272 to i64
  %274 = add i64 %269, %273
  %275 = call i64 @dsaf_read_dev(%struct.dsaf_device* %268, i64 %274)
  %276 = load %struct.dsaf_hw_stats*, %struct.dsaf_hw_stats** %5, align 8
  %277 = getelementptr inbounds %struct.dsaf_hw_stats, %struct.dsaf_hw_stats* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = add nsw i64 %279, %275
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %277, align 8
  ret void
}

declare dso_local i32 @AE_IS_VER1(i32) #1

declare dso_local i64 @dsaf_read_dev(%struct.dsaf_device*, i64) #1

declare dso_local i64 @hns_dsaf_get_inode_prio_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
