; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_set_bbp_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_set_bbp_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_radar_specs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mt76x02_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MT_DFS_NUM_ENGINES = common dso_local global i32 0, align 4
@fcc_radar_specs = common dso_local global %struct.mt76x02_radar_specs* null, align 8
@etsi_radar_specs = common dso_local global %struct.mt76x02_radar_specs* null, align 8
@jp_w53_radar_specs = common dso_local global %struct.mt76x02_radar_specs* null, align 8
@jp_w56_radar_specs = common dso_local global %struct.mt76x02_radar_specs* null, align 8
@MT_DFS_VGA_MASK = common dso_local global i32 0, align 4
@MT_DFS_PWR_GAIN_OFFSET = common dso_local global i32 0, align 4
@MT_DFS_PWR_DOWN_TIME = common dso_local global i32 0, align 4
@MT_DFS_SYM_ROUND = common dso_local global i32 0, align 4
@MT_DFS_DELTA_DELAY = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@MT_DFS_RX_PE_MASK = common dso_local global i32 0, align 4
@MT_DFS_PKT_END_MASK = common dso_local global i32 0, align 4
@MT_DFS_CH_EN = common dso_local global i32 0, align 4
@IBI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x02_dfs_set_bbp_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x02_dfs_set_bbp_params(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.mt76x02_radar_specs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %19 [
    i32 133, label %12
    i32 132, label %15
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @MT_DFS_NUM_ENGINES, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  br label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @MT_DFS_NUM_ENGINES, align 4
  %17 = mul nsw i32 2, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %5, align 8
  br label %20

19:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %19, %15, %12
  %21 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %22 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %61 [
    i32 130, label %25
    i32 131, label %29
    i32 129, label %33
    i32 128, label %60
  ]

25:                                               ; preds = %20
  %26 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** @fcc_radar_specs, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %26, i64 %27
  store %struct.mt76x02_radar_specs* %28, %struct.mt76x02_radar_specs** %3, align 8
  br label %62

29:                                               ; preds = %20
  %30 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** @etsi_radar_specs, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %30, i64 %31
  store %struct.mt76x02_radar_specs* %32, %struct.mt76x02_radar_specs** %3, align 8
  br label %62

33:                                               ; preds = %20
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %35 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %40, 5250
  br i1 %41, label %42, label %55

42:                                               ; preds = %33
  %43 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %44 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %49, 5350
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** @jp_w53_radar_specs, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %52, i64 %53
  store %struct.mt76x02_radar_specs* %54, %struct.mt76x02_radar_specs** %3, align 8
  br label %59

55:                                               ; preds = %42, %33
  %56 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** @jp_w56_radar_specs, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %56, i64 %57
  store %struct.mt76x02_radar_specs* %58, %struct.mt76x02_radar_specs** %3, align 8
  br label %59

59:                                               ; preds = %55, %51
  br label %62

60:                                               ; preds = %20
  br label %61

61:                                               ; preds = %20, %60
  br label %253

62:                                               ; preds = %59, %29, %25
  %63 = load i32, i32* @MT_DFS_VGA_MASK, align 4
  %64 = shl i32 %63, 16
  %65 = load i32, i32* @MT_DFS_PWR_GAIN_OFFSET, align 4
  %66 = shl i32 %65, 12
  %67 = or i32 %64, %66
  %68 = load i32, i32* @MT_DFS_PWR_DOWN_TIME, align 4
  %69 = shl i32 %68, 8
  %70 = or i32 %67, %69
  %71 = load i32, i32* @MT_DFS_SYM_ROUND, align 4
  %72 = shl i32 %71, 4
  %73 = or i32 %70, %72
  %74 = load i32, i32* @MT_DFS_DELTA_DELAY, align 4
  %75 = and i32 %74, 15
  %76 = or i32 %73, %75
  store i32 %76, i32* %6, align 4
  %77 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %78 = load i32, i32* @DFS, align 4
  %79 = call i32 @MT_BBP(i32 %78, i32 2)
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @mt76_wr(%struct.mt76x02_dev* %77, i32 %79, i32 %80)
  %82 = load i32, i32* @MT_DFS_RX_PE_MASK, align 4
  %83 = shl i32 %82, 16
  %84 = load i32, i32* @MT_DFS_PKT_END_MASK, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %6, align 4
  %86 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %87 = load i32, i32* @DFS, align 4
  %88 = call i32 @MT_BBP(i32 %87, i32 3)
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @mt76_wr(%struct.mt76x02_dev* %86, i32 %88, i32 %89)
  store i64 0, i64* %4, align 8
  br label %91

91:                                               ; preds = %231, %62
  %92 = load i64, i64* %4, align 8
  %93 = load i32, i32* @MT_DFS_NUM_ENGINES, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp ult i64 %92, %94
  br i1 %95, label %96, label %234

96:                                               ; preds = %91
  %97 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %98 = load i32, i32* @DFS, align 4
  %99 = call i32 @MT_BBP(i32 %98, i32 0)
  %100 = load i64, i64* %4, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @mt76_wr(%struct.mt76x02_dev* %97, i32 %99, i32 %101)
  %103 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** %3, align 8
  %104 = load i64, i64* %4, align 8
  %105 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %103, i64 %104
  %106 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 511
  %109 = shl i32 %108, 16
  %110 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** %3, align 8
  %111 = load i64, i64* %4, align 8
  %112 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %110, i64 %111
  %113 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 15
  %116 = or i32 %109, %115
  store i32 %116, i32* %6, align 4
  %117 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %118 = load i32, i32* @DFS, align 4
  %119 = call i32 @MT_BBP(i32 %118, i32 4)
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @mt76_wr(%struct.mt76x02_dev* %117, i32 %119, i32 %120)
  %122 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** %3, align 8
  %123 = load i64, i64* %4, align 8
  %124 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %122, i64 %123
  %125 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 4095
  %128 = shl i32 %127, 16
  %129 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** %3, align 8
  %130 = load i64, i64* %4, align 8
  %131 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %129, i64 %130
  %132 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 4095
  %135 = or i32 %128, %134
  store i32 %135, i32* %6, align 4
  %136 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %137 = load i32, i32* @DFS, align 4
  %138 = call i32 @MT_BBP(i32 %137, i32 5)
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @mt76_wr(%struct.mt76x02_dev* %136, i32 %138, i32 %139)
  %141 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %142 = load i32, i32* @DFS, align 4
  %143 = call i32 @MT_BBP(i32 %142, i32 7)
  %144 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** %3, align 8
  %145 = load i64, i64* %4, align 8
  %146 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %144, i64 %145
  %147 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @mt76_wr(%struct.mt76x02_dev* %141, i32 %143, i32 %148)
  %150 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %151 = load i32, i32* @DFS, align 4
  %152 = call i32 @MT_BBP(i32 %151, i32 9)
  %153 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** %3, align 8
  %154 = load i64, i64* %4, align 8
  %155 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %153, i64 %154
  %156 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @mt76_wr(%struct.mt76x02_dev* %150, i32 %152, i32 %157)
  %159 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %160 = load i32, i32* @DFS, align 4
  %161 = call i32 @MT_BBP(i32 %160, i32 11)
  %162 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** %3, align 8
  %163 = load i64, i64* %4, align 8
  %164 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %162, i64 %163
  %165 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @mt76_wr(%struct.mt76x02_dev* %159, i32 %161, i32 %166)
  %168 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %169 = load i32, i32* @DFS, align 4
  %170 = call i32 @MT_BBP(i32 %169, i32 13)
  %171 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** %3, align 8
  %172 = load i64, i64* %4, align 8
  %173 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %171, i64 %172
  %174 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @mt76_wr(%struct.mt76x02_dev* %168, i32 %170, i32 %175)
  %177 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** %3, align 8
  %178 = load i64, i64* %4, align 8
  %179 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %177, i64 %178
  %180 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 4095
  %183 = shl i32 %182, 16
  %184 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** %3, align 8
  %185 = load i64, i64* %4, align 8
  %186 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %184, i64 %185
  %187 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %186, i32 0, i32 9
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, 4095
  %190 = or i32 %183, %189
  store i32 %190, i32* %6, align 4
  %191 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %192 = load i32, i32* @DFS, align 4
  %193 = call i32 @MT_BBP(i32 %192, i32 14)
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @mt76_wr(%struct.mt76x02_dev* %191, i32 %193, i32 %194)
  %196 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** %3, align 8
  %197 = load i64, i64* %4, align 8
  %198 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %196, i64 %197
  %199 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %198, i32 0, i32 10
  %200 = load i32, i32* %199, align 4
  %201 = shl i32 %200, 16
  %202 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** %3, align 8
  %203 = load i64, i64* %4, align 8
  %204 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %202, i64 %203
  %205 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %204, i32 0, i32 11
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %201, %206
  store i32 %207, i32* %6, align 4
  %208 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %209 = load i32, i32* @DFS, align 4
  %210 = call i32 @MT_BBP(i32 %209, i32 15)
  %211 = load i32, i32* %6, align 4
  %212 = call i32 @mt76_wr(%struct.mt76x02_dev* %208, i32 %210, i32 %211)
  %213 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %214 = load i32, i32* @DFS, align 4
  %215 = call i32 @MT_BBP(i32 %214, i32 17)
  %216 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** %3, align 8
  %217 = load i64, i64* %4, align 8
  %218 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %216, i64 %217
  %219 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %218, i32 0, i32 12
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @mt76_wr(%struct.mt76x02_dev* %213, i32 %215, i32 %220)
  %222 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %223 = load i32, i32* @DFS, align 4
  %224 = call i32 @MT_BBP(i32 %223, i32 30)
  %225 = load %struct.mt76x02_radar_specs*, %struct.mt76x02_radar_specs** %3, align 8
  %226 = load i64, i64* %4, align 8
  %227 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %225, i64 %226
  %228 = getelementptr inbounds %struct.mt76x02_radar_specs, %struct.mt76x02_radar_specs* %227, i32 0, i32 13
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @mt76_wr(%struct.mt76x02_dev* %222, i32 %224, i32 %229)
  br label %231

231:                                              ; preds = %96
  %232 = load i64, i64* %4, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %4, align 8
  br label %91

234:                                              ; preds = %91
  %235 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %236 = load i32, i32* @DFS, align 4
  %237 = call i32 @MT_BBP(i32 %236, i32 1)
  %238 = call i32 @mt76_wr(%struct.mt76x02_dev* %235, i32 %237, i32 15)
  %239 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %240 = load i32, i32* @DFS, align 4
  %241 = call i32 @MT_BBP(i32 %240, i32 36)
  %242 = call i32 @mt76_wr(%struct.mt76x02_dev* %239, i32 %241, i32 3)
  %243 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %244 = load i32, i32* @DFS, align 4
  %245 = call i32 @MT_BBP(i32 %244, i32 0)
  %246 = load i32, i32* @MT_DFS_CH_EN, align 4
  %247 = shl i32 %246, 16
  %248 = call i32 @mt76_wr(%struct.mt76x02_dev* %243, i32 %245, i32 %247)
  %249 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %250 = load i32, i32* @IBI, align 4
  %251 = call i32 @MT_BBP(i32 %250, i32 11)
  %252 = call i32 @mt76_wr(%struct.mt76x02_dev* %249, i32 %251, i32 204800001)
  br label %253

253:                                              ; preds = %234, %61
  ret void
}

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
