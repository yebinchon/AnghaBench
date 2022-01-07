; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_which_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_which_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)* }
%struct.v4l2_streamparm = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@USB_SPEED_FULL = common dso_local global i64 0, align 8
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"min bandwidth: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @which_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @which_bandwidth(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_streamparm, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %19, %23
  %25 = icmp slt i32 %15, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load i32, i32* %3, align 4
  %28 = mul nsw i32 %27, 3
  %29 = sdiv i32 %28, 8
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %14, %1
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)*, i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)** %34, align 8
  %36 = icmp ne i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)* %35, null
  br i1 %36, label %37, label %59

37:                                               ; preds = %30
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)*, i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)** %41, align 8
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = call i32 %42(%struct.gspca_dev* %43, %struct.v4l2_streamparm* %4)
  %45 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %4, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %3, align 4
  %51 = mul nsw i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %4, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = sdiv i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %80

59:                                               ; preds = %30
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %61 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %63, 640
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %67 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @USB_SPEED_FULL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %3, align 4
  %75 = mul nsw i32 %74, 15
  store i32 %75, i32* %3, align 4
  br label %79

76:                                               ; preds = %65, %59
  %77 = load i32, i32* %3, align 4
  %78 = mul nsw i32 %77, 30
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %37
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = load i32, i32* @D_STREAM, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @gspca_dbg(%struct.gspca_dev* %81, i32 %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
