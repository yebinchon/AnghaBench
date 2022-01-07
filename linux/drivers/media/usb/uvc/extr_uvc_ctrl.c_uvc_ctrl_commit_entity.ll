; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_commit_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_commit_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32 }
%struct.uvc_entity = type { i32, %struct.uvc_control* }
%struct.uvc_control = type { i64, %struct.TYPE_4__, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@UVC_CTRL_FLAG_AUTO_UPDATE = common dso_local global i32 0, align 4
@UVC_CTRL_FLAG_GET_CUR = common dso_local global i32 0, align 4
@UVC_SET_CUR = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_CURRENT = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_BACKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, %struct.uvc_entity*, i32)* @uvc_ctrl_commit_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ctrl_commit_entity(%struct.uvc_device* %0, %struct.uvc_entity* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_device*, align 8
  %6 = alloca %struct.uvc_entity*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uvc_control*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %5, align 8
  store %struct.uvc_entity* %1, %struct.uvc_entity** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %12 = icmp eq %struct.uvc_entity* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %115

14:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %111, %14
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %18 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %114

21:                                               ; preds = %15
  %22 = load %struct.uvc_entity*, %struct.uvc_entity** %6, align 8
  %23 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %22, i32 0, i32 1
  %24 = load %struct.uvc_control*, %struct.uvc_control** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %24, i64 %26
  store %struct.uvc_control* %27, %struct.uvc_control** %8, align 8
  %28 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %29 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %111

33:                                               ; preds = %21
  %34 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %35 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @UVC_CTRL_FLAG_AUTO_UPDATE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %43 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @UVC_CTRL_FLAG_GET_CUR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41, %33
  %50 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %51 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %41
  %53 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %54 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %111

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %84, label %61

61:                                               ; preds = %58
  %62 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %63 = load i32, i32* @UVC_SET_CUR, align 4
  %64 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %65 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %70 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %73 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %77 = load i32, i32* @UVC_CTRL_DATA_CURRENT, align 4
  %78 = call i32 @uvc_ctrl_data(%struct.uvc_control* %76, i32 %77)
  %79 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %80 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @uvc_query_ctrl(%struct.uvc_device* %62, i32 %63, i32 %68, i32 %71, i32 %75, i32 %78, i32 %82)
  store i32 %83, i32* %10, align 4
  br label %85

84:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %84, %61
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %88, %85
  %92 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %93 = load i32, i32* @UVC_CTRL_DATA_CURRENT, align 4
  %94 = call i32 @uvc_ctrl_data(%struct.uvc_control* %92, i32 %93)
  %95 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %96 = load i32, i32* @UVC_CTRL_DATA_BACKUP, align 4
  %97 = call i32 @uvc_ctrl_data(%struct.uvc_control* %95, i32 %96)
  %98 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %99 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @memcpy(i32 %94, i32 %97, i32 %101)
  br label %103

103:                                              ; preds = %91, %88
  %104 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %105 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  br label %115

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %57, %32
  %112 = load i32, i32* %9, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %15

114:                                              ; preds = %15
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %108, %13
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @uvc_query_ctrl(%struct.uvc_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uvc_ctrl_data(%struct.uvc_control*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
