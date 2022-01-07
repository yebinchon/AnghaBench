; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk1135.c_stk1135_configure_mt9m112.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk1135.c_stk1135_configure_mt9m112.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sensor_val = type { i32, i32, i32, i32 }
%struct.gspca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@stk1135_configure_mt9m112.cfg = internal constant [123 x %struct.sensor_val] [%struct.sensor_val { i32 13, i32 11, i32 0, i32 0 }, %struct.sensor_val { i32 13, i32 8, i32 0, i32 0 }, %struct.sensor_val { i32 53, i32 34, i32 0, i32 0 }, %struct.sensor_val { i32 262, i32 28686, i32 0, i32 0 }, %struct.sensor_val { i32 733, i32 6368, i32 0, i32 0 }, %struct.sensor_val { i32 543, i32 384, i32 0, i32 0 }, %struct.sensor_val { i32 544, i32 51220, i32 0, i32 0 }, %struct.sensor_val { i32 545, i32 32896, i32 0, i32 0 }, %struct.sensor_val { i32 546, i32 41080, i32 0, i32 0 }, %struct.sensor_val { i32 547, i32 41080, i32 0, i32 0 }, %struct.sensor_val { i32 548, i32 24352, i32 0, i32 0 }, %struct.sensor_val { i32 552, i32 59906, i32 0, i32 0 }, %struct.sensor_val { i32 553, i32 34426, i32 0, i32 0 }, %struct.sensor_val { i32 606, i32 22860, i32 0, i32 0 }, %struct.sensor_val { i32 607, i32 19793, i32 0, i32 0 }, %struct.sensor_val { i32 608, i32 2, i32 0, i32 0 }, %struct.sensor_val { i32 751, i32 8, i32 0, i32 0 }, %struct.sensor_val { i32 754, i32 0, i32 0, i32 0 }, %struct.sensor_val { i32 514, i32 238, i32 0, i32 0 }, %struct.sensor_val { i32 515, i32 14627, i32 0, i32 0 }, %struct.sensor_val { i32 516, i32 1828, i32 0, i32 0 }, %struct.sensor_val { i32 521, i32 205, i32 0, i32 0 }, %struct.sensor_val { i32 522, i32 147, i32 0, i32 0 }, %struct.sensor_val { i32 523, i32 4, i32 0, i32 0 }, %struct.sensor_val { i32 524, i32 92, i32 0, i32 0 }, %struct.sensor_val { i32 525, i32 217, i32 0, i32 0 }, %struct.sensor_val { i32 526, i32 83, i32 0, i32 0 }, %struct.sensor_val { i32 527, i32 8, i32 0, i32 0 }, %struct.sensor_val { i32 528, i32 145, i32 0, i32 0 }, %struct.sensor_val { i32 529, i32 207, i32 0, i32 0 }, %struct.sensor_val { i32 533, i32 0, i32 0, i32 0 }, %struct.sensor_val { i32 534, i32 0, i32 0, i32 0 }, %struct.sensor_val { i32 535, i32 0, i32 0, i32 0 }, %struct.sensor_val { i32 536, i32 0, i32 0, i32 0 }, %struct.sensor_val { i32 537, i32 0, i32 0, i32 0 }, %struct.sensor_val { i32 538, i32 0, i32 0, i32 0 }, %struct.sensor_val { i32 539, i32 0, i32 0, i32 0 }, %struct.sensor_val { i32 540, i32 0, i32 0, i32 0 }, %struct.sensor_val { i32 541, i32 0, i32 0, i32 0 }, %struct.sensor_val { i32 542, i32 0, i32 0, i32 0 }, %struct.sensor_val { i32 262, i32 61454, i32 0, i32 0 }, %struct.sensor_val { i32 262, i32 28686, i32 0, i32 0 }, %struct.sensor_val { i32 384, i32 7, i32 0, i32 0 }, %struct.sensor_val { i32 385, i32 56851, i32 0, i32 0 }, %struct.sensor_val { i32 386, i32 60386, i32 0, i32 0 }, %struct.sensor_val { i32 387, i32 246, i32 0, i32 0 }, %struct.sensor_val { i32 388, i32 57620, i32 0, i32 0 }, %struct.sensor_val { i32 389, i32 60125, i32 0, i32 0 }, %struct.sensor_val { i32 390, i32 65014, i32 0, i32 0 }, %struct.sensor_val { i32 391, i32 58641, i32 0, i32 0 }, %struct.sensor_val { i32 392, i32 60902, i32 0, i32 0 }, %struct.sensor_val { i32 393, i32 64503, i32 0, i32 0 }, %struct.sensor_val { i32 394, i32 54803, i32 0, i32 0 }, %struct.sensor_val { i32 395, i32 60908, i32 0, i32 0 }, %struct.sensor_val { i32 396, i32 63986, i32 0, i32 0 }, %struct.sensor_val { i32 397, i32 0, i32 0, i32 0 }, %struct.sensor_val { i32 398, i32 55317, i32 0, i32 0 }, %struct.sensor_val { i32 399, i32 59882, i32 0, i32 0 }, %struct.sensor_val { i32 400, i32 63985, i32 0, i32 0 }, %struct.sensor_val { i32 401, i32 2, i32 0, i32 0 }, %struct.sensor_val { i32 402, i32 56848, i32 0, i32 0 }, %struct.sensor_val { i32 403, i32 61423, i32 0, i32 0 }, %struct.sensor_val { i32 404, i32 64500, i32 0, i32 0 }, %struct.sensor_val { i32 405, i32 2, i32 0, i32 0 }, %struct.sensor_val { i32 438, i32 3590, i32 0, i32 0 }, %struct.sensor_val { i32 439, i32 10003, i32 0, i32 0 }, %struct.sensor_val { i32 440, i32 4358, i32 0, i32 0 }, %struct.sensor_val { i32 441, i32 10003, i32 0, i32 0 }, %struct.sensor_val { i32 442, i32 3075, i32 0, i32 0 }, %struct.sensor_val { i32 443, i32 10767, i32 0, i32 0 }, %struct.sensor_val { i32 444, i32 4616, i32 0, i32 0 }, %struct.sensor_val { i32 445, i32 6678, i32 0, i32 0 }, %struct.sensor_val { i32 446, i32 34, i32 0, i32 0 }, %struct.sensor_val { i32 447, i32 5386, i32 0, i32 0 }, %struct.sensor_val { i32 448, i32 7194, i32 0, i32 0 }, %struct.sensor_val { i32 449, i32 45, i32 0, i32 0 }, %struct.sensor_val { i32 450, i32 4361, i32 0, i32 0 }, %struct.sensor_val { i32 451, i32 5140, i32 0, i32 0 }, %struct.sensor_val { i32 452, i32 42, i32 0, i32 0 }, %struct.sensor_val { i32 262, i32 29710, i32 0, i32 0 }, %struct.sensor_val { i32 339, i32 2819, i32 0, i32 0 }, %struct.sensor_val { i32 340, i32 18210, i32 0, i32 0 }, %struct.sensor_val { i32 341, i32 44162, i32 0, i32 0 }, %struct.sensor_val { i32 342, i32 56007, i32 0, i32 0 }, %struct.sensor_val { i32 343, i32 62953, i32 0, i32 0 }, %struct.sensor_val { i32 344, i32 65280, i32 0, i32 0 }, %struct.sensor_val { i32 476, i32 2819, i32 0, i32 0 }, %struct.sensor_val { i32 477, i32 18210, i32 0, i32 0 }, %struct.sensor_val { i32 478, i32 44162, i32 0, i32 0 }, %struct.sensor_val { i32 479, i32 56007, i32 0, i32 0 }, %struct.sensor_val { i32 480, i32 62953, i32 0, i32 0 }, %struct.sensor_val { i32 481, i32 65280, i32 0, i32 0 }, %struct.sensor_val { i32 314, i32 17152, i32 0, i32 0 }, %struct.sensor_val { i32 411, i32 17152, i32 0, i32 0 }, %struct.sensor_val { i32 264, i32 384, i32 0, i32 0 }, %struct.sensor_val { i32 559, i32 53504, i32 0, i32 0 }, %struct.sensor_val { i32 668, i32 53504, i32 0, i32 0 }, %struct.sensor_val { i32 722, i32 0, i32 0, i32 0 }, %struct.sensor_val { i32 716, i32 4, i32 0, i32 0 }, %struct.sensor_val { i32 715, i32 1, i32 0, i32 0 }, %struct.sensor_val { i32 558, i32 3132, i32 0, i32 0 }, %struct.sensor_val { i32 615, i32 4112, i32 0, i32 0 }, %struct.sensor_val { i32 101, i32 40960, i32 0, i32 0 }, %struct.sensor_val { i32 102, i32 8195, i32 0, i32 0 }, %struct.sensor_val { i32 103, i32 1281, i32 0, i32 0 }, %struct.sensor_val { i32 101, i32 8192, i32 0, i32 0 }, %struct.sensor_val { i32 5, i32 440, i32 0, i32 0 }, %struct.sensor_val { i32 7, i32 216, i32 0, i32 0 }, %struct.sensor_val { i32 569, i32 1728, i32 0, i32 0 }, %struct.sensor_val { i32 571, i32 1038, i32 0, i32 0 }, %struct.sensor_val { i32 570, i32 1728, i32 0, i32 0 }, %struct.sensor_val { i32 572, i32 1380, i32 0, i32 0 }, %struct.sensor_val { i32 599, i32 520, i32 0, i32 0 }, %struct.sensor_val { i32 600, i32 625, i32 0, i32 0 }, %struct.sensor_val { i32 601, i32 521, i32 0, i32 0 }, %struct.sensor_val { i32 602, i32 625, i32 0, i32 0 }, %struct.sensor_val { i32 604, i32 4621, i32 0, i32 0 }, %struct.sensor_val { i32 605, i32 5906, i32 0, i32 0 }, %struct.sensor_val { i32 612, i32 24092, i32 0, i32 0 }, %struct.sensor_val { i32 603, i32 3, i32 0, i32 0 }, %struct.sensor_val { i32 566, i32 30736, i32 0, i32 0 }, %struct.sensor_val { i32 567, i32 33540, i32 0, i32 0 }, %struct.sensor_val { i32 8, i32 33, i32 0, i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @stk1135_configure_mt9m112 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stk1135_configure_mt9m112(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @ARRAY_SIZE(%struct.sensor_val* getelementptr inbounds ([123 x %struct.sensor_val], [123 x %struct.sensor_val]* @stk1135_configure_mt9m112.cfg, i64 0, i64 0))
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [123 x %struct.sensor_val], [123 x %struct.sensor_val]* @stk1135_configure_mt9m112.cfg, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.sensor_val, %struct.sensor_val* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [123 x %struct.sensor_val], [123 x %struct.sensor_val]* @stk1135_configure_mt9m112.cfg, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.sensor_val, %struct.sensor_val* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sensor_write(%struct.gspca_dev* %11, i32 %16, i32 %21)
  br label %23

23:                                               ; preds = %10
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %6

26:                                               ; preds = %6
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp sle i32 %35, 640
  br i1 %36, label %37, label %51

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = icmp sle i32 %38, 512
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @sensor_write(%struct.gspca_dev* %41, i32 423, i32 %42)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @sensor_write(%struct.gspca_dev* %44, i32 426, i32 %45)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = call i32 @sensor_write(%struct.gspca_dev* %47, i32 200, i32 0)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = call i32 @sensor_write(%struct.gspca_dev* %49, i32 712, i32 0)
  br label %62

51:                                               ; preds = %37, %26
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @sensor_write(%struct.gspca_dev* %52, i32 417, i32 %53)
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @sensor_write(%struct.gspca_dev* %55, i32 420, i32 %56)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %59 = call i32 @sensor_write(%struct.gspca_dev* %58, i32 200, i32 8)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %61 = call i32 @sensor_write(%struct.gspca_dev* %60, i32 712, i32 1035)
  br label %62

62:                                               ; preds = %51, %40
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.sensor_val*) #1

declare dso_local i32 @sensor_write(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
