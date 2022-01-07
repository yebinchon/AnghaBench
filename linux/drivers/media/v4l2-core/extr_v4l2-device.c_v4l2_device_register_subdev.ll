; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-device.c_v4l2_device_register_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-device.c_v4l2_device_register_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_device = type { i32, i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.v4l2_subdev = type { i32, i64, %struct.v4l2_device*, i32, %struct.TYPE_6__*, i32, i32*, %struct.media_entity }
%struct.TYPE_6__ = type { i32 (%struct.v4l2_subdev*)* }
%struct.media_entity = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_device_register_subdev(%struct.v4l2_device* %0, %struct.v4l2_subdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_device*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_device* %0, %struct.v4l2_device** %4, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %5, align 8
  %7 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %8 = icmp ne %struct.v4l2_device* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = icmp ne %struct.v4l2_subdev* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %13, i32 0, i32 2
  %15 = load %struct.v4l2_device*, %struct.v4l2_device** %14, align 8
  %16 = icmp ne %struct.v4l2_device* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17, %12, %9, %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %134

27:                                               ; preds = %17
  %28 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %28, i32 0, i32 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %33, i32 0, i32 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %44 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %43, i32 0, i32 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %42, %49
  br label %51

51:                                               ; preds = %39, %32, %27
  %52 = phi i1 [ false, %32 ], [ false, %27 ], [ %50, %39 ]
  %53 = zext i1 %52 to i32
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %51
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @try_module_get(i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %134

69:                                               ; preds = %60, %51
  %70 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %71, i32 0, i32 2
  store %struct.v4l2_device* %70, %struct.v4l2_device** %72, align 8
  %73 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %74 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %77 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @v4l2_ctrl_add_handler(i32 %75, i32 %78, i32* null, i32 1)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %120

83:                                               ; preds = %69
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %84, i32 0, i32 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %107

88:                                               ; preds = %83
  %89 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %89, i32 0, i32 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*)** %92, align 8
  %94 = icmp ne i32 (%struct.v4l2_subdev*)* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %97 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %96, i32 0, i32 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32 (%struct.v4l2_subdev*)*, i32 (%struct.v4l2_subdev*)** %99, align 8
  %101 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %102 = call i32 %100(%struct.v4l2_subdev* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %119

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106, %88, %83
  %108 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %109 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %108, i32 0, i32 0
  %110 = call i32 @spin_lock(i32* %109)
  %111 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %112 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %111, i32 0, i32 3
  %113 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %114 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %113, i32 0, i32 1
  %115 = call i32 @list_add_tail(i32* %112, i32* %114)
  %116 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %117 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock(i32* %117)
  store i32 0, i32* %3, align 4
  br label %134

119:                                              ; preds = %105
  br label %120

120:                                              ; preds = %119, %82
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %122 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %127 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @module_put(i64 %128)
  br label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %132 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %131, i32 0, i32 2
  store %struct.v4l2_device* null, %struct.v4l2_device** %132, align 8
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %130, %107, %66, %24
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @try_module_get(i64) #1

declare dso_local i32 @v4l2_ctrl_add_handler(i32, i32, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @module_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
