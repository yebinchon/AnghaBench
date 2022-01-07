; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534_9.c_sd_start_ov361x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534_9.c_sd_start_ov361x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32 }

@ov361x_last = common dso_local global i32 0, align 4
@ov361x_bridge_start_2048 = common dso_local global i32 0, align 4
@ov361x_start_2048 = common dso_local global i32 0, align 4
@ov361x_bridge_start_1600 = common dso_local global i32 0, align 4
@ov361x_start_1600 = common dso_local global i32 0, align 4
@ov361x_bridge_start_1024 = common dso_local global i32 0, align 4
@ov361x_start_1024 = common dso_local global i32 0, align 4
@ov361x_bridge_start_640 = common dso_local global i32 0, align 4
@ov361x_start_640 = common dso_local global i32 0, align 4
@ov361x_bridge_start_320 = common dso_local global i32 0, align 4
@ov361x_start_320 = common dso_local global i32 0, align 4
@ov361x_bridge_start_160 = common dso_local global i32 0, align 4
@ov361x_start_160 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start_ov361x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start_ov361x(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = call i32 @sccb_write(%struct.gspca_dev* %3, i32 18, i32 128)
  %5 = call i32 @msleep(i32 20)
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ov361x_last, align 4
  %10 = srem i32 %8, %9
  switch i32 %10, label %77 [
    i32 130, label %11
    i32 131, label %22
    i32 133, label %33
    i32 128, label %44
    i32 129, label %55
    i32 132, label %66
  ]

11:                                               ; preds = %1
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = load i32, i32* @ov361x_bridge_start_2048, align 4
  %14 = load i32, i32* @ov361x_bridge_start_2048, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @reg_w_array(%struct.gspca_dev* %12, i32 %13, i32 %15)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = load i32, i32* @ov361x_start_2048, align 4
  %19 = load i32, i32* @ov361x_start_2048, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @sccb_w_array(%struct.gspca_dev* %17, i32 %18, i32 %20)
  br label %77

22:                                               ; preds = %1
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = load i32, i32* @ov361x_bridge_start_1600, align 4
  %25 = load i32, i32* @ov361x_bridge_start_1600, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @reg_w_array(%struct.gspca_dev* %23, i32 %24, i32 %26)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = load i32, i32* @ov361x_start_1600, align 4
  %30 = load i32, i32* @ov361x_start_1600, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @sccb_w_array(%struct.gspca_dev* %28, i32 %29, i32 %31)
  br label %77

33:                                               ; preds = %1
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = load i32, i32* @ov361x_bridge_start_1024, align 4
  %36 = load i32, i32* @ov361x_bridge_start_1024, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = call i32 @reg_w_array(%struct.gspca_dev* %34, i32 %35, i32 %37)
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = load i32, i32* @ov361x_start_1024, align 4
  %41 = load i32, i32* @ov361x_start_1024, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = call i32 @sccb_w_array(%struct.gspca_dev* %39, i32 %40, i32 %42)
  br label %77

44:                                               ; preds = %1
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = load i32, i32* @ov361x_bridge_start_640, align 4
  %47 = load i32, i32* @ov361x_bridge_start_640, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = call i32 @reg_w_array(%struct.gspca_dev* %45, i32 %46, i32 %48)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %51 = load i32, i32* @ov361x_start_640, align 4
  %52 = load i32, i32* @ov361x_start_640, align 4
  %53 = call i32 @ARRAY_SIZE(i32 %52)
  %54 = call i32 @sccb_w_array(%struct.gspca_dev* %50, i32 %51, i32 %53)
  br label %77

55:                                               ; preds = %1
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = load i32, i32* @ov361x_bridge_start_320, align 4
  %58 = load i32, i32* @ov361x_bridge_start_320, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = call i32 @reg_w_array(%struct.gspca_dev* %56, i32 %57, i32 %59)
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = load i32, i32* @ov361x_start_320, align 4
  %63 = load i32, i32* @ov361x_start_320, align 4
  %64 = call i32 @ARRAY_SIZE(i32 %63)
  %65 = call i32 @sccb_w_array(%struct.gspca_dev* %61, i32 %62, i32 %64)
  br label %77

66:                                               ; preds = %1
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %68 = load i32, i32* @ov361x_bridge_start_160, align 4
  %69 = load i32, i32* @ov361x_bridge_start_160, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = call i32 @reg_w_array(%struct.gspca_dev* %67, i32 %68, i32 %70)
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %73 = load i32, i32* @ov361x_start_160, align 4
  %74 = load i32, i32* @ov361x_start_160, align 4
  %75 = call i32 @ARRAY_SIZE(i32 %74)
  %76 = call i32 @sccb_w_array(%struct.gspca_dev* %72, i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %1, %66, %55, %44, %33, %22, %11
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = call i32 @reg_w(%struct.gspca_dev* %78, i32 224, i32 0)
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %81 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  ret i32 %82
}

declare dso_local i32 @sccb_write(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_w_array(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @sccb_w_array(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
