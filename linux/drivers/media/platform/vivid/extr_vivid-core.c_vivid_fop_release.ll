; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-core.c_vivid_fop_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-core.c_vivid_fop_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }
%struct.vivid_dev = type { i32*, i64, i32*, i64, i32*, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.video_device = type { i64 }

@no_error_inj = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"reconnect\0A\00", align 1
@V4L2_FL_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vivid_fop_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_fop_release(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vivid_dev*, align 8
  %5 = alloca %struct.video_device*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.vivid_dev* @video_drvdata(%struct.file* %6)
  store %struct.vivid_dev* %7, %struct.vivid_dev** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.video_device* @video_devdata(%struct.file* %8)
  store %struct.video_device* %9, %struct.video_device** %5, align 8
  %10 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %11 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %10, i32 0, i32 5
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @no_error_inj, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %66, label %15

15:                                               ; preds = %1
  %16 = load %struct.file*, %struct.file** %3, align 8
  %17 = call i64 @v4l2_fh_is_singular_file(%struct.file* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %15
  %20 = load %struct.video_device*, %struct.video_device** %5, align 8
  %21 = call i32 @video_is_registered(%struct.video_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %66, label %23

23:                                               ; preds = %19
  %24 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %25 = call i64 @vivid_is_last_user(%struct.vivid_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %29 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %28, i32 0, i32 13
  %30 = call i32 @v4l2_info(i32* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @V4L2_FL_REGISTERED, align 4
  %32 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %33 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %32, i32 0, i32 12
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = call i32 @set_bit(i32 %31, i32* %34)
  %36 = load i32, i32* @V4L2_FL_REGISTERED, align 4
  %37 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %38 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %37, i32 0, i32 11
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = call i32 @set_bit(i32 %36, i32* %39)
  %41 = load i32, i32* @V4L2_FL_REGISTERED, align 4
  %42 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %43 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %42, i32 0, i32 10
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = call i32 @set_bit(i32 %41, i32* %44)
  %46 = load i32, i32* @V4L2_FL_REGISTERED, align 4
  %47 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %48 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = call i32 @set_bit(i32 %46, i32* %49)
  %51 = load i32, i32* @V4L2_FL_REGISTERED, align 4
  %52 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %53 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = call i32 @set_bit(i32 %51, i32* %54)
  %56 = load i32, i32* @V4L2_FL_REGISTERED, align 4
  %57 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %58 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = call i32 @set_bit(i32 %56, i32* %59)
  %61 = load i32, i32* @V4L2_FL_REGISTERED, align 4
  %62 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %63 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = call i32 @set_bit(i32 %61, i32* %64)
  br label %66

66:                                               ; preds = %27, %23, %19, %15, %1
  %67 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %68 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %67, i32 0, i32 5
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %struct.file*, %struct.file** %3, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %74 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %79 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %78, i32 0, i32 4
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %77, %66
  %81 = load %struct.file*, %struct.file** %3, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %85 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %83, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %90 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %89, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %92 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %91, i32 0, i32 2
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %88, %80
  %94 = load %struct.file*, %struct.file** %3, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %98 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %96, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %103 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load %struct.vivid_dev*, %struct.vivid_dev** %4, align 8
  %105 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %104, i32 0, i32 0
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %101, %93
  %107 = load %struct.video_device*, %struct.video_device** %5, align 8
  %108 = getelementptr inbounds %struct.video_device, %struct.video_device* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.file*, %struct.file** %3, align 8
  %113 = call i32 @vb2_fop_release(%struct.file* %112)
  store i32 %113, i32* %2, align 4
  br label %117

114:                                              ; preds = %106
  %115 = load %struct.file*, %struct.file** %3, align 8
  %116 = call i32 @v4l2_fh_release(%struct.file* %115)
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @video_is_registered(%struct.video_device*) #1

declare dso_local i64 @vivid_is_last_user(%struct.vivid_dev*) #1

declare dso_local i32 @v4l2_info(i32*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vb2_fop_release(%struct.file*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
