; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_setcolors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_setcolors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov_i2c_regvals = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@setcolors.colors_7660 = internal constant [5 x [6 x %struct.ov_i2c_regvals]] [[6 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 79, i32 40 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 80, i32 42 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 81, i32 2 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 82, i32 10 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 83, i32 25 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 84, i32 35 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }], [6 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 79, i32 71 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 80, i32 74 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 81, i32 3 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 82, i32 17 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 83, i32 44 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 84, i32 62 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }], [6 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 79, i32 102 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 80, i32 107 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 81, i32 5 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 82, i32 25 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 83, i32 64 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 84, i32 89 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }], [6 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 79, i32 132 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 80, i32 139 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 81, i32 6 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 82, i32 32 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 83, i32 83 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 84, i32 115 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }], [6 x %struct.ov_i2c_regvals] [%struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 79, i32 163 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 80, i32 171 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 81, i32 8 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 82, i32 40 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 83, i32 102 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.ov_i2c_regvals { %struct.TYPE_12__ { i32 84, i32 142 }, %struct.TYPE_11__ zeroinitializer, %struct.TYPE_10__ zeroinitializer, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }]], align 16
@OV7610_REG_SAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setcolors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setcolors(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %5, align 8
  %8 = load %struct.sd*, %struct.sd** %5, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %36 [
    i32 128, label %11
    i32 136, label %11
    i32 129, label %11
    i32 139, label %11
    i32 138, label %11
    i32 137, label %11
    i32 135, label %16
    i32 134, label %16
    i32 133, label %21
    i32 132, label %21
    i32 131, label %27
    i32 130, label %35
  ]

11:                                               ; preds = %2, %2, %2, %2, %2, %2
  %12 = load %struct.sd*, %struct.sd** %5, align 8
  %13 = load i32, i32* @OV7610_REG_SAT, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @i2c_w(%struct.sd* %12, i32 %13, i32 %14)
  br label %36

16:                                               ; preds = %2, %2
  %17 = load %struct.sd*, %struct.sd** %5, align 8
  %18 = load i32, i32* @OV7610_REG_SAT, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @i2c_w(%struct.sd* %17, i32 %18, i32 %19)
  br label %36

21:                                               ; preds = %2, %2
  %22 = load %struct.sd*, %struct.sd** %5, align 8
  %23 = load i32, i32* @OV7610_REG_SAT, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 240
  %26 = call i32 @i2c_w(%struct.sd* %22, i32 %23, i32 %25)
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.sd*, %struct.sd** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [5 x [6 x %struct.ov_i2c_regvals]], [5 x [6 x %struct.ov_i2c_regvals]]* @setcolors.colors_7660, i64 0, i64 %30
  %32 = getelementptr inbounds [6 x %struct.ov_i2c_regvals], [6 x %struct.ov_i2c_regvals]* %31, i64 0, i64 0
  %33 = call i32 @ARRAY_SIZE(%struct.ov_i2c_regvals* getelementptr inbounds ([5 x [6 x %struct.ov_i2c_regvals]], [5 x [6 x %struct.ov_i2c_regvals]]* @setcolors.colors_7660, i64 0, i64 0, i64 0))
  %34 = call i32 @write_i2c_regvals(%struct.sd* %28, %struct.ov_i2c_regvals* %32, i32 %33)
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %2, %35, %27, %21, %16, %11
  ret void
}

declare dso_local i32 @i2c_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @write_i2c_regvals(%struct.sd*, %struct.ov_i2c_regvals*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ov_i2c_regvals*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
