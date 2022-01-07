; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_open_mfc_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_open_mfc_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i64, i32, i32 }
%struct.s5p_mfc_ctx = type { i64, i32, i32 }

@alloc_instance_buffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed allocating instance buffer\0A\00", align 1
@MFCINST_DECODER = common dso_local global i64 0, align 8
@alloc_dec_temp_buffers = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed allocating temporary buffers\0A\00", align 1
@try_run = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_OPEN_INSTANCE_RET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Error getting instance from hardware\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Got instance number: %d\0A\00", align 1
@release_dec_desc_buffer = common dso_local global i32 0, align 4
@release_instance_buffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5p_mfc_open_mfc_inst(%struct.s5p_mfc_dev* %0, %struct.s5p_mfc_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  %5 = alloca %struct.s5p_mfc_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %4, align 8
  store %struct.s5p_mfc_ctx* %1, %struct.s5p_mfc_ctx** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %8 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @alloc_instance_buffer, align 4
  %11 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %12 = bitcast %struct.s5p_mfc_ctx* %11 to %struct.s5p_mfc_dev*
  %13 = call i32 @s5p_mfc_hw_call(i32 %9, i32 %10, %struct.s5p_mfc_dev* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @mfc_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %85

18:                                               ; preds = %2
  %19 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MFCINST_DECODER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %26 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @alloc_dec_temp_buffers, align 4
  %29 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %30 = bitcast %struct.s5p_mfc_ctx* %29 to %struct.s5p_mfc_dev*
  %31 = call i32 @s5p_mfc_hw_call(i32 %27, i32 %28, %struct.s5p_mfc_dev* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = call i32 @mfc_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %77

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %39 = bitcast %struct.s5p_mfc_ctx* %38 to %struct.s5p_mfc_dev*
  %40 = call i32 @set_work_bit_irqsave(%struct.s5p_mfc_dev* %39)
  %41 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %42 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @try_run, align 4
  %45 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %46 = call i32 @s5p_mfc_hw_call(i32 %43, i32 %44, %struct.s5p_mfc_dev* %45)
  %47 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %48 = bitcast %struct.s5p_mfc_ctx* %47 to %struct.s5p_mfc_dev*
  %49 = load i32, i32* @S5P_MFC_R2H_CMD_OPEN_INSTANCE_RET, align 4
  %50 = call i64 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_dev* %48, i32 %49, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %37
  %53 = call i32 @mfc_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %62

56:                                               ; preds = %37
  %57 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %87

62:                                               ; preds = %52
  %63 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MFCINST_DECODER, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %70 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @release_dec_desc_buffer, align 4
  %73 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %74 = bitcast %struct.s5p_mfc_ctx* %73 to %struct.s5p_mfc_dev*
  %75 = call i32 @s5p_mfc_hw_call(i32 %71, i32 %72, %struct.s5p_mfc_dev* %74)
  br label %76

76:                                               ; preds = %68, %62
  br label %77

77:                                               ; preds = %76, %34
  %78 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %79 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @release_instance_buffer, align 4
  %82 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %83 = bitcast %struct.s5p_mfc_ctx* %82 to %struct.s5p_mfc_dev*
  %84 = call i32 @s5p_mfc_hw_call(i32 %80, i32 %81, %struct.s5p_mfc_dev* %83)
  br label %85

85:                                               ; preds = %77, %16
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %56
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @set_work_bit_irqsave(%struct.s5p_mfc_dev*) #1

declare dso_local i64 @s5p_mfc_wait_for_done_ctx(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i32 @mfc_debug(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
