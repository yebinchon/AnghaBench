; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_setcolors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_setcolors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@setcolors.uv_com = internal constant [6 x i32] [i32 -24, i32 -38, i32 64, i32 62, i32 -51, i32 -9], align 16
@setcolors.uv_mi0360b = internal constant [6 x i32] [i32 -20, i32 -38, i32 64, i32 60, i32 -51, i32 -9], align 16
@SENSOR_MI0360B = common dso_local global i64 0, align 8
@COLORS_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setcolors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setcolors(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [12 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %3, align 8
  %11 = load %struct.sd*, %struct.sd** %3, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SENSOR_MI0360B, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @setcolors.uv_mi0360b, i64 0, i64 0), i32** %7, align 8
  br label %23

22:                                               ; preds = %1
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @setcolors.uv_com, i64 0, i64 0), i32** %7, align 8
  br label %23

23:                                               ; preds = %22, %21
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %50, %23
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 6
  br i1 %26, label %27, label %53

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* @COLORS_DEF, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = mul nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 15
  %45 = load i32, i32* %4, align 4
  %46 = mul nsw i32 %45, 2
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 %48
  store i32 %44, i32* %49, align 4
  br label %50

50:                                               ; preds = %27
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %24

53:                                               ; preds = %24
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %56 = call i32 @reg_w(%struct.gspca_dev* %54, i32 138, i32* %55, i32 48)
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
