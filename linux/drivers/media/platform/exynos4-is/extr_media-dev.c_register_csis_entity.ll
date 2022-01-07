; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_register_csis_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_register_csis_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_md = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.v4l2_subdev = type { i32 }

@CSIS_MAX_ENTITIES = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GRP_ID_CSIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to register MIPI-CSIS.%d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_md*, %struct.platform_device*, %struct.v4l2_subdev*)* @register_csis_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_csis_entity(%struct.fimc_md* %0, %struct.platform_device* %1, %struct.v4l2_subdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fimc_md*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fimc_md* %0, %struct.fimc_md** %5, align 8
  store %struct.platform_device* %1, %struct.platform_device** %6, align 8
  store %struct.v4l2_subdev* %2, %struct.v4l2_subdev** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %8, align 8
  %15 = load %struct.device_node*, %struct.device_node** %8, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.device_node*, %struct.device_node** %8, align 8
  %19 = call i32 @__of_get_csis_id(%struct.device_node* %18)
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @max(i32 0, i32 %23)
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i32 [ %19, %17 ], [ %24, %20 ]
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @CSIS_MAX_ENTITIES, align 4
  %32 = icmp sge i32 %30, %31
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ true, %25 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %83

41:                                               ; preds = %33
  %42 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %43 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @WARN_ON(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %83

55:                                               ; preds = %41
  %56 = load i32, i32* @GRP_ID_CSIS, align 4
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %60 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %59, i32 0, i32 0
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %62 = call i32 @v4l2_device_register_subdev(i32* %60, %struct.v4l2_subdev* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %55
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %67 = ptrtoint %struct.v4l2_subdev* %66 to i32
  %68 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %69 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %67, i32* %74, align 4
  br label %81

75:                                               ; preds = %55
  %76 = load %struct.fimc_md*, %struct.fimc_md** %5, align 8
  %77 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %76, i32 0, i32 0
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @v4l2_err(i32* %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %65
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %52, %38
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @__of_get_csis_id(%struct.device_node*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @v4l2_device_register_subdev(i32*, %struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
