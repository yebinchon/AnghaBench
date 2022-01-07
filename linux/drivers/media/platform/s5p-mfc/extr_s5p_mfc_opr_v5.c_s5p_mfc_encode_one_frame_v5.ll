; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_encode_one_frame_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_encode_one_frame_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i64, i32, %struct.TYPE_2__*, %struct.s5p_mfc_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.s5p_mfc_dev = type { i32 }

@V4L2_PIX_FMT_NV12M = common dso_local global i64 0, align 8
@S5P_FIMV_ENC_MAP_FOR_CUR = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12MT = common dso_local global i64 0, align 8
@MFCINST_FINISHING = common dso_local global i64 0, align 8
@S5P_FIMV_CH_LAST_FRAME = common dso_local global i32 0, align 4
@S5P_FIMV_CH_FRAME_START = common dso_local global i32 0, align 4
@S5P_FIMV_CH_MASK = common dso_local global i32 0, align 4
@S5P_FIMV_CH_SHIFT = common dso_local global i32 0, align 4
@S5P_FIMV_SI_CH0_INST_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_encode_one_frame_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_encode_one_frame_v5(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %5 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %5, i32 0, i32 3
  %7 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %6, align 8
  store %struct.s5p_mfc_dev* %7, %struct.s5p_mfc_dev** %3, align 8
  %8 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @V4L2_PIX_FMT_NV12M, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %17 = load i32, i32* @S5P_FIMV_ENC_MAP_FOR_CUR, align 4
  %18 = call i32 @mfc_write(%struct.s5p_mfc_dev* %16, i32 0, i32 %17)
  br label %32

19:                                               ; preds = %1
  %20 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_PIX_FMT_NV12MT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %29 = load i32, i32* @S5P_FIMV_ENC_MAP_FOR_CUR, align 4
  %30 = call i32 @mfc_write(%struct.s5p_mfc_dev* %28, i32 3, i32 %29)
  br label %31

31:                                               ; preds = %27, %19
  br label %32

32:                                               ; preds = %31, %15
  %33 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %34 = call i32 @s5p_mfc_set_shared_buffer(%struct.s5p_mfc_ctx* %33)
  %35 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MFCINST_FINISHING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @S5P_FIMV_CH_LAST_FRAME, align 4
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @S5P_FIMV_CH_FRAME_START, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @S5P_FIMV_CH_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @S5P_FIMV_CH_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %50, %53
  %55 = load i32, i32* @S5P_FIMV_SI_CH0_INST_ID, align 4
  %56 = call i32 @mfc_write(%struct.s5p_mfc_dev* %45, i32 %54, i32 %55)
  ret i32 0
}

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i32 @s5p_mfc_set_shared_buffer(%struct.s5p_mfc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
