; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_kinect.c_sd_start_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_kinect.c_sd_start_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@FORMAT_Y10B = common dso_local global i32 0, align 4
@FORMAT_UYVY = common dso_local global i32 0, align 4
@MODE_1280x1024 = common dso_local global i32 0, align 4
@FPS_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start_video(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @FORMAT_Y10B, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 25, i32* %4, align 4
  store i32 26, i32* %6, align 4
  store i32 27, i32* %8, align 4
  store i32 3, i32* %10, align 4
  br label %27

26:                                               ; preds = %1
  store i32 12, i32* %4, align 4
  store i32 13, i32* %6, align 4
  store i32 14, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @FORMAT_UYVY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 5, i32* %5, align 4
  br label %34

33:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @MODE_1280x1024, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 2, i32* %7, align 4
  br label %41

40:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @FPS_HIGH, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 30, i32* %9, align 4
  br label %48

47:                                               ; preds = %41
  store i32 15, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = call i32 @write_register(%struct.gspca_dev* %49, i32 261, i32 0)
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = call i32 @write_register(%struct.gspca_dev* %51, i32 5, i32 0)
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @FORMAT_Y10B, align 4
  %55 = load i32, i32* @MODE_1280x1024, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %48
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %61 = call i32 @write_register(%struct.gspca_dev* %60, i32 19, i32 1)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = call i32 @write_register(%struct.gspca_dev* %62, i32 20, i32 30)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = call i32 @write_register(%struct.gspca_dev* %64, i32 6, i32 2)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %67 = call i32 @write_register(%struct.gspca_dev* %66, i32 6, i32 0)
  br label %68

68:                                               ; preds = %59, %48
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @write_register(%struct.gspca_dev* %69, i32 %70, i32 %71)
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @write_register(%struct.gspca_dev* %73, i32 %74, i32 %75)
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @write_register(%struct.gspca_dev* %77, i32 %78, i32 %79)
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @write_register(%struct.gspca_dev* %81, i32 5, i32 %82)
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %85 = call i32 @write_register(%struct.gspca_dev* %84, i32 71, i32 0)
  ret i32 0
}

declare dso_local i32 @write_register(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
