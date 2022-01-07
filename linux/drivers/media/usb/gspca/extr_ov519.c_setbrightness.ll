; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_setbrightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_setbrightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov_i2c_regvals = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@setbrightness.brit_7660 = internal constant [7 x [7 x %struct.ov_i2c_regvals]] [[7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 15, i32 106 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 36, i32 64 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 37, i32 43 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 38, i32 144 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 39, i32 224 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 40, i32 224 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 44, i32 224 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 15, i32 106 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 36, i32 80 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 37, i32 64 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 38, i32 161 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 39, i32 192 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 40, i32 192 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 44, i32 192 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 15, i32 106 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 36, i32 104 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 37, i32 88 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 38, i32 194 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 39, i32 160 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 40, i32 160 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 44, i32 160 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 15, i32 106 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 36, i32 112 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 37, i32 104 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 38, i32 211 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 39, i32 128 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 40, i32 128 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 44, i32 128 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 15, i32 106 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 36, i32 128 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 37, i32 112 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 38, i32 211 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 39, i32 32 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 40, i32 32 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 44, i32 32 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 15, i32 106 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 36, i32 136 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 37, i32 120 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 38, i32 211 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 39, i32 64 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 40, i32 64 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 44, i32 64 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }], [7 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 15, i32 106 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 36, i32 144 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 37, i32 128 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 38, i32 212 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 39, i32 96 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 40, i32 96 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_14__ { i32 44, i32 96 }, %struct.TYPE_13__ zeroinitializer, %struct.TYPE_12__ zeroinitializer, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer }]], align 16
@OV7610_REG_BRT = common dso_local global i32 0, align 4
@OV7670_R55_BRIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64)* @setbrightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setbrightness(%struct.gspca_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %5, align 8
  %8 = load %struct.sd*, %struct.sd** %5, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %34 [
    i32 128, label %11
    i32 136, label %11
    i32 129, label %11
    i32 139, label %11
    i32 138, label %11
    i32 137, label %11
    i32 133, label %11
    i32 132, label %11
    i32 135, label %16
    i32 134, label %16
    i32 131, label %21
    i32 130, label %28
  ]

11:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %12 = load %struct.sd*, %struct.sd** %5, align 8
  %13 = load i32, i32* @OV7610_REG_BRT, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @i2c_w(%struct.sd* %12, i32 %13, i64 %14)
  br label %34

16:                                               ; preds = %2, %2
  %17 = load %struct.sd*, %struct.sd** %5, align 8
  %18 = load i32, i32* @OV7610_REG_BRT, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @i2c_w(%struct.sd* %17, i32 %18, i64 %19)
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.sd*, %struct.sd** %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds [7 x [7 x %struct.ov_i2c_regvals]], [7 x [7 x %struct.ov_i2c_regvals]]* @setbrightness.brit_7660, i64 0, i64 %23
  %25 = getelementptr inbounds [7 x %struct.ov_i2c_regvals], [7 x %struct.ov_i2c_regvals]* %24, i64 0, i64 0
  %26 = call i32 @ARRAY_SIZE(%struct.ov_i2c_regvals* getelementptr inbounds ([7 x [7 x %struct.ov_i2c_regvals]], [7 x [7 x %struct.ov_i2c_regvals]]* @setbrightness.brit_7660, i64 0, i64 0, i64 0))
  %27 = call i32 @write_i2c_regvals(%struct.sd* %22, %struct.ov_i2c_regvals* %25, i32 %26)
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.sd*, %struct.sd** %5, align 8
  %30 = load i32, i32* @OV7670_R55_BRIGHT, align 4
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @ov7670_abs_to_sm(i64 %31)
  %33 = call i32 @i2c_w(%struct.sd* %29, i32 %30, i64 %32)
  br label %34

34:                                               ; preds = %2, %28, %21, %16, %11
  ret void
}

declare dso_local i32 @i2c_w(%struct.sd*, i32, i64) #1

declare dso_local i32 @write_i2c_regvals(%struct.sd*, %struct.ov_i2c_regvals*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ov_i2c_regvals*) #1

declare dso_local i64 @ov7670_abs_to_sm(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
