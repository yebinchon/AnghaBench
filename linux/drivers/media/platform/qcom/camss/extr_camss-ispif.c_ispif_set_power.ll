; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ispif_line = type { i64, %struct.ispif_device* }
%struct.ispif_device = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.device = type { i32 }

@CMD_ALL_NO_CHANGE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"ispif power off on power_count == 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ispif_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ispif_set_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ispif_line*, align 8
  %6 = alloca %struct.ispif_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.ispif_line* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.ispif_line* %10, %struct.ispif_line** %5, align 8
  %11 = load %struct.ispif_line*, %struct.ispif_line** %5, align 8
  %12 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %11, i32 0, i32 1
  %13 = load %struct.ispif_device*, %struct.ispif_device** %12, align 8
  store %struct.ispif_device* %13, %struct.ispif_device** %6, align 8
  %14 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %15 = call %struct.device* @to_device(%struct.ispif_device* %14)
  store %struct.device* %15, %struct.device** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %17 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %89

21:                                               ; preds = %2
  %22 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %23 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %28 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  br label %119

31:                                               ; preds = %21
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = call i32 @pm_runtime_get_sync(%struct.device* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %119

37:                                               ; preds = %31
  %38 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %39 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %42 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = call i32 @camss_enable_clocks(i32 %40, i32 %43, %struct.device* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = call i32 @pm_runtime_put_sync(%struct.device* %49)
  br label %119

51:                                               ; preds = %37
  %52 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %53 = call i32 @ispif_reset(%struct.ispif_device* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = call i32 @pm_runtime_put_sync(%struct.device* %57)
  %59 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %60 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %63 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @camss_disable_clocks(i32 %61, i32 %64)
  br label %119

66:                                               ; preds = %51
  %67 = load i8*, i8** @CMD_ALL_NO_CHANGE, align 8
  %68 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %69 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %68, i32 0, i32 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load %struct.ispif_line*, %struct.ispif_line** %5, align 8
  %72 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i8* %67, i8** %75, align 8
  %76 = load i8*, i8** @CMD_ALL_NO_CHANGE, align 8
  %77 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %78 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %77, i32 0, i32 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load %struct.ispif_line*, %struct.ispif_line** %5, align 8
  %81 = getelementptr inbounds %struct.ispif_line, %struct.ispif_line* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i8* %76, i8** %84, align 8
  %85 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %86 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %118

89:                                               ; preds = %2
  %90 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %91 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.device*, %struct.device** %7, align 8
  %96 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %119

97:                                               ; preds = %89
  %98 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %99 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %104 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %107 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @camss_disable_clocks(i32 %105, i32 %108)
  %110 = load %struct.device*, %struct.device** %7, align 8
  %111 = call i32 @pm_runtime_put_sync(%struct.device* %110)
  br label %112

112:                                              ; preds = %102, %97
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %115 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %113, %66
  br label %119

119:                                              ; preds = %118, %94, %56, %48, %36, %26
  %120 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %121 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %120, i32 0, i32 1
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local %struct.ispif_line* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.device* @to_device(%struct.ispif_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @camss_enable_clocks(i32, i32, %struct.device*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @ispif_reset(%struct.ispif_device*) #1

declare dso_local i32 @camss_disable_clocks(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
