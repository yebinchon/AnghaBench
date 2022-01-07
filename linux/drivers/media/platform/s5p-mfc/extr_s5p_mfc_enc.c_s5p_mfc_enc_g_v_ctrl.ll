; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_enc_g_v_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_enc_g_v_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.s5p_mfc_ctx = type { i32, i32, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i32 }

@MFCINST_HEAD_PARSED = common dso_local global i32 0, align 4
@MFCINST_ABORT = common dso_local global i32 0, align 4
@MFCINST_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Encoding not initialised\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_SEQ_DONE_RET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @s5p_mfc_enc_g_v_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_enc_g_v_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.s5p_mfc_ctx*, align 8
  %5 = alloca %struct.s5p_mfc_dev*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %7 = call %struct.s5p_mfc_ctx* @ctrl_to_ctx(%struct.v4l2_ctrl* %6)
  store %struct.s5p_mfc_ctx* %7, %struct.s5p_mfc_ctx** %4, align 8
  %8 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %8, i32 0, i32 2
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %9, align 8
  store %struct.s5p_mfc_dev* %10, %struct.s5p_mfc_dev** %5, align 8
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %73 [
    i32 128, label %14
  ]

14:                                               ; preds = %1
  %15 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MFCINST_HEAD_PARSED, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MFCINST_ABORT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %73

32:                                               ; preds = %20, %14
  %33 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MFCINST_INIT, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %39, i32 0, i32 0
  %41 = call i32 @v4l2_err(i32* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %74

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %47 = load i32, i32* @S5P_MFC_R2H_CMD_SEQ_DONE_RET, align 4
  %48 = call i32 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_ctx* %46, i32 %47, i32 0)
  %49 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MFCINST_HEAD_PARSED, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %45
  %55 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MFCINST_ABORT, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %65 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %72

66:                                               ; preds = %54, %45
  %67 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %5, align 8
  %68 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %67, i32 0, i32 0
  %69 = call i32 @v4l2_err(i32* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %74

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %1, %72, %26
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %66, %38
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.s5p_mfc_ctx* @ctrl_to_ctx(%struct.v4l2_ctrl*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
