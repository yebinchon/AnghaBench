; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_enc_params_mpeg4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_enc_params_mpeg4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { %struct.s5p_mfc_enc_params, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_enc_params = type { i32, i32, i32, i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.s5p_mfc_mpeg4_enc_params }
%struct.s5p_mfc_mpeg4_enc_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s5p_mfc_dev = type { i32 }

@S5P_FIMV_ENC_PIC_TYPE_CTRL = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_PROFILE = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_MPEG4_QUART_PXL = common dso_local global i32 0, align 4
@P_B_FRAME_QP = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_RC_FRAME_RATE = common dso_local global i32 0, align 4
@RC_VOP_TIMING = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_RC_CONFIG = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_RC_QBOUND = common dso_local global i32 0, align 4
@EXT_ENC_CONTROL = common dso_local global i32 0, align 4
@V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_set_enc_params_mpeg4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_enc_params_mpeg4(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_enc_params*, align 8
  %5 = alloca %struct.s5p_mfc_mpeg4_enc_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %9 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %9, i32 0, i32 1
  %11 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %10, align 8
  store %struct.s5p_mfc_dev* %11, %struct.s5p_mfc_dev** %3, align 8
  %12 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %12, i32 0, i32 0
  store %struct.s5p_mfc_enc_params* %13, %struct.s5p_mfc_enc_params** %4, align 8
  %14 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.s5p_mfc_mpeg4_enc_params* %16, %struct.s5p_mfc_mpeg4_enc_params** %5, align 8
  %17 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %18 = call i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx* %17)
  %19 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %20 = load i32, i32* @S5P_FIMV_ENC_PIC_TYPE_CTRL, align 4
  %21 = call i32 @mfc_read(%struct.s5p_mfc_dev* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, -196609
  store i32 %23, i32* %6, align 4
  %24 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %25 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %26, 16
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @S5P_FIMV_ENC_PIC_TYPE_CTRL, align 4
  %33 = call i32 @mfc_write(%struct.s5p_mfc_dev* %30, i32 %31, i32 %32)
  %34 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %35 = load i32, i32* @S5P_FIMV_ENC_PROFILE, align 4
  %36 = call i32 @mfc_read(%struct.s5p_mfc_dev* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, -65281
  store i32 %38, i32* %6, align 4
  %39 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %5, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, -64
  store i32 %46, i32* %6, align 4
  %47 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %5, align 8
  %48 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @S5P_FIMV_ENC_PROFILE, align 4
  %55 = call i32 @mfc_write(%struct.s5p_mfc_dev* %52, i32 %53, i32 %54)
  %56 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %57 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %5, align 8
  %58 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @S5P_FIMV_ENC_MPEG4_QUART_PXL, align 4
  %61 = call i32 @mfc_write(%struct.s5p_mfc_dev* %56, i32 %59, i32 %60)
  %62 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %63 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %89, label %66

66:                                               ; preds = %1
  %67 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %68 = load i32, i32* @P_B_FRAME_QP, align 4
  %69 = call i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, -4096
  store i32 %71, i32* %7, align 4
  %72 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %5, align 8
  %73 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 63
  %76 = shl i32 %75, 6
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %5, align 8
  %80 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 63
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @P_B_FRAME_QP, align 4
  %88 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %66, %1
  %90 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %91 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %139

94:                                               ; preds = %89
  %95 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %96 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %138

99:                                               ; preds = %94
  %100 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %101 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 %102, 1000
  %104 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %105 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %103, %106
  store i32 %107, i32* %8, align 4
  %108 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @S5P_FIMV_ENC_RC_FRAME_RATE, align 4
  %111 = call i32 @mfc_write(%struct.s5p_mfc_dev* %108, i32 %109, i32 %110)
  %112 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %113 = load i32, i32* @RC_VOP_TIMING, align 4
  %114 = call i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx* %112, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = and i32 %115, 0
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = zext i32 %117 to i64
  %119 = or i64 %118, 2147483648
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %7, align 4
  %121 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %122 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, 32767
  %125 = shl i32 %124, 16
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %129 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 65535
  %132 = load i32, i32* %7, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %7, align 4
  %134 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @RC_VOP_TIMING, align 4
  %137 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %99, %94
  br label %143

139:                                              ; preds = %89
  %140 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %141 = load i32, i32* @S5P_FIMV_ENC_RC_FRAME_RATE, align 4
  %142 = call i32 @mfc_write(%struct.s5p_mfc_dev* %140, i32 0, i32 %141)
  br label %143

143:                                              ; preds = %139, %138
  %144 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %145 = load i32, i32* @S5P_FIMV_ENC_RC_CONFIG, align 4
  %146 = call i32 @mfc_read(%struct.s5p_mfc_dev* %144, i32 %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = and i32 %147, -64
  store i32 %148, i32* %6, align 4
  %149 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %5, align 8
  %150 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %6, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %6, align 4
  %154 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @S5P_FIMV_ENC_RC_CONFIG, align 4
  %157 = call i32 @mfc_write(%struct.s5p_mfc_dev* %154, i32 %155, i32 %156)
  %158 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %159 = load i32, i32* @S5P_FIMV_ENC_RC_QBOUND, align 4
  %160 = call i32 @mfc_read(%struct.s5p_mfc_dev* %158, i32 %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = and i32 %161, -16129
  store i32 %162, i32* %6, align 4
  %163 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %5, align 8
  %164 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 8
  %167 = load i32, i32* %6, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = and i32 %169, -64
  store i32 %170, i32* %6, align 4
  %171 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %5, align 8
  %172 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %6, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %6, align 4
  %176 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @S5P_FIMV_ENC_RC_QBOUND, align 4
  %179 = call i32 @mfc_write(%struct.s5p_mfc_dev* %176, i32 %177, i32 %178)
  %180 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %181 = load i32, i32* @EXT_ENC_CONTROL, align 4
  %182 = call i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx* %180, i32 %181)
  store i32 %182, i32* %7, align 4
  %183 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %184 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %197

188:                                              ; preds = %143
  %189 = load i32, i32* %7, align 4
  %190 = and i32 %189, 65535
  store i32 %190, i32* %7, align 4
  %191 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %192 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = shl i32 %193, 16
  %195 = load i32, i32* %7, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %188, %143
  %198 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @EXT_ENC_CONTROL, align 4
  %201 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %198, i32 %199, i32 %200)
  ret i32 0
}

declare dso_local i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @mfc_read(%struct.s5p_mfc_dev*, i32) #1

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx*, i32) #1

declare dso_local i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
