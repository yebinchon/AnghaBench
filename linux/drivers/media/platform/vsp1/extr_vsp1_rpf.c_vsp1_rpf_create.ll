; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rpf.c_vsp1_rpf_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rpf.c_vsp1_rpf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_rwpf = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.vsp1_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RPF_MAX_WIDTH = common dso_local global i32 0, align 4
@RPF_MAX_HEIGHT = common dso_local global i32 0, align 4
@rpf_entity_ops = common dso_local global i32 0, align 4
@VSP1_ENTITY_RPF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"rpf.%u\00", align 1
@rpf_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"rpf%u: failed to initialize controls\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vsp1_rwpf* @vsp1_rpf_create(%struct.vsp1_device* %0, i32 %1) #0 {
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
  %11 = load i32, i32* %10, align 4
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
  br label %74

20:                                               ; preds = %2
  %21 = load i32, i32* @RPF_MAX_WIDTH, align 4
  %22 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %23 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @RPF_MAX_HEIGHT, align 4
  %25 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %26 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %28 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i32* @rpf_entity_ops, i32** %29, align 8
  %30 = load i32, i32* @VSP1_ENTITY_RPF, align 4
  %31 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %32 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %36 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %42 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %43 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %42, i32 0, i32 0
  %44 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %45 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER, align 4
  %46 = call i32 @vsp1_entity_init(%struct.vsp1_device* %41, %struct.TYPE_3__* %43, i8* %44, i32 2, i32* @rpf_ops, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %20
  %50 = load i32, i32* %8, align 4
  %51 = call %struct.vsp1_rwpf* @ERR_PTR(i32 %50)
  store %struct.vsp1_rwpf* %51, %struct.vsp1_rwpf** %3, align 8
  br label %74

52:                                               ; preds = %20
  %53 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %54 = call i32 @vsp1_rwpf_init_ctrls(%struct.vsp1_rwpf* %53, i32 0)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %59 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %68

63:                                               ; preds = %52
  %64 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %65 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %64, i32 0, i32 1
  %66 = call i32 @v4l2_ctrl_handler_setup(i32* %65)
  %67 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  store %struct.vsp1_rwpf* %67, %struct.vsp1_rwpf** %3, align 8
  br label %74

68:                                               ; preds = %57
  %69 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %6, align 8
  %70 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %69, i32 0, i32 0
  %71 = call i32 @vsp1_entity_destroy(%struct.TYPE_3__* %70)
  %72 = load i32, i32* %8, align 4
  %73 = call %struct.vsp1_rwpf* @ERR_PTR(i32 %72)
  store %struct.vsp1_rwpf* %73, %struct.vsp1_rwpf** %3, align 8
  br label %74

74:                                               ; preds = %68, %63, %49, %16
  %75 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  ret %struct.vsp1_rwpf* %75
}

declare dso_local %struct.vsp1_rwpf* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.vsp1_rwpf* @ERR_PTR(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @vsp1_entity_init(%struct.vsp1_device*, %struct.TYPE_3__*, i8*, i32, i32*, i32) #1

declare dso_local i32 @vsp1_rwpf_init_ctrls(%struct.vsp1_rwpf*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @vsp1_entity_destroy(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
