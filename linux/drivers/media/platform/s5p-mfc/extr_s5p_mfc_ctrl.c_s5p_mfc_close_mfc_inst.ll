; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_close_mfc_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_close_mfc_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i64, i32, i32, i32 }
%struct.s5p_mfc_ctx = type { i64, i32, i32, i32 }

@MFCINST_RETURN_INST = common dso_local global i32 0, align 4
@try_run = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_CLOSE_INSTANCE_RET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Err returning instance\0A\00", align 1
@release_codec_buffers = common dso_local global i32 0, align 4
@release_instance_buffer = common dso_local global i32 0, align 4
@MFCINST_DECODER = common dso_local global i64 0, align 8
@release_dec_desc_buffer = common dso_local global i32 0, align 4
@MFC_NO_INSTANCE_SET = common dso_local global i32 0, align 4
@MFCINST_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s5p_mfc_close_mfc_inst(%struct.s5p_mfc_dev* %0, %struct.s5p_mfc_ctx* %1) #0 {
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_ctx*, align 8
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %3, align 8
  store %struct.s5p_mfc_ctx* %1, %struct.s5p_mfc_ctx** %4, align 8
  %5 = load i32, i32* @MFCINST_RETURN_INST, align 4
  %6 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  %8 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %9 = bitcast %struct.s5p_mfc_ctx* %8 to %struct.s5p_mfc_dev*
  %10 = call i32 @set_work_bit_irqsave(%struct.s5p_mfc_dev* %9)
  %11 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %12 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @try_run, align 4
  %15 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %16 = call i32 @s5p_mfc_hw_call(i32 %13, i32 %14, %struct.s5p_mfc_dev* %15)
  %17 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %18 = bitcast %struct.s5p_mfc_ctx* %17 to %struct.s5p_mfc_dev*
  %19 = load i32, i32* @S5P_MFC_R2H_CMD_CLOSE_INSTANCE_RET, align 4
  %20 = call i64 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_dev* %18, i32 %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @mfc_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %2
  %25 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %26 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @release_codec_buffers, align 4
  %29 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %30 = bitcast %struct.s5p_mfc_ctx* %29 to %struct.s5p_mfc_dev*
  %31 = call i32 @s5p_mfc_hw_call(i32 %27, i32 %28, %struct.s5p_mfc_dev* %30)
  %32 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %33 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @release_instance_buffer, align 4
  %36 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %37 = bitcast %struct.s5p_mfc_ctx* %36 to %struct.s5p_mfc_dev*
  %38 = call i32 @s5p_mfc_hw_call(i32 %34, i32 %35, %struct.s5p_mfc_dev* %37)
  %39 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MFCINST_DECODER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %24
  %45 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %46 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @release_dec_desc_buffer, align 4
  %49 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %50 = bitcast %struct.s5p_mfc_ctx* %49 to %struct.s5p_mfc_dev*
  %51 = call i32 @s5p_mfc_hw_call(i32 %47, i32 %48, %struct.s5p_mfc_dev* %50)
  br label %52

52:                                               ; preds = %44, %24
  %53 = load i32, i32* @MFC_NO_INSTANCE_SET, align 4
  %54 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @MFCINST_FREE, align 4
  %57 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  ret void
}

declare dso_local i32 @set_work_bit_irqsave(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*) #1

declare dso_local i64 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i32 @mfc_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
