; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_enc_params_h263.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_enc_params_h263.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { %struct.s5p_mfc_enc_params, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_enc_params = type { i32, i32, i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.s5p_mfc_mpeg4_enc_params }
%struct.s5p_mfc_mpeg4_enc_params = type { i32, i32, i32, i32 }
%struct.s5p_mfc_dev = type { i32 }

@P_B_FRAME_QP = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_RC_FRAME_RATE = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_RC_CONFIG = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_RC_QBOUND = common dso_local global i32 0, align 4
@EXT_ENC_CONTROL = common dso_local global i32 0, align 4
@V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_set_enc_params_h263 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_enc_params_h263(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_enc_params*, align 8
  %5 = alloca %struct.s5p_mfc_mpeg4_enc_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %8 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %8, i32 0, i32 1
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %9, align 8
  store %struct.s5p_mfc_dev* %10, %struct.s5p_mfc_dev** %3, align 8
  %11 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %11, i32 0, i32 0
  store %struct.s5p_mfc_enc_params* %12, %struct.s5p_mfc_enc_params** %4, align 8
  %13 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %14 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.s5p_mfc_mpeg4_enc_params* %15, %struct.s5p_mfc_mpeg4_enc_params** %5, align 8
  %16 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %17 = call i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx* %16)
  %18 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %19 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %1
  %23 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %24 = load i32, i32* @P_B_FRAME_QP, align 4
  %25 = call i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, -4096
  store i32 %27, i32* %7, align 4
  %28 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %5, align 8
  %29 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 63
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @P_B_FRAME_QP, align 4
  %37 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %22, %1
  %39 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %45 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %50 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %51 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 1000
  %54 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %55 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %53, %56
  %58 = load i32, i32* @S5P_FIMV_ENC_RC_FRAME_RATE, align 4
  %59 = call i32 @mfc_write(%struct.s5p_mfc_dev* %49, i32 %57, i32 %58)
  br label %64

60:                                               ; preds = %43, %38
  %61 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %62 = load i32, i32* @S5P_FIMV_ENC_RC_FRAME_RATE, align 4
  %63 = call i32 @mfc_write(%struct.s5p_mfc_dev* %61, i32 0, i32 %62)
  br label %64

64:                                               ; preds = %60, %48
  %65 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %66 = load i32, i32* @S5P_FIMV_ENC_RC_CONFIG, align 4
  %67 = call i32 @mfc_read(%struct.s5p_mfc_dev* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, -64
  store i32 %69, i32* %6, align 4
  %70 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %5, align 8
  %71 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @S5P_FIMV_ENC_RC_CONFIG, align 4
  %78 = call i32 @mfc_write(%struct.s5p_mfc_dev* %75, i32 %76, i32 %77)
  %79 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %80 = load i32, i32* @S5P_FIMV_ENC_RC_QBOUND, align 4
  %81 = call i32 @mfc_read(%struct.s5p_mfc_dev* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, -16129
  store i32 %83, i32* %6, align 4
  %84 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %5, align 8
  %85 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, -64
  store i32 %91, i32* %6, align 4
  %92 = load %struct.s5p_mfc_mpeg4_enc_params*, %struct.s5p_mfc_mpeg4_enc_params** %5, align 8
  %93 = getelementptr inbounds %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_mpeg4_enc_params* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @S5P_FIMV_ENC_RC_QBOUND, align 4
  %100 = call i32 @mfc_write(%struct.s5p_mfc_dev* %97, i32 %98, i32 %99)
  %101 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %102 = load i32, i32* @EXT_ENC_CONTROL, align 4
  %103 = call i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx* %101, i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %105 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @V4L2_MPEG_MFC51_VIDEO_FRAME_SKIP_MODE_BUF_LIMIT, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %64
  %110 = load i32, i32* %7, align 4
  %111 = and i32 %110, 65535
  store i32 %111, i32* %7, align 4
  %112 = load %struct.s5p_mfc_enc_params*, %struct.s5p_mfc_enc_params** %4, align 8
  %113 = getelementptr inbounds %struct.s5p_mfc_enc_params, %struct.s5p_mfc_enc_params* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = shl i32 %114, 16
  %116 = load i32, i32* %7, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %109, %64
  %119 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @EXT_ENC_CONTROL, align 4
  %122 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %119, i32 %120, i32 %121)
  ret i32 0
}

declare dso_local i32 @s5p_mfc_set_enc_params(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_read_info_v5(%struct.s5p_mfc_ctx*, i32) #1

declare dso_local i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx*, i32, i32) #1

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i32 @mfc_read(%struct.s5p_mfc_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
