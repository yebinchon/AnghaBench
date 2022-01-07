; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_sru.c_vsp1_sru_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_sru.c_vsp1_sru_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_sru = type { i32, %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.vsp1_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sru_entity_ops = common dso_local global i32 0, align 4
@VSP1_ENTITY_SRU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"sru\00", align 1
@sru_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_SCALER = common dso_local global i32 0, align 4
@sru_intensity_control = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"sru: failed to initialize controls\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vsp1_sru* @vsp1_sru_create(%struct.vsp1_device* %0) #0 {
  %2 = alloca %struct.vsp1_sru*, align 8
  %3 = alloca %struct.vsp1_device*, align 8
  %4 = alloca %struct.vsp1_sru*, align 8
  %5 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %3, align 8
  %6 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %7 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.vsp1_sru* @devm_kzalloc(i32 %8, i32 40, i32 %9)
  store %struct.vsp1_sru* %10, %struct.vsp1_sru** %4, align 8
  %11 = load %struct.vsp1_sru*, %struct.vsp1_sru** %4, align 8
  %12 = icmp eq %struct.vsp1_sru* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.vsp1_sru* @ERR_PTR(i32 %15)
  store %struct.vsp1_sru* %16, %struct.vsp1_sru** %2, align 8
  br label %71

17:                                               ; preds = %1
  %18 = load %struct.vsp1_sru*, %struct.vsp1_sru** %4, align 8
  %19 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i32* @sru_entity_ops, i32** %20, align 8
  %21 = load i32, i32* @VSP1_ENTITY_SRU, align 4
  %22 = load %struct.vsp1_sru*, %struct.vsp1_sru** %4, align 8
  %23 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  %25 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %26 = load %struct.vsp1_sru*, %struct.vsp1_sru** %4, align 8
  %27 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %26, i32 0, i32 1
  %28 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_SCALER, align 4
  %29 = call i32 @vsp1_entity_init(%struct.vsp1_device* %25, %struct.TYPE_7__* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 2, i32* @sru_ops, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.vsp1_sru* @ERR_PTR(i32 %33)
  store %struct.vsp1_sru* %34, %struct.vsp1_sru** %2, align 8
  br label %71

35:                                               ; preds = %17
  %36 = load %struct.vsp1_sru*, %struct.vsp1_sru** %4, align 8
  %37 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %36, i32 0, i32 2
  %38 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__* %37, i32 1)
  %39 = load %struct.vsp1_sru*, %struct.vsp1_sru** %4, align 8
  %40 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %39, i32 0, i32 2
  %41 = call i32 @v4l2_ctrl_new_custom(%struct.TYPE_8__* %40, i32* @sru_intensity_control, i32* null)
  %42 = load %struct.vsp1_sru*, %struct.vsp1_sru** %4, align 8
  %43 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.vsp1_sru*, %struct.vsp1_sru** %4, align 8
  %45 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %44, i32 0, i32 2
  %46 = load %struct.vsp1_sru*, %struct.vsp1_sru** %4, align 8
  %47 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %49, align 8
  %50 = load %struct.vsp1_sru*, %struct.vsp1_sru** %4, align 8
  %51 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %35
  %56 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %57 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.vsp1_sru*, %struct.vsp1_sru** %4, align 8
  %61 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %5, align 4
  %64 = load %struct.vsp1_sru*, %struct.vsp1_sru** %4, align 8
  %65 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %64, i32 0, i32 1
  %66 = call i32 @vsp1_entity_destroy(%struct.TYPE_7__* %65)
  %67 = load i32, i32* %5, align 4
  %68 = call %struct.vsp1_sru* @ERR_PTR(i32 %67)
  store %struct.vsp1_sru* %68, %struct.vsp1_sru** %2, align 8
  br label %71

69:                                               ; preds = %35
  %70 = load %struct.vsp1_sru*, %struct.vsp1_sru** %4, align 8
  store %struct.vsp1_sru* %70, %struct.vsp1_sru** %2, align 8
  br label %71

71:                                               ; preds = %69, %55, %32, %13
  %72 = load %struct.vsp1_sru*, %struct.vsp1_sru** %2, align 8
  ret %struct.vsp1_sru* %72
}

declare dso_local %struct.vsp1_sru* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.vsp1_sru* @ERR_PTR(i32) #1

declare dso_local i32 @vsp1_entity_init(%struct.vsp1_device*, %struct.TYPE_7__*, i8*, i32, i32*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @vsp1_entity_destroy(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
