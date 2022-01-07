; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_prepare_key_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_prepare_key_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpkg_profile_cfg = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, i32, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.dpni_ext_set_rx_tc_dist = type { i32, %struct.dpni_dist_extract* }
%struct.dpni_dist_extract = type { %struct.TYPE_12__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@DPKG_MAX_NUM_OF_EXTRACTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFH_TYPE = common dso_local global i32 0, align 4
@EXTRACT_TYPE = common dso_local global i32 0, align 4
@DPKG_NUM_OF_MASKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_prepare_key_cfg(%struct.dpkg_profile_cfg* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpkg_profile_cfg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpni_ext_set_rx_tc_dist*, align 8
  %9 = alloca %struct.dpni_dist_extract*, align 8
  store %struct.dpkg_profile_cfg* %0, %struct.dpkg_profile_cfg** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %11 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DPKG_MAX_NUM_OF_EXTRACTS, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %254

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = bitcast i32* %19 to %struct.dpni_ext_set_rx_tc_dist*
  store %struct.dpni_ext_set_rx_tc_dist* %20, %struct.dpni_ext_set_rx_tc_dist** %8, align 8
  %21 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dpni_ext_set_rx_tc_dist*, %struct.dpni_ext_set_rx_tc_dist** %8, align 8
  %25 = getelementptr inbounds %struct.dpni_ext_set_rx_tc_dist, %struct.dpni_ext_set_rx_tc_dist* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %250, %18
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %29 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %253

32:                                               ; preds = %26
  %33 = load %struct.dpni_ext_set_rx_tc_dist*, %struct.dpni_ext_set_rx_tc_dist** %8, align 8
  %34 = getelementptr inbounds %struct.dpni_ext_set_rx_tc_dist, %struct.dpni_ext_set_rx_tc_dist* %33, i32 0, i32 1
  %35 = load %struct.dpni_dist_extract*, %struct.dpni_dist_extract** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dpni_dist_extract, %struct.dpni_dist_extract* %35, i64 %37
  store %struct.dpni_dist_extract* %38, %struct.dpni_dist_extract** %9, align 8
  %39 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %40 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %39, i32 0, i32 1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %174 [
    i32 129, label %47
    i32 130, label %124
    i32 128, label %149
  ]

47:                                               ; preds = %32
  %48 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %49 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %48, i32 0, i32 1
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dpni_dist_extract*, %struct.dpni_dist_extract** %9, align 8
  %59 = getelementptr inbounds %struct.dpni_dist_extract, %struct.dpni_dist_extract* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 4
  %60 = load %struct.dpni_dist_extract*, %struct.dpni_dist_extract** %9, align 8
  %61 = getelementptr inbounds %struct.dpni_dist_extract, %struct.dpni_dist_extract* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @EFH_TYPE, align 4
  %64 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %65 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dpni_set_field(i32 %62, i32 %63, i32 %73)
  %75 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %76 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dpni_dist_extract*, %struct.dpni_dist_extract** %9, align 8
  %86 = getelementptr inbounds %struct.dpni_dist_extract, %struct.dpni_dist_extract* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %88 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %87, i32 0, i32 1
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dpni_dist_extract*, %struct.dpni_dist_extract** %9, align 8
  %98 = getelementptr inbounds %struct.dpni_dist_extract, %struct.dpni_dist_extract* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %100 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %99, i32 0, i32 1
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @cpu_to_le32(i32 %108)
  %110 = load %struct.dpni_dist_extract*, %struct.dpni_dist_extract** %9, align 8
  %111 = getelementptr inbounds %struct.dpni_dist_extract, %struct.dpni_dist_extract* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 4
  %112 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %113 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %112, i32 0, i32 1
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.dpni_dist_extract*, %struct.dpni_dist_extract** %9, align 8
  %123 = getelementptr inbounds %struct.dpni_dist_extract, %struct.dpni_dist_extract* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 8
  br label %177

124:                                              ; preds = %32
  %125 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %126 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %125, i32 0, i32 1
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.dpni_dist_extract*, %struct.dpni_dist_extract** %9, align 8
  %136 = getelementptr inbounds %struct.dpni_dist_extract, %struct.dpni_dist_extract* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  %137 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %138 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %137, i32 0, i32 1
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.dpni_dist_extract*, %struct.dpni_dist_extract** %9, align 8
  %148 = getelementptr inbounds %struct.dpni_dist_extract, %struct.dpni_dist_extract* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 8
  br label %177

149:                                              ; preds = %32
  %150 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %151 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %150, i32 0, i32 1
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.dpni_dist_extract*, %struct.dpni_dist_extract** %9, align 8
  %161 = getelementptr inbounds %struct.dpni_dist_extract, %struct.dpni_dist_extract* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 4
  %162 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %163 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %162, i32 0, i32 1
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.dpni_dist_extract*, %struct.dpni_dist_extract** %9, align 8
  %173 = getelementptr inbounds %struct.dpni_dist_extract, %struct.dpni_dist_extract* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 8
  br label %177

174:                                              ; preds = %32
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %3, align 4
  br label %254

177:                                              ; preds = %149, %124, %47
  %178 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %179 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %178, i32 0, i32 1
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.dpni_dist_extract*, %struct.dpni_dist_extract** %9, align 8
  %187 = getelementptr inbounds %struct.dpni_dist_extract, %struct.dpni_dist_extract* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 4
  %188 = load %struct.dpni_dist_extract*, %struct.dpni_dist_extract** %9, align 8
  %189 = getelementptr inbounds %struct.dpni_dist_extract, %struct.dpni_dist_extract* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @EXTRACT_TYPE, align 4
  %192 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %193 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %192, i32 0, i32 1
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @dpni_set_field(i32 %190, i32 %191, i32 %199)
  store i32 0, i32* %7, align 4
  br label %201

201:                                              ; preds = %246, %177
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @DPKG_NUM_OF_MASKS, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %249

205:                                              ; preds = %201
  %206 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %207 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %206, i32 0, i32 1
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %207, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.dpni_dist_extract*, %struct.dpni_dist_extract** %9, align 8
  %220 = getelementptr inbounds %struct.dpni_dist_extract, %struct.dpni_dist_extract* %219, i32 0, i32 0
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 1
  store i32 %218, i32* %225, align 4
  %226 = load %struct.dpkg_profile_cfg*, %struct.dpkg_profile_cfg** %4, align 8
  %227 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %226, i32 0, i32 1
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %232, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.dpni_dist_extract*, %struct.dpni_dist_extract** %9, align 8
  %240 = getelementptr inbounds %struct.dpni_dist_extract, %struct.dpni_dist_extract* %239, i32 0, i32 0
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = load i32, i32* %7, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  store i32 %238, i32* %245, align 4
  br label %246

246:                                              ; preds = %205
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %7, align 4
  br label %201

249:                                              ; preds = %201
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %6, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %6, align 4
  br label %26

253:                                              ; preds = %26
  store i32 0, i32* %3, align 4
  br label %254

254:                                              ; preds = %253, %174, %15
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local i32 @dpni_set_field(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
