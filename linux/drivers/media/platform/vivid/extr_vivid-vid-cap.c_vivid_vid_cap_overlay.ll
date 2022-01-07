; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_vid_cap_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vid-cap.c_vivid_vid_cap_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vivid_dev = type { i8*, %struct.TYPE_6__*, %struct.TYPE_5__, i32*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ENOTTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"mismatch between overlay and video capture pixelformats\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_vid_cap_overlay(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vivid_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.vivid_dev* @video_drvdata(%struct.file* %9)
  store %struct.vivid_dev* %10, %struct.vivid_dev** %8, align 8
  %11 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %12 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOTTY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %73

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %23 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %73

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %34 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %39 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %37, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %46 = call i32 @dprintk(%struct.vivid_dev* %45, i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %73

49:                                               ; preds = %32, %29
  %50 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %51 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %56 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %73

63:                                               ; preds = %54, %49
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i8*, i8** %6, align 8
  br label %69

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i8* [ %67, %66 ], [ null, %68 ]
  %71 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %72 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %60, %44, %26, %15
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dprintk(%struct.vivid_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
