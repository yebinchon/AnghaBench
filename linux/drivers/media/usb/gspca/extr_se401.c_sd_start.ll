; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_se401.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_se401.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sd = type { i32, i32, i64, i64, i64, i64, i64 }

@SE401_REQ_CAMERA_POWER = common dso_local global i32 0, align 4
@SE401_REQ_LED_CONTROL = common dso_local global i32 0, align 4
@HV7131_REG_MODE_B = common dso_local global i32 0, align 4
@SE401_REQ_SET_WIDTH = common dso_local global i32 0, align 4
@SE401_REQ_SET_HEIGHT = common dso_local global i32 0, align 4
@SE401_QUANT_FACT = common dso_local global i32 0, align 4
@SE401_OPERATINGMODE = common dso_local global i32 0, align 4
@HV7131_REG_ARLV = common dso_local global i32 0, align 4
@EXPO_NO_CHANGE = common dso_local global i32 0, align 4
@SE401_REQ_START_CONTINUOUS_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = load i32, i32* @SE401_REQ_CAMERA_POWER, align 4
  %20 = call i32 @se401_write_req(%struct.gspca_dev* %18, i32 %19, i32 1, i32 1)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_reset_device(i32 %28)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %30, i32 0, i32 1
  store i32 0, i32* %31, align 8
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = load i32, i32* @SE401_REQ_CAMERA_POWER, align 4
  %34 = call i32 @se401_write_req(%struct.gspca_dev* %32, i32 %33, i32 1, i32 0)
  br label %35

35:                                               ; preds = %25, %1
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = load i32, i32* @SE401_REQ_LED_CONTROL, align 4
  %38 = call i32 @se401_write_req(%struct.gspca_dev* %36, i32 %37, i32 1, i32 0)
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = load i32, i32* @HV7131_REG_MODE_B, align 4
  %41 = call i32 @se401_set_feature(%struct.gspca_dev* %39, i32 %40, i32 5)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %43 = load i32, i32* @SE401_REQ_SET_WIDTH, align 4
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = mul nsw i32 %47, %48
  %50 = call i32 @se401_write_req(%struct.gspca_dev* %42, i32 %43, i32 %49, i32 0)
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = load i32, i32* @SE401_REQ_SET_HEIGHT, align 4
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %54 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 %56, %57
  %59 = call i32 @se401_write_req(%struct.gspca_dev* %51, i32 %52, i32 %58, i32 0)
  %60 = load i32, i32* %4, align 4
  switch i32 %60, label %69 [
    i32 1, label %61
    i32 2, label %62
    i32 4, label %65
  ]

61:                                               ; preds = %35
  store i32 3, i32* %5, align 4
  br label %69

62:                                               ; preds = %35
  %63 = load i32, i32* @SE401_QUANT_FACT, align 4
  %64 = shl i32 %63, 4
  store i32 %64, i32* %5, align 4
  br label %69

65:                                               ; preds = %35
  %66 = load i32, i32* @SE401_QUANT_FACT, align 4
  %67 = shl i32 %66, 4
  %68 = or i32 %67, 2
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %35, %65, %62, %61
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = load i32, i32* @SE401_OPERATINGMODE, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @se401_set_feature(%struct.gspca_dev* %70, i32 %71, i32 %72)
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %75 = load i32, i32* @HV7131_REG_ARLV, align 4
  %76 = load %struct.sd*, %struct.sd** %3, align 8
  %77 = getelementptr inbounds %struct.sd, %struct.sd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @se401_set_feature(%struct.gspca_dev* %74, i32 %75, i32 %78)
  %80 = load %struct.sd*, %struct.sd** %3, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 6
  store i64 0, i64* %81, align 8
  %82 = load %struct.sd*, %struct.sd** %3, align 8
  %83 = getelementptr inbounds %struct.sd, %struct.sd* %82, i32 0, i32 5
  store i64 0, i64* %83, align 8
  %84 = load %struct.sd*, %struct.sd** %3, align 8
  %85 = getelementptr inbounds %struct.sd, %struct.sd* %84, i32 0, i32 4
  store i64 0, i64* %85, align 8
  %86 = load %struct.sd*, %struct.sd** %3, align 8
  %87 = getelementptr inbounds %struct.sd, %struct.sd* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.sd*, %struct.sd** %3, align 8
  %89 = getelementptr inbounds %struct.sd, %struct.sd* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @EXPO_NO_CHANGE, align 4
  %91 = load %struct.sd*, %struct.sd** %3, align 8
  %92 = getelementptr inbounds %struct.sd, %struct.sd* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %94 = load i32, i32* @SE401_REQ_START_CONTINUOUS_CAPTURE, align 4
  %95 = call i32 @se401_write_req(%struct.gspca_dev* %93, i32 %94, i32 0, i32 0)
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %97 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  ret i32 %98
}

declare dso_local i32 @se401_write_req(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @usb_reset_device(i32) #1

declare dso_local i32 @se401_set_feature(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
