; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_vsp1_wpf_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_vsp1_wpf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_rwpf = type { %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.vsp1_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WPF_GEN2_MAX_WIDTH = common dso_local global i32 0, align 4
@WPF_GEN2_MAX_HEIGHT = common dso_local global i32 0, align 4
@WPF_GEN3_MAX_WIDTH = common dso_local global i32 0, align 4
@WPF_GEN3_MAX_HEIGHT = common dso_local global i32 0, align 4
@wpf_entity_ops = common dso_local global i32 0, align 4
@VSP1_ENTITY_WPF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"wpf.%u\00", align 1
@wpf_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"wpf%u: failed to initialize controls\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vsp1_rwpf* @vsp1_wpf_create(%struct.vsp1_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vsp1_rwpf*, align 8
  %4 = alloca %struct.vsp1_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsp1_rwpf*, align 8
  %7 = alloca [6 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %10 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.vsp1_rwpf* @devm_kzalloc(i32 %11, i32 32, i32 %12)
  store %struct.vsp1_rwpf* %13, %struct.vsp1_rwpf** %6, align 8
  %14 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %15 = icmp eq %struct.vsp1_rwpf* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.vsp1_rwpf* @ERR_PTR(i32 %18)
  store %struct.vsp1_rwpf* %19, %struct.vsp1_rwpf** %3, align 8
  br label %102

20:                                               ; preds = %2
  %21 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %22 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* @WPF_GEN2_MAX_WIDTH, align 4
  %29 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %30 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @WPF_GEN2_MAX_HEIGHT, align 4
  %32 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %33 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  br label %41

34:                                               ; preds = %20
  %35 = load i32, i32* @WPF_GEN3_MAX_WIDTH, align 4
  %36 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %37 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @WPF_GEN3_MAX_HEIGHT, align 4
  %39 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %40 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %43 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i32* @wpf_entity_ops, i32** %44, align 8
  %45 = load i32, i32* @VSP1_ENTITY_WPF, align 4
  %46 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %47 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %51 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %57 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %58 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %57, i32 0, i32 0
  %59 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %60 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER, align 4
  %61 = call i32 @vsp1_entity_init(%struct.vsp1_device* %56, %struct.TYPE_5__* %58, i8* %59, i32 2, i32* @wpf_ops, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %41
  %65 = load i32, i32* %8, align 4
  %66 = call %struct.vsp1_rwpf* @ERR_PTR(i32 %65)
  store %struct.vsp1_rwpf* %66, %struct.vsp1_rwpf** %3, align 8
  br label %102

67:                                               ; preds = %41
  %68 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @vsp1_dlm_create(%struct.vsp1_device* %68, i32 %69, i32 64)
  %71 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %72 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %74 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %67
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %96

80:                                               ; preds = %67
  %81 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %82 = call i32 @wpf_init_controls(%struct.vsp1_rwpf* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %87 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %96

91:                                               ; preds = %80
  %92 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %93 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %92, i32 0, i32 1
  %94 = call i32 @v4l2_ctrl_handler_setup(i32* %93)
  %95 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  store %struct.vsp1_rwpf* %95, %struct.vsp1_rwpf** %3, align 8
  br label %102

96:                                               ; preds = %85, %77
  %97 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %98 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %97, i32 0, i32 0
  %99 = call i32 @vsp1_entity_destroy(%struct.TYPE_5__* %98)
  %100 = load i32, i32* %8, align 4
  %101 = call %struct.vsp1_rwpf* @ERR_PTR(i32 %100)
  store %struct.vsp1_rwpf* %101, %struct.vsp1_rwpf** %3, align 8
  br label %102

102:                                              ; preds = %96, %91, %64, %16
  %103 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  ret %struct.vsp1_rwpf* %103
}

declare dso_local %struct.vsp1_rwpf* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.vsp1_rwpf* @ERR_PTR(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @vsp1_entity_init(%struct.vsp1_device*, %struct.TYPE_5__*, i8*, i32, i32*, i32) #1

declare dso_local i32 @vsp1_dlm_create(%struct.vsp1_device*, i32, i32) #1

declare dso_local i32 @wpf_init_controls(%struct.vsp1_rwpf*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @vsp1_entity_destroy(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
