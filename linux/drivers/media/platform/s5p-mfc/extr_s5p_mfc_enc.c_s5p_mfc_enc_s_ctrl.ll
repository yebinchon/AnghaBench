; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_enc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_enc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.s5p_mfc_ctx = type { i32, %struct.s5p_mfc_enc_params, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s5p_mfc_dev = type { i32 }

@V4L2_MPEG_MFC51_VIDEO_FORCE_FRAME_TYPE_I_FRAME = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_PROFILE_H264_MAIN = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_PROFILE_H264_HIGH = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_PROFILE_H264_BASELINE = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_PROFILE_H264_CONSTRAINED_BASELINE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Level number is wrong\0A\00", align 1
@S5P_FIMV_ENC_PROFILE_MPEG4_SIMPLE = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_PROFILE_MPEG4_ADVANCED_SIMPLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid control, id=%d, val=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @s5p_mfc_enc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_enc_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  %5 = alloca %struct.s5p_mfc_enc_params*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %8 = call %struct.s5p_mfc_ctx* @ctrl_to_ctx(%struct.v4l2_ctrl* %7)
  store %struct.s5p_mfc_ctx* %8, %struct.s5p_mfc_ctx** %3, align 8
  %9 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %9, i32 0, i32 2
  %11 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %10, align 8
  store %struct.s5p_mfc_dev* %11, %struct.s5p_mfc_dev** %4, align 8
  %12 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %12, i32 0, i32 1
  store %struct.s5p_mfc_enc_params* %13, %struct.s5p_mfc_enc_params** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %15 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %1025 [
    i32 232, label %17
    i32 153, label %23
    i32 154, label %29
    i32 155, label %35
    i32 236, label %42
    i32 242, label %48
    i32 241, label %54
    i32 234, label %76
    i32 238, label %82
    i32 239, label %88
    i32 249, label %94
    i32 235, label %100
    i32 148, label %104
    i32 152, label %110
    i32 151, label %116
    i32 224, label %122
    i32 208, label %130
    i32 248, label %136
    i32 240, label %142
    i32 237, label %148
    i32 214, label %154
    i32 220, label %194
    i32 161, label %224
    i32 217, label %254
    i32 219, label %262
    i32 218, label %270
    i32 223, label %278
    i32 243, label %286
    i32 226, label %294
    i32 164, label %302
    i32 222, label %308
    i32 215, label %316
    i32 216, label %324
    i32 213, label %332
    i32 225, label %340
    i32 162, label %348
    i32 230, label %348
    i32 159, label %356
    i32 228, label %356
    i32 160, label %364
    i32 229, label %364
    i32 157, label %372
    i32 227, label %372
    i32 163, label %380
    i32 231, label %380
    i32 246, label %388
    i32 245, label %396
    i32 244, label %404
    i32 247, label %412
    i32 210, label %420
    i32 209, label %428
    i32 211, label %437
    i32 212, label %445
    i32 233, label %453
    i32 221, label %464
    i32 158, label %472
    i32 156, label %492
    i32 138, label %500
    i32 142, label %508
    i32 137, label %516
    i32 146, label %524
    i32 145, label %532
    i32 144, label %540
    i32 143, label %548
    i32 139, label %556
    i32 140, label %564
    i32 141, label %572
    i32 136, label %580
    i32 147, label %588
    i32 185, label %596
    i32 174, label %604
    i32 207, label %612
    i32 205, label %620
    i32 176, label %628
    i32 177, label %646
    i32 184, label %664
    i32 175, label %680
    i32 168, label %698
    i32 178, label %706
    i32 149, label %714
    i32 172, label %722
    i32 206, label %730
    i32 180, label %738
    i32 166, label %746
    i32 181, label %754
    i32 187, label %762
    i32 188, label %770
    i32 189, label %778
    i32 202, label %786
    i32 200, label %796
    i32 198, label %806
    i32 196, label %816
    i32 194, label %826
    i32 192, label %836
    i32 190, label %846
    i32 203, label %856
    i32 201, label %866
    i32 199, label %876
    i32 197, label %886
    i32 195, label %896
    i32 193, label %906
    i32 191, label %916
    i32 204, label %926
    i32 169, label %934
    i32 170, label %942
    i32 186, label %950
    i32 167, label %958
    i32 179, label %969
    i32 165, label %977
    i32 173, label %985
    i32 183, label %993
    i32 182, label %1001
    i32 171, label %1009
    i32 150, label %1017
  ]

17:                                               ; preds = %1
  %18 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %22 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %1037

23:                                               ; preds = %1
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %28 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %1037

29:                                               ; preds = %1
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  br label %1037

35:                                               ; preds = %1
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 8
  %40 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %41 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  br label %1037

42:                                               ; preds = %1
  %43 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %44 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  br label %1037

48:                                               ; preds = %1
  %49 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %53 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  br label %1037

54:                                               ; preds = %1
  %55 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %56 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %61 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 8
  %62 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %63 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %68 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 4
  %69 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %70 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 0
  %73 = and i32 %72, 255
  %74 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %75 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 8
  br label %1037

76:                                               ; preds = %1
  %77 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %78 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %81 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 4
  br label %1037

82:                                               ; preds = %1
  %83 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %84 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %87 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 8
  br label %1037

88:                                               ; preds = %1
  %89 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %90 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %93 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %92, i32 0, i32 11
  store i32 %91, i32* %93, align 4
  br label %1037

94:                                               ; preds = %1
  %95 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %96 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %99 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %1037

100:                                              ; preds = %1
  %101 = load i32, i32* @V4L2_MPEG_MFC51_VIDEO_FORCE_FRAME_TYPE_I_FRAME, align 4
  %102 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %103 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %1037

104:                                              ; preds = %1
  %105 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %106 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %109 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %108, i32 0, i32 12
  store i32 %107, i32* %109, align 8
  br label %1037

110:                                              ; preds = %1
  %111 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %112 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %115 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %114, i32 0, i32 13
  store i32 %113, i32* %115, align 4
  br label %1037

116:                                              ; preds = %1
  %117 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %118 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %121 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %120, i32 0, i32 14
  store i32 %119, i32* %121, align 8
  br label %1037

122:                                              ; preds = %1
  %123 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %124 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %127 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %126, i32 0, i32 20
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 %125, i32* %129, align 4
  br label %1037

130:                                              ; preds = %1
  %131 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %132 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %135 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %134, i32 0, i32 15
  store i32 %133, i32* %135, align 4
  br label %1037

136:                                              ; preds = %1
  %137 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %138 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %141 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %140, i32 0, i32 16
  store i32 %139, i32* %141, align 8
  br label %1037

142:                                              ; preds = %1
  %143 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %144 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %147 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %146, i32 0, i32 17
  store i32 %145, i32* %147, align 4
  br label %1037

148:                                              ; preds = %1
  %149 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %150 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %153 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %152, i32 0, i32 18
  store i32 %151, i32* %153, align 8
  br label %1037

154:                                              ; preds = %1
  %155 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %156 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  switch i32 %157, label %190 [
    i32 132, label %158
    i32 133, label %164
    i32 135, label %170
    i32 134, label %176
  ]

158:                                              ; preds = %154
  %159 = load i32, i32* @S5P_FIMV_ENC_PROFILE_H264_MAIN, align 4
  %160 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %161 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %160, i32 0, i32 20
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 24
  store i32 %159, i32* %163, align 4
  br label %193

164:                                              ; preds = %154
  %165 = load i32, i32* @S5P_FIMV_ENC_PROFILE_H264_HIGH, align 4
  %166 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %167 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %166, i32 0, i32 20
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 24
  store i32 %165, i32* %169, align 4
  br label %193

170:                                              ; preds = %154
  %171 = load i32, i32* @S5P_FIMV_ENC_PROFILE_H264_BASELINE, align 4
  %172 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %173 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %172, i32 0, i32 20
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 24
  store i32 %171, i32* %175, align 4
  br label %193

176:                                              ; preds = %154
  %177 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %178 = call i32 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = load i32, i32* @S5P_FIMV_ENC_PROFILE_H264_CONSTRAINED_BASELINE, align 4
  %182 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %183 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %182, i32 0, i32 20
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 24
  store i32 %181, i32* %185, align 4
  br label %189

186:                                              ; preds = %176
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %186, %180
  br label %193

190:                                              ; preds = %154
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %190, %189, %170, %164, %158
  br label %1037

194:                                              ; preds = %1
  %195 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %196 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %199 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %198, i32 0, i32 20
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  store i32 %197, i32* %201, align 4
  %202 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %203 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @h264_level(i32 %204)
  %206 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %207 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %206, i32 0, i32 20
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  store i32 %205, i32* %209, align 4
  %210 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %211 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %210, i32 0, i32 20
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %194
  %217 = call i32 @mfc_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %218 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %219 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %218, i32 0, i32 20
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %6, align 4
  br label %223

223:                                              ; preds = %216, %194
  br label %1037

224:                                              ; preds = %1
  %225 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %226 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %229 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %228, i32 0, i32 20
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  store i32 %227, i32* %231, align 8
  %232 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %233 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @mpeg4_level(i32 %234)
  %236 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %237 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %236, i32 0, i32 20
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  store i32 %235, i32* %239, align 4
  %240 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %241 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %240, i32 0, i32 20
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %224
  %247 = call i32 @mfc_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %248 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %249 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %248, i32 0, i32 20
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %6, align 4
  br label %253

253:                                              ; preds = %246, %224
  br label %1037

254:                                              ; preds = %1
  %255 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %256 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %259 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %258, i32 0, i32 20
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 3
  store i32 %257, i32* %261, align 4
  br label %1037

262:                                              ; preds = %1
  %263 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %264 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %267 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %266, i32 0, i32 20
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 4
  store i32 %265, i32* %269, align 4
  br label %1037

270:                                              ; preds = %1
  %271 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %272 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %275 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %274, i32 0, i32 20
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 5
  store i32 %273, i32* %277, align 4
  br label %1037

278:                                              ; preds = %1
  %279 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %280 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %283 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %282, i32 0, i32 20
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 6
  store i32 %281, i32* %285, align 4
  br label %1037

286:                                              ; preds = %1
  %287 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %288 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %291 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %290, i32 0, i32 20
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 7
  store i32 %289, i32* %293, align 4
  br label %1037

294:                                              ; preds = %1
  %295 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %296 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %299 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %298, i32 0, i32 20
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 8
  store i32 %297, i32* %301, align 4
  br label %1037

302:                                              ; preds = %1
  %303 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %304 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %307 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %306, i32 0, i32 19
  store i32 %305, i32* %307, align 4
  br label %1037

308:                                              ; preds = %1
  %309 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %310 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %313 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %312, i32 0, i32 20
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 9
  store i32 %311, i32* %315, align 4
  br label %1037

316:                                              ; preds = %1
  %317 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %318 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %321 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %320, i32 0, i32 20
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 10
  store i32 %319, i32* %323, align 4
  br label %1037

324:                                              ; preds = %1
  %325 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %326 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %329 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %328, i32 0, i32 20
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 3
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 11
  store i32 %327, i32* %331, align 4
  br label %1037

332:                                              ; preds = %1
  %333 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %334 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %337 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %336, i32 0, i32 20
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 12
  store i32 %335, i32* %339, align 4
  br label %1037

340:                                              ; preds = %1
  %341 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %342 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %345 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %344, i32 0, i32 20
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 13
  store i32 %343, i32* %347, align 4
  br label %1037

348:                                              ; preds = %1, %1
  %349 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %350 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %353 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %352, i32 0, i32 20
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 2
  store i32 %351, i32* %355, align 8
  br label %1037

356:                                              ; preds = %1, %1
  %357 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %358 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %361 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %360, i32 0, i32 20
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 3
  store i32 %359, i32* %363, align 4
  br label %1037

364:                                              ; preds = %1, %1
  %365 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %366 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %369 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %368, i32 0, i32 20
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 4
  store i32 %367, i32* %371, align 8
  br label %1037

372:                                              ; preds = %1, %1
  %373 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %374 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %377 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %376, i32 0, i32 20
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 5
  store i32 %375, i32* %379, align 4
  br label %1037

380:                                              ; preds = %1, %1
  %381 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %382 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %385 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %384, i32 0, i32 20
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 6
  store i32 %383, i32* %387, align 8
  br label %1037

388:                                              ; preds = %1
  %389 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %390 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %393 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %392, i32 0, i32 20
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 3
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 14
  store i32 %391, i32* %395, align 4
  br label %1037

396:                                              ; preds = %1
  %397 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %398 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %401 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %400, i32 0, i32 20
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 3
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 15
  store i32 %399, i32* %403, align 4
  br label %1037

404:                                              ; preds = %1
  %405 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %406 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %409 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %408, i32 0, i32 20
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %409, i32 0, i32 3
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i32 0, i32 16
  store i32 %407, i32* %411, align 4
  br label %1037

412:                                              ; preds = %1
  %413 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %414 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %417 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %416, i32 0, i32 20
  %418 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %417, i32 0, i32 3
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 17
  store i32 %415, i32* %419, align 4
  br label %1037

420:                                              ; preds = %1
  %421 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %422 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %425 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %424, i32 0, i32 20
  %426 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %425, i32 0, i32 3
  %427 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %426, i32 0, i32 18
  store i32 %423, i32* %427, align 4
  br label %1037

428:                                              ; preds = %1
  %429 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %430 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @vui_sar_idc(i32 %431)
  %433 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %434 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %433, i32 0, i32 20
  %435 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %434, i32 0, i32 3
  %436 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %435, i32 0, i32 23
  store i32 %432, i32* %436, align 4
  br label %1037

437:                                              ; preds = %1
  %438 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %439 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %442 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %441, i32 0, i32 20
  %443 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %442, i32 0, i32 3
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %443, i32 0, i32 19
  store i32 %440, i32* %444, align 4
  br label %1037

445:                                              ; preds = %1
  %446 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %447 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %450 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %449, i32 0, i32 20
  %451 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %450, i32 0, i32 3
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 20
  store i32 %448, i32* %452, align 4
  br label %1037

453:                                              ; preds = %1
  %454 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %455 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = icmp ne i32 %456, 0
  %458 = xor i1 %457, true
  %459 = zext i1 %458 to i32
  %460 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %461 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %460, i32 0, i32 20
  %462 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %461, i32 0, i32 3
  %463 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %462, i32 0, i32 21
  store i32 %459, i32* %463, align 4
  br label %1037

464:                                              ; preds = %1
  %465 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %466 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %465, i32 0, i32 1
  %467 = load i32, i32* %466, align 4
  %468 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %469 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %468, i32 0, i32 20
  %470 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %469, i32 0, i32 3
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i32 0, i32 22
  store i32 %467, i32* %471, align 4
  br label %1037

472:                                              ; preds = %1
  %473 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %474 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  switch i32 %475, label %488 [
    i32 128, label %476
    i32 129, label %482
  ]

476:                                              ; preds = %472
  %477 = load i32, i32* @S5P_FIMV_ENC_PROFILE_MPEG4_SIMPLE, align 4
  %478 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %479 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %478, i32 0, i32 20
  %480 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %479, i32 0, i32 2
  %481 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %480, i32 0, i32 8
  store i32 %477, i32* %481, align 8
  br label %491

482:                                              ; preds = %472
  %483 = load i32, i32* @S5P_FIMV_ENC_PROFILE_MPEG4_ADVANCED_SIMPLE, align 4
  %484 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %485 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %484, i32 0, i32 20
  %486 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %485, i32 0, i32 2
  %487 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %486, i32 0, i32 8
  store i32 %483, i32* %487, align 8
  br label %491

488:                                              ; preds = %472
  %489 = load i32, i32* @EINVAL, align 4
  %490 = sub nsw i32 0, %489
  store i32 %490, i32* %6, align 4
  br label %491

491:                                              ; preds = %488, %482, %476
  br label %1037

492:                                              ; preds = %1
  %493 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %494 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %497 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %496, i32 0, i32 20
  %498 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %497, i32 0, i32 2
  %499 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %498, i32 0, i32 7
  store i32 %495, i32* %499, align 4
  br label %1037

500:                                              ; preds = %1
  %501 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %502 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %505 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %504, i32 0, i32 20
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %505, i32 0, i32 1
  %507 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %506, i32 0, i32 0
  store i32 %503, i32* %507, align 8
  br label %1037

508:                                              ; preds = %1
  %509 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %510 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %513 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %512, i32 0, i32 20
  %514 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %514, i32 0, i32 1
  store i32 %511, i32* %515, align 4
  br label %1037

516:                                              ; preds = %1
  %517 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %518 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 4
  %520 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %521 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %520, i32 0, i32 20
  %522 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %521, i32 0, i32 1
  %523 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %522, i32 0, i32 2
  store i32 %519, i32* %523, align 8
  br label %1037

524:                                              ; preds = %1
  %525 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %526 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  %528 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %529 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %528, i32 0, i32 20
  %530 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %530, i32 0, i32 3
  store i32 %527, i32* %531, align 4
  br label %1037

532:                                              ; preds = %1
  %533 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %534 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 4
  %536 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %537 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %536, i32 0, i32 20
  %538 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %537, i32 0, i32 1
  %539 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %538, i32 0, i32 4
  store i32 %535, i32* %539, align 8
  br label %1037

540:                                              ; preds = %1
  %541 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %542 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %545 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %544, i32 0, i32 20
  %546 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %545, i32 0, i32 1
  %547 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %546, i32 0, i32 5
  store i32 %543, i32* %547, align 4
  br label %1037

548:                                              ; preds = %1
  %549 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %550 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %549, i32 0, i32 1
  %551 = load i32, i32* %550, align 4
  %552 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %553 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %552, i32 0, i32 20
  %554 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %554, i32 0, i32 6
  store i32 %551, i32* %555, align 8
  br label %1037

556:                                              ; preds = %1
  %557 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %558 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %557, i32 0, i32 1
  %559 = load i32, i32* %558, align 4
  %560 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %561 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %560, i32 0, i32 20
  %562 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %561, i32 0, i32 1
  %563 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %562, i32 0, i32 7
  store i32 %559, i32* %563, align 4
  br label %1037

564:                                              ; preds = %1
  %565 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %566 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %565, i32 0, i32 1
  %567 = load i32, i32* %566, align 4
  %568 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %569 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %568, i32 0, i32 20
  %570 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %570, i32 0, i32 8
  store i32 %567, i32* %571, align 8
  br label %1037

572:                                              ; preds = %1
  %573 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %574 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 4
  %576 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %577 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %576, i32 0, i32 20
  %578 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %577, i32 0, i32 1
  %579 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %578, i32 0, i32 9
  store i32 %575, i32* %579, align 4
  br label %1037

580:                                              ; preds = %1
  %581 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %582 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %581, i32 0, i32 1
  %583 = load i32, i32* %582, align 4
  %584 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %585 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %584, i32 0, i32 20
  %586 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %585, i32 0, i32 1
  %587 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %586, i32 0, i32 10
  store i32 %583, i32* %587, align 8
  br label %1037

588:                                              ; preds = %1
  %589 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %590 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %589, i32 0, i32 1
  %591 = load i32, i32* %590, align 4
  %592 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %593 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %592, i32 0, i32 20
  %594 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %594, i32 0, i32 11
  store i32 %591, i32* %595, align 4
  br label %1037

596:                                              ; preds = %1
  %597 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %598 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %597, i32 0, i32 1
  %599 = load i32, i32* %598, align 4
  %600 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %601 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %600, i32 0, i32 20
  %602 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %601, i32 0, i32 0
  %603 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %602, i32 0, i32 0
  store i32 %599, i32* %603, align 8
  br label %1037

604:                                              ; preds = %1
  %605 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %606 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %605, i32 0, i32 1
  %607 = load i32, i32* %606, align 4
  %608 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %609 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %608, i32 0, i32 20
  %610 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %610, i32 0, i32 1
  store i32 %607, i32* %611, align 4
  br label %1037

612:                                              ; preds = %1
  %613 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %614 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 4
  %616 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %617 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %616, i32 0, i32 20
  %618 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %617, i32 0, i32 0
  %619 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %618, i32 0, i32 2
  store i32 %615, i32* %619, align 8
  br label %1037

620:                                              ; preds = %1
  %621 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %622 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %621, i32 0, i32 1
  %623 = load i32, i32* %622, align 4
  %624 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %625 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %624, i32 0, i32 20
  %626 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %625, i32 0, i32 0
  %627 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %626, i32 0, i32 3
  store i32 %623, i32* %627, align 4
  br label %1037

628:                                              ; preds = %1
  %629 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %630 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %629, i32 0, i32 1
  %631 = load i32, i32* %630, align 4
  %632 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %633 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %632, i32 0, i32 20
  %634 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %633, i32 0, i32 0
  %635 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %634, i32 0, i32 4
  store i32 %631, i32* %635, align 8
  %636 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %637 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %638 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %637, i32 0, i32 1
  %639 = load i32, i32* %638, align 4
  %640 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %641 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %640, i32 0, i32 20
  %642 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %641, i32 0, i32 0
  %643 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %642, i32 0, i32 5
  %644 = load i32, i32* %643, align 4
  %645 = call i32 @__enc_update_hevc_qp_ctrls_range(%struct.s5p_mfc_ctx* %636, i32 %639, i32 %644)
  br label %1037

646:                                              ; preds = %1
  %647 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %648 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %647, i32 0, i32 1
  %649 = load i32, i32* %648, align 4
  %650 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %651 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %650, i32 0, i32 20
  %652 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %651, i32 0, i32 0
  %653 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %652, i32 0, i32 5
  store i32 %649, i32* %653, align 4
  %654 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %655 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %656 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %655, i32 0, i32 20
  %657 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %656, i32 0, i32 0
  %658 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %657, i32 0, i32 4
  %659 = load i32, i32* %658, align 8
  %660 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %661 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %660, i32 0, i32 1
  %662 = load i32, i32* %661, align 4
  %663 = call i32 @__enc_update_hevc_qp_ctrls_range(%struct.s5p_mfc_ctx* %654, i32 %659, i32 %662)
  br label %1037

664:                                              ; preds = %1
  %665 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %666 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %665, i32 0, i32 1
  %667 = load i32, i32* %666, align 4
  %668 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %669 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %668, i32 0, i32 20
  %670 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %669, i32 0, i32 0
  %671 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %670, i32 0, i32 6
  store i32 %667, i32* %671, align 8
  %672 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %673 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %672, i32 0, i32 1
  %674 = load i32, i32* %673, align 4
  %675 = call i32 @hevc_level(i32 %674)
  %676 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %677 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %676, i32 0, i32 20
  %678 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %677, i32 0, i32 0
  %679 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %678, i32 0, i32 33
  store i32 %675, i32* %679, align 8
  br label %1037

680:                                              ; preds = %1
  %681 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %682 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %681, i32 0, i32 1
  %683 = load i32, i32* %682, align 4
  switch i32 %683, label %694 [
    i32 131, label %684
    i32 130, label %689
  ]

684:                                              ; preds = %680
  %685 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %686 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %685, i32 0, i32 20
  %687 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %686, i32 0, i32 0
  %688 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %687, i32 0, i32 7
  store i32 131, i32* %688, align 4
  br label %697

689:                                              ; preds = %680
  %690 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %691 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %690, i32 0, i32 20
  %692 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %691, i32 0, i32 0
  %693 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %692, i32 0, i32 7
  store i32 130, i32* %693, align 4
  br label %697

694:                                              ; preds = %680
  %695 = load i32, i32* @EINVAL, align 4
  %696 = sub nsw i32 0, %695
  store i32 %696, i32* %6, align 4
  br label %697

697:                                              ; preds = %694, %689, %684
  br label %1037

698:                                              ; preds = %1
  %699 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %700 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %699, i32 0, i32 1
  %701 = load i32, i32* %700, align 4
  %702 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %703 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %702, i32 0, i32 20
  %704 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %703, i32 0, i32 0
  %705 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %704, i32 0, i32 8
  store i32 %701, i32* %705, align 8
  br label %1037

706:                                              ; preds = %1
  %707 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %708 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %707, i32 0, i32 1
  %709 = load i32, i32* %708, align 4
  %710 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %711 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %710, i32 0, i32 20
  %712 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %711, i32 0, i32 0
  %713 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %712, i32 0, i32 9
  store i32 %709, i32* %713, align 4
  br label %1037

714:                                              ; preds = %1
  %715 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %716 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %715, i32 0, i32 1
  %717 = load i32, i32* %716, align 4
  %718 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %719 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %718, i32 0, i32 20
  %720 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %719, i32 0, i32 0
  %721 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %720, i32 0, i32 10
  store i32 %717, i32* %721, align 8
  br label %1037

722:                                              ; preds = %1
  %723 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %724 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %723, i32 0, i32 1
  %725 = load i32, i32* %724, align 4
  %726 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %727 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %726, i32 0, i32 20
  %728 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %727, i32 0, i32 0
  %729 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %728, i32 0, i32 11
  store i32 %725, i32* %729, align 4
  br label %1037

730:                                              ; preds = %1
  %731 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %732 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %731, i32 0, i32 1
  %733 = load i32, i32* %732, align 4
  %734 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %735 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %734, i32 0, i32 20
  %736 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %735, i32 0, i32 0
  %737 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %736, i32 0, i32 12
  store i32 %733, i32* %737, align 8
  br label %1037

738:                                              ; preds = %1
  %739 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %740 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %739, i32 0, i32 1
  %741 = load i32, i32* %740, align 4
  %742 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %743 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %742, i32 0, i32 20
  %744 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %743, i32 0, i32 0
  %745 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %744, i32 0, i32 13
  store i32 %741, i32* %745, align 4
  br label %1037

746:                                              ; preds = %1
  %747 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %748 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %747, i32 0, i32 1
  %749 = load i32, i32* %748, align 4
  %750 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %751 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %750, i32 0, i32 20
  %752 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %751, i32 0, i32 0
  %753 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %752, i32 0, i32 14
  store i32 %749, i32* %753, align 8
  br label %1037

754:                                              ; preds = %1
  %755 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %756 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %755, i32 0, i32 1
  %757 = load i32, i32* %756, align 4
  %758 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %759 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %758, i32 0, i32 20
  %760 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %759, i32 0, i32 0
  %761 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %760, i32 0, i32 15
  store i32 %757, i32* %761, align 4
  br label %1037

762:                                              ; preds = %1
  %763 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %764 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %763, i32 0, i32 1
  %765 = load i32, i32* %764, align 4
  %766 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %767 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %766, i32 0, i32 20
  %768 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %767, i32 0, i32 0
  %769 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %768, i32 0, i32 16
  store i32 %765, i32* %769, align 8
  br label %1037

770:                                              ; preds = %1
  %771 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %772 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %771, i32 0, i32 1
  %773 = load i32, i32* %772, align 4
  %774 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %775 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %774, i32 0, i32 20
  %776 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %775, i32 0, i32 0
  %777 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %776, i32 0, i32 17
  store i32 %773, i32* %777, align 4
  br label %1037

778:                                              ; preds = %1
  %779 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %780 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %779, i32 0, i32 1
  %781 = load i32, i32* %780, align 4
  %782 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %783 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %782, i32 0, i32 20
  %784 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %783, i32 0, i32 0
  %785 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %784, i32 0, i32 18
  store i32 %781, i32* %785, align 8
  br label %1037

786:                                              ; preds = %1
  %787 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %788 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %787, i32 0, i32 1
  %789 = load i32, i32* %788, align 4
  %790 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %791 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %790, i32 0, i32 20
  %792 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %791, i32 0, i32 0
  %793 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %792, i32 0, i32 19
  %794 = load i32*, i32** %793, align 8
  %795 = getelementptr inbounds i32, i32* %794, i64 0
  store i32 %789, i32* %795, align 4
  br label %1037

796:                                              ; preds = %1
  %797 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %798 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %797, i32 0, i32 1
  %799 = load i32, i32* %798, align 4
  %800 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %801 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %800, i32 0, i32 20
  %802 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %801, i32 0, i32 0
  %803 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %802, i32 0, i32 19
  %804 = load i32*, i32** %803, align 8
  %805 = getelementptr inbounds i32, i32* %804, i64 1
  store i32 %799, i32* %805, align 4
  br label %1037

806:                                              ; preds = %1
  %807 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %808 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %807, i32 0, i32 1
  %809 = load i32, i32* %808, align 4
  %810 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %811 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %810, i32 0, i32 20
  %812 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %811, i32 0, i32 0
  %813 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %812, i32 0, i32 19
  %814 = load i32*, i32** %813, align 8
  %815 = getelementptr inbounds i32, i32* %814, i64 2
  store i32 %809, i32* %815, align 4
  br label %1037

816:                                              ; preds = %1
  %817 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %818 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %817, i32 0, i32 1
  %819 = load i32, i32* %818, align 4
  %820 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %821 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %820, i32 0, i32 20
  %822 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %821, i32 0, i32 0
  %823 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %822, i32 0, i32 19
  %824 = load i32*, i32** %823, align 8
  %825 = getelementptr inbounds i32, i32* %824, i64 3
  store i32 %819, i32* %825, align 4
  br label %1037

826:                                              ; preds = %1
  %827 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %828 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %827, i32 0, i32 1
  %829 = load i32, i32* %828, align 4
  %830 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %831 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %830, i32 0, i32 20
  %832 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %831, i32 0, i32 0
  %833 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %832, i32 0, i32 19
  %834 = load i32*, i32** %833, align 8
  %835 = getelementptr inbounds i32, i32* %834, i64 4
  store i32 %829, i32* %835, align 4
  br label %1037

836:                                              ; preds = %1
  %837 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %838 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %837, i32 0, i32 1
  %839 = load i32, i32* %838, align 4
  %840 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %841 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %840, i32 0, i32 20
  %842 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %841, i32 0, i32 0
  %843 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %842, i32 0, i32 19
  %844 = load i32*, i32** %843, align 8
  %845 = getelementptr inbounds i32, i32* %844, i64 5
  store i32 %839, i32* %845, align 4
  br label %1037

846:                                              ; preds = %1
  %847 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %848 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %847, i32 0, i32 1
  %849 = load i32, i32* %848, align 4
  %850 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %851 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %850, i32 0, i32 20
  %852 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %851, i32 0, i32 0
  %853 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %852, i32 0, i32 19
  %854 = load i32*, i32** %853, align 8
  %855 = getelementptr inbounds i32, i32* %854, i64 6
  store i32 %849, i32* %855, align 4
  br label %1037

856:                                              ; preds = %1
  %857 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %858 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %857, i32 0, i32 1
  %859 = load i32, i32* %858, align 4
  %860 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %861 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %860, i32 0, i32 20
  %862 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %861, i32 0, i32 0
  %863 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %862, i32 0, i32 20
  %864 = load i32*, i32** %863, align 8
  %865 = getelementptr inbounds i32, i32* %864, i64 0
  store i32 %859, i32* %865, align 4
  br label %1037

866:                                              ; preds = %1
  %867 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %868 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %867, i32 0, i32 1
  %869 = load i32, i32* %868, align 4
  %870 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %871 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %870, i32 0, i32 20
  %872 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %871, i32 0, i32 0
  %873 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %872, i32 0, i32 20
  %874 = load i32*, i32** %873, align 8
  %875 = getelementptr inbounds i32, i32* %874, i64 1
  store i32 %869, i32* %875, align 4
  br label %1037

876:                                              ; preds = %1
  %877 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %878 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %877, i32 0, i32 1
  %879 = load i32, i32* %878, align 4
  %880 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %881 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %880, i32 0, i32 20
  %882 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %881, i32 0, i32 0
  %883 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %882, i32 0, i32 20
  %884 = load i32*, i32** %883, align 8
  %885 = getelementptr inbounds i32, i32* %884, i64 2
  store i32 %879, i32* %885, align 4
  br label %1037

886:                                              ; preds = %1
  %887 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %888 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %887, i32 0, i32 1
  %889 = load i32, i32* %888, align 4
  %890 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %891 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %890, i32 0, i32 20
  %892 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %891, i32 0, i32 0
  %893 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %892, i32 0, i32 20
  %894 = load i32*, i32** %893, align 8
  %895 = getelementptr inbounds i32, i32* %894, i64 3
  store i32 %889, i32* %895, align 4
  br label %1037

896:                                              ; preds = %1
  %897 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %898 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %897, i32 0, i32 1
  %899 = load i32, i32* %898, align 4
  %900 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %901 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %900, i32 0, i32 20
  %902 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %901, i32 0, i32 0
  %903 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %902, i32 0, i32 20
  %904 = load i32*, i32** %903, align 8
  %905 = getelementptr inbounds i32, i32* %904, i64 4
  store i32 %899, i32* %905, align 4
  br label %1037

906:                                              ; preds = %1
  %907 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %908 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %907, i32 0, i32 1
  %909 = load i32, i32* %908, align 4
  %910 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %911 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %910, i32 0, i32 20
  %912 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %911, i32 0, i32 0
  %913 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %912, i32 0, i32 20
  %914 = load i32*, i32** %913, align 8
  %915 = getelementptr inbounds i32, i32* %914, i64 5
  store i32 %909, i32* %915, align 4
  br label %1037

916:                                              ; preds = %1
  %917 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %918 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %917, i32 0, i32 1
  %919 = load i32, i32* %918, align 4
  %920 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %921 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %920, i32 0, i32 20
  %922 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %921, i32 0, i32 0
  %923 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %922, i32 0, i32 20
  %924 = load i32*, i32** %923, align 8
  %925 = getelementptr inbounds i32, i32* %924, i64 6
  store i32 %919, i32* %925, align 4
  br label %1037

926:                                              ; preds = %1
  %927 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %928 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %927, i32 0, i32 1
  %929 = load i32, i32* %928, align 4
  %930 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %931 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %930, i32 0, i32 20
  %932 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %931, i32 0, i32 0
  %933 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %932, i32 0, i32 21
  store i32 %929, i32* %933, align 8
  br label %1037

934:                                              ; preds = %1
  %935 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %936 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %935, i32 0, i32 1
  %937 = load i32, i32* %936, align 4
  %938 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %939 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %938, i32 0, i32 20
  %940 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %939, i32 0, i32 0
  %941 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %940, i32 0, i32 22
  store i32 %937, i32* %941, align 4
  br label %1037

942:                                              ; preds = %1
  %943 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %944 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %943, i32 0, i32 1
  %945 = load i32, i32* %944, align 4
  %946 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %947 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %946, i32 0, i32 20
  %948 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %947, i32 0, i32 0
  %949 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %948, i32 0, i32 23
  store i32 %945, i32* %949, align 8
  br label %1037

950:                                              ; preds = %1
  %951 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %952 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %951, i32 0, i32 1
  %953 = load i32, i32* %952, align 4
  %954 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %955 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %954, i32 0, i32 20
  %956 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %955, i32 0, i32 0
  %957 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %956, i32 0, i32 24
  store i32 %953, i32* %957, align 4
  br label %1037

958:                                              ; preds = %1
  %959 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %960 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %959, i32 0, i32 1
  %961 = load i32, i32* %960, align 4
  %962 = icmp ne i32 %961, 0
  %963 = xor i1 %962, true
  %964 = zext i1 %963 to i32
  %965 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %966 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %965, i32 0, i32 20
  %967 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %966, i32 0, i32 0
  %968 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %967, i32 0, i32 25
  store i32 %964, i32* %968, align 8
  br label %1037

969:                                              ; preds = %1
  %970 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %971 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %970, i32 0, i32 1
  %972 = load i32, i32* %971, align 4
  %973 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %974 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %973, i32 0, i32 20
  %975 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %974, i32 0, i32 0
  %976 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %975, i32 0, i32 26
  store i32 %972, i32* %976, align 4
  br label %1037

977:                                              ; preds = %1
  %978 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %979 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %978, i32 0, i32 1
  %980 = load i32, i32* %979, align 4
  %981 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %982 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %981, i32 0, i32 20
  %983 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %982, i32 0, i32 0
  %984 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %983, i32 0, i32 27
  store i32 %980, i32* %984, align 8
  br label %1037

985:                                              ; preds = %1
  %986 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %987 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %986, i32 0, i32 1
  %988 = load i32, i32* %987, align 4
  %989 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %990 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %989, i32 0, i32 20
  %991 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %990, i32 0, i32 0
  %992 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %991, i32 0, i32 28
  store i32 %988, i32* %992, align 4
  br label %1037

993:                                              ; preds = %1
  %994 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %995 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %994, i32 0, i32 1
  %996 = load i32, i32* %995, align 4
  %997 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %998 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %997, i32 0, i32 20
  %999 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %998, i32 0, i32 0
  %1000 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %999, i32 0, i32 29
  store i32 %996, i32* %1000, align 8
  br label %1037

1001:                                             ; preds = %1
  %1002 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %1003 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %1002, i32 0, i32 1
  %1004 = load i32, i32* %1003, align 4
  %1005 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %1006 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %1005, i32 0, i32 20
  %1007 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1006, i32 0, i32 0
  %1008 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1007, i32 0, i32 30
  store i32 %1004, i32* %1008, align 4
  br label %1037

1009:                                             ; preds = %1
  %1010 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %1011 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %1010, i32 0, i32 1
  %1012 = load i32, i32* %1011, align 4
  %1013 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %1014 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %1013, i32 0, i32 20
  %1015 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1014, i32 0, i32 0
  %1016 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1015, i32 0, i32 31
  store i32 %1012, i32* %1016, align 8
  br label %1037

1017:                                             ; preds = %1
  %1018 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %1019 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %1018, i32 0, i32 1
  %1020 = load i32, i32* %1019, align 4
  %1021 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %5, align 8
  %1022 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %1021, i32 0, i32 20
  %1023 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1022, i32 0, i32 0
  %1024 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1023, i32 0, i32 32
  store i32 %1020, i32* %1024, align 4
  br label %1037

1025:                                             ; preds = %1
  %1026 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %1027 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %1026, i32 0, i32 0
  %1028 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %1029 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %1028, i32 0, i32 0
  %1030 = load i32, i32* %1029, align 4
  %1031 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %1032 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %1031, i32 0, i32 1
  %1033 = load i32, i32* %1032, align 4
  %1034 = call i32 @v4l2_err(i32* %1027, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %1030, i32 %1033)
  %1035 = load i32, i32* @EINVAL, align 4
  %1036 = sub nsw i32 0, %1035
  store i32 %1036, i32* %6, align 4
  br label %1037

1037:                                             ; preds = %1025, %1017, %1009, %1001, %993, %985, %977, %969, %958, %950, %942, %934, %926, %916, %906, %896, %886, %876, %866, %856, %846, %836, %826, %816, %806, %796, %786, %778, %770, %762, %754, %746, %738, %730, %722, %714, %706, %698, %697, %664, %646, %628, %620, %612, %604, %596, %588, %580, %572, %564, %556, %548, %540, %532, %524, %516, %508, %500, %492, %491, %464, %453, %445, %437, %428, %420, %412, %404, %396, %388, %380, %372, %364, %356, %348, %340, %332, %324, %316, %308, %302, %294, %286, %278, %270, %262, %254, %253, %223, %193, %148, %142, %136, %130, %122, %116, %110, %104, %100, %94, %88, %82, %76, %54, %48, %42, %35, %29, %23, %17
  %1038 = load i32, i32* %6, align 4
  ret i32 %1038
}

declare dso_local %struct.s5p_mfc_ctx* @ctrl_to_ctx(%struct.v4l2_ctrl*) #1

declare dso_local i32 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @h264_level(i32) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @mpeg4_level(i32) #1

declare dso_local i32 @vui_sar_idc(i32) #1

declare dso_local i32 @__enc_update_hevc_qp_ctrls_range(%struct.s5p_mfc_ctx*, i32, i32) #1

declare dso_local i32 @hevc_level(i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
