; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_init_decode_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_init_decode_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i64, i32, i32, i32, i32, i32, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i32 }

@S5P_MFC_CODEC_MPEG4_DEC = common dso_local global i64 0, align 8
@S5P_FIMV_ENC_LF_CTRL = common dso_local global i32 0, align 4
@S5P_FIMV_SLICE_INT_MASK = common dso_local global i32 0, align 4
@S5P_FIMV_SLICE_INT_SHIFT = common dso_local global i32 0, align 4
@S5P_FIMV_DDELAY_ENA_SHIFT = common dso_local global i32 0, align 4
@S5P_FIMV_DDELAY_VAL_MASK = common dso_local global i32 0, align 4
@S5P_FIMV_DDELAY_VAL_SHIFT = common dso_local global i32 0, align 4
@S5P_FIMV_SI_CH0_DPB_CONF_CTRL = common dso_local global i32 0, align 4
@S5P_FIMV_CH_SEQ_HEADER = common dso_local global i32 0, align 4
@S5P_FIMV_CH_MASK = common dso_local global i32 0, align 4
@S5P_FIMV_CH_SHIFT = common dso_local global i32 0, align 4
@S5P_FIMV_SI_CH0_INST_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_init_decode_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_init_decode_v5(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %4 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %4, i32 0, i32 6
  %6 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  store %struct.s5p_mfc_dev* %6, %struct.s5p_mfc_dev** %3, align 8
  %7 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %8 = call i32 @s5p_mfc_set_shared_buffer(%struct.s5p_mfc_ctx* %7)
  %9 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @S5P_MFC_CODEC_MPEG4_DEC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %16 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @S5P_FIMV_ENC_LF_CTRL, align 4
  %20 = call i32 @mfc_write(%struct.s5p_mfc_dev* %15, i32 %18, i32 %19)
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %23 = load i32, i32* @S5P_FIMV_ENC_LF_CTRL, align 4
  %24 = call i32 @mfc_write(%struct.s5p_mfc_dev* %22, i32 0, i32 %23)
  br label %25

25:                                               ; preds = %21, %14
  %26 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %27 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S5P_FIMV_SLICE_INT_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @S5P_FIMV_SLICE_INT_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @S5P_FIMV_DDELAY_ENA_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %33, %38
  %40 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @S5P_FIMV_DDELAY_VAL_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @S5P_FIMV_DDELAY_VAL_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %39, %46
  %48 = load i32, i32* @S5P_FIMV_SI_CH0_DPB_CONF_CTRL, align 4
  %49 = call i32 @mfc_write(%struct.s5p_mfc_dev* %26, i32 %47, i32 %48)
  %50 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %51 = load i32, i32* @S5P_FIMV_CH_SEQ_HEADER, align 4
  %52 = load i32, i32* @S5P_FIMV_CH_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @S5P_FIMV_CH_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %57 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %55, %58
  %60 = load i32, i32* @S5P_FIMV_SI_CH0_INST_ID, align 4
  %61 = call i32 @mfc_write(%struct.s5p_mfc_dev* %50, i32 %59, i32 %60)
  ret i32 0
}

declare dso_local i32 @s5p_mfc_set_shared_buffer(%struct.s5p_mfc_ctx*) #1

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
