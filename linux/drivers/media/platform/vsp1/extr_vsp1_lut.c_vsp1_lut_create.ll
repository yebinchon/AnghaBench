; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_lut.c_vsp1_lut_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_lut.c_vsp1_lut_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_lut = type { %struct.TYPE_9__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.vsp1_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lut_entity_ops = common dso_local global i32 0, align 4
@VSP1_ENTITY_LUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lut\00", align 1
@lut_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_LUT = common dso_local global i32 0, align 4
@LUT_SIZE = common dso_local global i32 0, align 4
@lut_table_control = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"lut: failed to initialize controls\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vsp1_lut* @vsp1_lut_create(%struct.vsp1_device* %0) #0 {
  %2 = alloca %struct.vsp1_lut*, align 8
  %3 = alloca %struct.vsp1_device*, align 8
  %4 = alloca %struct.vsp1_lut*, align 8
  %5 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %3, align 8
  %6 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %7 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.vsp1_lut* @devm_kzalloc(i32 %8, i32 40, i32 %9)
  store %struct.vsp1_lut* %10, %struct.vsp1_lut** %4, align 8
  %11 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %12 = icmp eq %struct.vsp1_lut* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.vsp1_lut* @ERR_PTR(i32 %15)
  store %struct.vsp1_lut* %16, %struct.vsp1_lut** %2, align 8
  br label %89

17:                                               ; preds = %1
  %18 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %19 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %18, i32 0, i32 3
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %22 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  store i32* @lut_entity_ops, i32** %23, align 8
  %24 = load i32, i32* @VSP1_ENTITY_LUT, align 4
  %25 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %26 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  %28 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %29 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %30 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %29, i32 0, i32 1
  %31 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_LUT, align 4
  %32 = call i32 @vsp1_entity_init(%struct.vsp1_device* %28, %struct.TYPE_8__* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 2, i32* @lut_ops, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.vsp1_lut* @ERR_PTR(i32 %36)
  store %struct.vsp1_lut* %37, %struct.vsp1_lut** %2, align 8
  br label %89

38:                                               ; preds = %17
  %39 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %40 = load i32, i32* @LUT_SIZE, align 4
  %41 = call i32 @vsp1_dl_body_pool_create(%struct.vsp1_device* %39, i32 3, i32 %40, i32 0)
  %42 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %43 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %45 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.vsp1_lut* @ERR_PTR(i32 %50)
  store %struct.vsp1_lut* %51, %struct.vsp1_lut** %2, align 8
  br label %89

52:                                               ; preds = %38
  %53 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %54 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %53, i32 0, i32 0
  %55 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__* %54, i32 1)
  %56 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %57 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %56, i32 0, i32 0
  %58 = call i32 @v4l2_ctrl_new_custom(%struct.TYPE_9__* %57, i32* @lut_table_control, i32* null)
  %59 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %60 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %59, i32 0, i32 0
  %61 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %62 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %64, align 8
  %65 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %66 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %52
  %71 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %72 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %76 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %5, align 4
  %79 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %80 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %79, i32 0, i32 1
  %81 = call i32 @vsp1_entity_destroy(%struct.TYPE_8__* %80)
  %82 = load i32, i32* %5, align 4
  %83 = call %struct.vsp1_lut* @ERR_PTR(i32 %82)
  store %struct.vsp1_lut* %83, %struct.vsp1_lut** %2, align 8
  br label %89

84:                                               ; preds = %52
  %85 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  %86 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %85, i32 0, i32 0
  %87 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_9__* %86)
  %88 = load %struct.vsp1_lut*, %struct.vsp1_lut** %4, align 8
  store %struct.vsp1_lut* %88, %struct.vsp1_lut** %2, align 8
  br label %89

89:                                               ; preds = %84, %70, %48, %35, %13
  %90 = load %struct.vsp1_lut*, %struct.vsp1_lut** %2, align 8
  ret %struct.vsp1_lut* %90
}

declare dso_local %struct.vsp1_lut* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.vsp1_lut* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @vsp1_entity_init(%struct.vsp1_device*, %struct.TYPE_8__*, i8*, i32, i32*, i32) #1

declare dso_local i32 @vsp1_dl_body_pool_create(%struct.vsp1_device*, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @vsp1_entity_destroy(%struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
