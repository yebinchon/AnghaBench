; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_encode_one_frame_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_encode_one_frame_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i64, i64, i32, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i32, %struct.s5p_mfc_regs* }
%struct.s5p_mfc_regs = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"++\0A\00", align 1
@S5P_MFC_CODEC_H264_ENC = common dso_local global i64 0, align 8
@MFCINST_FINISHING = common dso_local global i64 0, align 8
@S5P_FIMV_CH_FRAME_START_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_CH_LAST_FRAME_V6 = common dso_local global i32 0, align 4
@cmd_host2risc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"--\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_encode_one_frame_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_encode_one_frame_v6(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %6 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %6, i32 0, i32 3
  %8 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  store %struct.s5p_mfc_dev* %8, %struct.s5p_mfc_dev** %3, align 8
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %9, i32 0, i32 1
  %11 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %10, align 8
  store %struct.s5p_mfc_regs* %11, %struct.s5p_mfc_regs** %4, align 8
  %12 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @S5P_MFC_CODEC_H264_ENC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %20 = call i32 @s5p_mfc_h264_set_aso_slice_order_v6(%struct.s5p_mfc_ctx* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %23 = call i32 @s5p_mfc_set_slice_mode(%struct.s5p_mfc_ctx* %22)
  %24 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MFCINST_FINISHING, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @S5P_FIMV_CH_FRAME_START_V6, align 4
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @S5P_FIMV_CH_LAST_FRAME_V6, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.s5p_mfc_regs*, %struct.s5p_mfc_regs** %4, align 8
  %38 = getelementptr inbounds %struct.s5p_mfc_regs, %struct.s5p_mfc_regs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @writel(i32 %36, i32 %39)
  %41 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %42 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @cmd_host2risc, align 4
  %45 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @s5p_mfc_hw_call(i32 %43, i32 %44, %struct.s5p_mfc_dev* %45, i32 %46, i32* null)
  %48 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @mfc_debug(i32, i8*) #1

declare dso_local i32 @s5p_mfc_h264_set_aso_slice_order_v6(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @s5p_mfc_set_slice_mode(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
