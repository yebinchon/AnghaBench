; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_s3c_camif_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { %struct.camif_frame, %struct.camif_frame, %struct.TYPE_5__*, %struct.camif_vp* }
%struct.camif_frame = type { i32, i32, i8*, i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.camif_vp = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, i32, i32, %struct.camif_dev*, %struct.camif_frame }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@CAMIF_VP_NUM = common dso_local global i32 0, align 4
@S3C244X_CAMIF_IP_REV = common dso_local global i32 0, align 4
@FMT_FL_S3C24XX_PREVIEW = common dso_local global i32 0, align 4
@FMT_FL_S3C24XX_CODEC = common dso_local global i32 0, align 4
@FMT_FL_S3C64XX = common dso_local global i32 0, align 4
@CAMIF_DEF_WIDTH = common dso_local global i8* null, align 8
@CAMIF_DEF_HEIGHT = common dso_local global i8* null, align 8
@camif_mbus_formats = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c_camif_set_defaults(%struct.camif_dev* %0) #0 {
  %2 = alloca %struct.camif_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.camif_vp*, align 8
  %6 = alloca %struct.camif_frame*, align 8
  store %struct.camif_dev* %0, %struct.camif_dev** %2, align 8
  %7 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %8 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %104, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CAMIF_VP_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %107

16:                                               ; preds = %12
  %17 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %18 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %17, i32 0, i32 3
  %19 = load %struct.camif_vp*, %struct.camif_vp** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %19, i64 %21
  store %struct.camif_vp* %22, %struct.camif_vp** %5, align 8
  %23 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %24 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %23, i32 0, i32 7
  store %struct.camif_frame* %24, %struct.camif_frame** %6, align 8
  %25 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %26 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %27 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %26, i32 0, i32 6
  store %struct.camif_dev* %25, %struct.camif_dev** %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %30 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %32 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %37 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @S3C244X_CAMIF_IP_REV, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %16
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @FMT_FL_S3C24XX_PREVIEW, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @FMT_FL_S3C24XX_CODEC, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %51 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  br label %56

52:                                               ; preds = %16
  %53 = load i32, i32* @FMT_FL_S3C64XX, align 4
  %54 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %55 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %58 = call %struct.TYPE_8__* @s3c_camif_find_format(%struct.camif_vp* %57, i32* null, i32 0)
  %59 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %60 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %59, i32 0, i32 2
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %60, align 8
  %61 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %62 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %61, i32 0, i32 2
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = icmp eq %struct.TYPE_8__* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUG_ON(i32 %65)
  %67 = load %struct.camif_frame*, %struct.camif_frame** %6, align 8
  %68 = call i32 @memset(%struct.camif_frame* %67, i32 0, i32 48)
  %69 = load i8*, i8** @CAMIF_DEF_WIDTH, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.camif_frame*, %struct.camif_frame** %6, align 8
  %72 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** @CAMIF_DEF_HEIGHT, align 8
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.camif_frame*, %struct.camif_frame** %6, align 8
  %76 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i8*, i8** @CAMIF_DEF_WIDTH, align 8
  %78 = load %struct.camif_frame*, %struct.camif_frame** %6, align 8
  %79 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load i8*, i8** @CAMIF_DEF_HEIGHT, align 8
  %82 = load %struct.camif_frame*, %struct.camif_frame** %6, align 8
  %83 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i8* %81, i8** %84, align 8
  %85 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %86 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.camif_frame*, %struct.camif_frame** %6, align 8
  %89 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.camif_frame*, %struct.camif_frame** %6, align 8
  %92 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %96 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %94, %99
  %101 = sdiv i32 %100, 8
  %102 = load %struct.camif_vp*, %struct.camif_vp** %5, align 8
  %103 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %56
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %12

107:                                              ; preds = %12
  %108 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %109 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %108, i32 0, i32 1
  %110 = call i32 @memset(%struct.camif_frame* %109, i32 0, i32 48)
  %111 = load i8*, i8** @CAMIF_DEF_WIDTH, align 8
  %112 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %113 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %113, i32 0, i32 3
  store i8* %111, i8** %114, align 8
  %115 = load i8*, i8** @CAMIF_DEF_HEIGHT, align 8
  %116 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %117 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %117, i32 0, i32 2
  store i8* %115, i8** %118, align 8
  %119 = load i32*, i32** @camif_mbus_formats, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %123 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %123, i32 0, i32 4
  store i32 %121, i32* %124, align 8
  %125 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %126 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %125, i32 0, i32 0
  %127 = call i32 @memset(%struct.camif_frame* %126, i32 0, i32 48)
  %128 = load i8*, i8** @CAMIF_DEF_WIDTH, align 8
  %129 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %130 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %130, i32 0, i32 3
  store i8* %128, i8** %131, align 8
  %132 = load i8*, i8** @CAMIF_DEF_HEIGHT, align 8
  %133 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %134 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %134, i32 0, i32 2
  store i8* %132, i8** %135, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_8__* @s3c_camif_find_format(%struct.camif_vp*, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.camif_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
