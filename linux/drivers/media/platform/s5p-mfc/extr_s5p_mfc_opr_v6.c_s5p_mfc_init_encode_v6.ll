; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_init_encode_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_init_encode_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i64, i32, i32, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i32, %struct.s5p_mfc_regs* }
%struct.s5p_mfc_regs = type { i32, i32, i32 }

@S5P_MFC_CODEC_H264_ENC = common dso_local global i64 0, align 8
@S5P_MFC_CODEC_MPEG4_ENC = common dso_local global i64 0, align 8
@S5P_MFC_CODEC_H263_ENC = common dso_local global i64 0, align 8
@S5P_MFC_CODEC_VP8_ENC = common dso_local global i64 0, align 8
@S5P_FIMV_CODEC_HEVC_ENC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Unknown codec for encoding (%x).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@cmd_host2risc = common dso_local global i32 0, align 4
@S5P_FIMV_CH_SEQ_HEADER_V6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_init_encode_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_init_encode_v6(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  %5 = alloca %struct.s5p_mfc_regs*, align 8
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  %6 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %6, i32 0, i32 3
  %8 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  store %struct.s5p_mfc_dev* %8, %struct.s5p_mfc_dev** %4, align 8
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %9, i32 0, i32 1
  %11 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %10, align 8
  store %struct.s5p_mfc_regs* %11, %struct.s5p_mfc_regs** %5, align 8
  %12 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @S5P_MFC_CODEC_H264_ENC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %19 = call i32 @s5p_mfc_set_enc_params_h264(%struct.s5p_mfc_ctx* %18)
  br label %67

20:                                               ; preds = %1
  %21 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @S5P_MFC_CODEC_MPEG4_ENC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %28 = call i32 @s5p_mfc_set_enc_params_mpeg4(%struct.s5p_mfc_ctx* %27)
  br label %66

29:                                               ; preds = %20
  %30 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @S5P_MFC_CODEC_H263_ENC, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %37 = call i32 @s5p_mfc_set_enc_params_h263(%struct.s5p_mfc_ctx* %36)
  br label %65

38:                                               ; preds = %29
  %39 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @S5P_MFC_CODEC_VP8_ENC, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %46 = call i32 @s5p_mfc_set_enc_params_vp8(%struct.s5p_mfc_ctx* %45)
  br label %64

47:                                               ; preds = %38
  %48 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @S5P_FIMV_CODEC_HEVC_ENC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %55 = call i32 @s5p_mfc_set_enc_params_hevc(%struct.s5p_mfc_ctx* %54)
  br label %63

56:                                               ; preds = %47
  %57 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @mfc_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %101

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %35
  br label %66

66:                                               ; preds = %65, %26
  br label %67

67:                                               ; preds = %66, %17
  %68 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %69 = call i64 @IS_MFCV7_PLUS(%struct.s5p_mfc_dev* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %5, align 8
  %76 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @writel(i32 %74, i32 %77)
  %79 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %5, align 8
  %83 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @writel(i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %71, %67
  %87 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %88 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %5, align 8
  %91 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @writel(i32 %89, i32 %92)
  %94 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %95 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @cmd_host2risc, align 4
  %98 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %99 = load i32, i32* @S5P_FIMV_CH_SEQ_HEADER_V6, align 4
  %100 = call i32 @s5p_mfc_hw_call(i32 %96, i32 %97, %struct.s5p_mfc_dev* %98, i32 %99, i32* null)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %86, %56
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @s5p_mfc_set_enc_params_h264(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_set_enc_params_mpeg4(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_set_enc_params_h263(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_set_enc_params_vp8(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_set_enc_params_hevc(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @mfc_err(i8*, i64) #1

declare dso_local i64 @IS_MFCV7_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
