; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_init_encode_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_init_encode_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i64, i32, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i32 }

@S5P_MFC_CODEC_H264_ENC = common dso_local global i64 0, align 8
@S5P_MFC_CODEC_MPEG4_ENC = common dso_local global i64 0, align 8
@S5P_MFC_CODEC_H263_ENC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Unknown codec for encoding (%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@S5P_FIMV_CH_SEQ_HEADER = common dso_local global i32 0, align 4
@S5P_FIMV_SI_CH0_INST_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_init_encode_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_init_encode_v5(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  %5 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %5, i32 0, i32 2
  %7 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  store %struct.s5p_mfc_dev* %7, %struct.s5p_mfc_dev** %4, align 8
  %8 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @S5P_MFC_CODEC_H264_ENC, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %15 = call i32 @s5p_mfc_set_enc_params_h264(%struct.s5p_mfc_ctx* %14)
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @S5P_MFC_CODEC_MPEG4_ENC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %24 = call i32 @s5p_mfc_set_enc_params_mpeg4(%struct.s5p_mfc_ctx* %23)
  br label %42

25:                                               ; preds = %16
  %26 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @S5P_MFC_CODEC_H263_ENC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %33 = call i32 @s5p_mfc_set_enc_params_h263(%struct.s5p_mfc_ctx* %32)
  br label %41

34:                                               ; preds = %25
  %35 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @mfc_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %56

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %22
  br label %43

43:                                               ; preds = %42, %13
  %44 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %45 = call i32 @s5p_mfc_set_shared_buffer(%struct.s5p_mfc_ctx* %44)
  %46 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %47 = load i32, i32* @S5P_FIMV_CH_SEQ_HEADER, align 4
  %48 = shl i32 %47, 16
  %49 = and i32 %48, 458752
  %50 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %49, %52
  %54 = load i32, i32* @S5P_FIMV_SI_CH0_INST_ID, align 4
  %55 = call i32 @mfc_write(%struct.s5p_mfc_dev* %46, i32 %53, i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %43, %34
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @s5p_mfc_set_enc_params_h264(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_set_enc_params_mpeg4(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_set_enc_params_h263(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @mfc_err(i8*, i64) #1

declare dso_local i32 @s5p_mfc_set_shared_buffer(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
