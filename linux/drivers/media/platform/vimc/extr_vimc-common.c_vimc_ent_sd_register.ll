; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-common.c_vimc_ent_sd_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-common.c_vimc_ent_sd_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vimc_ent_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.v4l2_subdev = type { %struct.TYPE_3__, i32, i64, i32, i32, %struct.v4l2_subdev_internal_ops* }
%struct.v4l2_device = type { i32 }
%struct.v4l2_subdev_internal_ops = type { i32 }
%struct.v4l2_subdev_ops = type { i32 }

@vimc_ent_sd_mops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: subdev register failed (err=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vimc_ent_sd_register(%struct.vimc_ent_device* %0, %struct.v4l2_subdev* %1, %struct.v4l2_device* %2, i8* %3, i32 %4, i32 %5, i64* %6, %struct.v4l2_subdev_internal_ops* %7, %struct.v4l2_subdev_ops* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.vimc_ent_device*, align 8
  %12 = alloca %struct.v4l2_subdev*, align 8
  %13 = alloca %struct.v4l2_device*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca %struct.v4l2_subdev_internal_ops*, align 8
  %19 = alloca %struct.v4l2_subdev_ops*, align 8
  %20 = alloca i32, align 4
  store %struct.vimc_ent_device* %0, %struct.vimc_ent_device** %11, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %12, align 8
  store %struct.v4l2_device* %2, %struct.v4l2_device** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i64* %6, i64** %17, align 8
  store %struct.v4l2_subdev_internal_ops* %7, %struct.v4l2_subdev_internal_ops** %18, align 8
  store %struct.v4l2_subdev_ops* %8, %struct.v4l2_subdev_ops** %19, align 8
  %21 = load i32, i32* %16, align 4
  %22 = load i64*, i64** %17, align 8
  %23 = call i32 @vimc_pads_init(i32 %21, i64* %22)
  %24 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %11, align 8
  %25 = getelementptr inbounds %struct.vimc_ent_device, %struct.vimc_ent_device* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %11, align 8
  %27 = getelementptr inbounds %struct.vimc_ent_device, %struct.vimc_ent_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %9
  %32 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %11, align 8
  %33 = getelementptr inbounds %struct.vimc_ent_device, %struct.vimc_ent_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %10, align 4
  br label %115

36:                                               ; preds = %9
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %37, i32 0, i32 0
  %39 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %11, align 8
  %40 = getelementptr inbounds %struct.vimc_ent_device, %struct.vimc_ent_device* %39, i32 0, i32 1
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %40, align 8
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %42 = load %struct.v4l2_subdev_ops*, %struct.v4l2_subdev_ops** %19, align 8
  %43 = call i32 @v4l2_subdev_init(%struct.v4l2_subdev* %41, %struct.v4l2_subdev_ops* %42)
  %44 = load %struct.v4l2_subdev_internal_ops*, %struct.v4l2_subdev_internal_ops** %18, align 8
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %45, i32 0, i32 5
  store %struct.v4l2_subdev_internal_ops* %44, %struct.v4l2_subdev_internal_ops** %46, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %49 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 8
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32* @vimc_ent_sd_mops, i32** %53, align 8
  %54 = load i32, i32* @THIS_MODULE, align 4
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %56 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = call i32 @strscpy(i32 %59, i8* %60, i32 4)
  %62 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %63 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %11, align 8
  %64 = call i32 @v4l2_set_subdevdata(%struct.v4l2_subdev* %62, %struct.vimc_ent_device* %63)
  %65 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %71 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %36
  %75 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %77 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %74, %36
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %82 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %81, i32 0, i32 0
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %11, align 8
  %85 = getelementptr inbounds %struct.vimc_ent_device, %struct.vimc_ent_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @media_entity_pads_init(%struct.TYPE_3__* %82, i32 %83, i32 %86)
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %20, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %109

91:                                               ; preds = %80
  %92 = load %struct.v4l2_device*, %struct.v4l2_device** %13, align 8
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %94 = call i32 @v4l2_device_register_subdev(%struct.v4l2_device* %92, %struct.v4l2_subdev* %93)
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %20, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.v4l2_device*, %struct.v4l2_device** %13, align 8
  %99 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %14, align 8
  %102 = load i32, i32* %20, align 4
  %103 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %101, i32 %102)
  br label %105

104:                                              ; preds = %91
  store i32 0, i32* %10, align 4
  br label %115

105:                                              ; preds = %97
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %107 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %106, i32 0, i32 0
  %108 = call i32 @media_entity_cleanup(%struct.TYPE_3__* %107)
  br label %109

109:                                              ; preds = %105, %90
  %110 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %11, align 8
  %111 = getelementptr inbounds %struct.vimc_ent_device, %struct.vimc_ent_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @vimc_pads_cleanup(i32 %112)
  %114 = load i32, i32* %20, align 4
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %109, %104, %31
  %116 = load i32, i32* %10, align 4
  ret i32 %116
}

declare dso_local i32 @vimc_pads_init(i32, i64*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @v4l2_subdev_init(%struct.v4l2_subdev*, %struct.v4l2_subdev_ops*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.v4l2_subdev*, %struct.vimc_ent_device*) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @v4l2_device_register_subdev(%struct.v4l2_device*, %struct.v4l2_subdev*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_3__*) #1

declare dso_local i32 @vimc_pads_cleanup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
