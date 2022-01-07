; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_clu.c_vsp1_clu_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_clu.c_vsp1_clu_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_clu = type { %struct.TYPE_9__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.vsp1_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clu_entity_ops = common dso_local global i32 0, align 4
@VSP1_ENTITY_CLU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"clu\00", align 1
@clu_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_LUT = common dso_local global i32 0, align 4
@CLU_SIZE = common dso_local global i64 0, align 8
@clu_table_control = common dso_local global i32 0, align 4
@clu_mode_control = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"clu: failed to initialize controls\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vsp1_clu* @vsp1_clu_create(%struct.vsp1_device* %0) #0 {
  %2 = alloca %struct.vsp1_clu*, align 8
  %3 = alloca %struct.vsp1_device*, align 8
  %4 = alloca %struct.vsp1_clu*, align 8
  %5 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %3, align 8
  %6 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %7 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.vsp1_clu* @devm_kzalloc(i32 %8, i32 40, i32 %9)
  store %struct.vsp1_clu* %10, %struct.vsp1_clu** %4, align 8
  %11 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %12 = icmp eq %struct.vsp1_clu* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.vsp1_clu* @ERR_PTR(i32 %15)
  store %struct.vsp1_clu* %16, %struct.vsp1_clu** %2, align 8
  br label %96

17:                                               ; preds = %1
  %18 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %19 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %18, i32 0, i32 3
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %22 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  store i32* @clu_entity_ops, i32** %23, align 8
  %24 = load i32, i32* @VSP1_ENTITY_CLU, align 4
  %25 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %26 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %29 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %30 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %29, i32 0, i32 1
  %31 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_LUT, align 4
  %32 = call i32 @vsp1_entity_init(%struct.vsp1_device* %28, %struct.TYPE_8__* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 2, i32* @clu_ops, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.vsp1_clu* @ERR_PTR(i32 %36)
  store %struct.vsp1_clu* %37, %struct.vsp1_clu** %2, align 8
  br label %96

38:                                               ; preds = %17
  %39 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %40 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* @CLU_SIZE, align 8
  %44 = add nsw i64 %43, 1
  %45 = call i32 @vsp1_dl_body_pool_create(i32 %42, i32 3, i64 %44, i32 0)
  %46 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %47 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %49 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %38
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.vsp1_clu* @ERR_PTR(i32 %54)
  store %struct.vsp1_clu* %55, %struct.vsp1_clu** %2, align 8
  br label %96

56:                                               ; preds = %38
  %57 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %58 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %57, i32 0, i32 0
  %59 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__* %58, i32 2)
  %60 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %61 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %60, i32 0, i32 0
  %62 = call i32 @v4l2_ctrl_new_custom(%struct.TYPE_9__* %61, i32* @clu_table_control, i32* null)
  %63 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %64 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %63, i32 0, i32 0
  %65 = call i32 @v4l2_ctrl_new_custom(%struct.TYPE_9__* %64, i32* @clu_mode_control, i32* null)
  %66 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %67 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %66, i32 0, i32 0
  %68 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %69 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %71, align 8
  %72 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %73 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %56
  %78 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %79 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %83 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %5, align 4
  %86 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %87 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %86, i32 0, i32 1
  %88 = call i32 @vsp1_entity_destroy(%struct.TYPE_8__* %87)
  %89 = load i32, i32* %5, align 4
  %90 = call %struct.vsp1_clu* @ERR_PTR(i32 %89)
  store %struct.vsp1_clu* %90, %struct.vsp1_clu** %2, align 8
  br label %96

91:                                               ; preds = %56
  %92 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  %93 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %92, i32 0, i32 0
  %94 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_9__* %93)
  %95 = load %struct.vsp1_clu*, %struct.vsp1_clu** %4, align 8
  store %struct.vsp1_clu* %95, %struct.vsp1_clu** %2, align 8
  br label %96

96:                                               ; preds = %91, %77, %52, %35, %13
  %97 = load %struct.vsp1_clu*, %struct.vsp1_clu** %2, align 8
  ret %struct.vsp1_clu* %97
}

declare dso_local %struct.vsp1_clu* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.vsp1_clu* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @vsp1_entity_init(%struct.vsp1_device*, %struct.TYPE_8__*, i8*, i32, i32*, i32) #1

declare dso_local i32 @vsp1_dl_body_pool_create(i32, i32, i64, i32) #1

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
