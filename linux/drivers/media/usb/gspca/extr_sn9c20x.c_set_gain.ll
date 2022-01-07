; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_set_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64 }
%struct.sd = type { i32, i32, i32 }

@ov_gain = common dso_local global i32* null, align 8
@micron1_gain = common dso_local global i32* null, align 8
@micron2_gain = common dso_local global i32* null, align 8
@hv7131r_gain = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64)* @set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_gain(%struct.gspca_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca [8 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %10 = load %struct.sd*, %struct.sd** %5, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds i32, i32* %9, i64 1
  %14 = load %struct.sd*, %struct.sd** %5, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 16, i32* %22, align 4
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  store i32 21, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %2
  %30 = load %struct.sd*, %struct.sd** %5, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %100 [
    i32 132, label %33
    i32 131, label %33
    i32 128, label %33
    i32 129, label %33
    i32 130, label %33
    i32 134, label %42
    i32 133, label %58
    i32 135, label %74
    i32 136, label %90
  ]

33:                                               ; preds = %29, %29, %29, %29, %29
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = or i32 %35, 32
  store i32 %36, i32* %34, align 16
  %37 = load i32*, i32** @ov_gain, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 %40, i32* %41, align 4
  br label %101

42:                                               ; preds = %29
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %44 = load i32, i32* %43, align 16
  %45 = or i32 %44, 48
  store i32 %45, i32* %43, align 16
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 53, i32* %46, align 8
  %47 = load i32*, i32** @micron1_gain, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 8
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** @micron1_gain, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  store i32 %56, i32* %57, align 16
  br label %101

58:                                               ; preds = %29
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = or i32 %60, 48
  store i32 %61, i32* %59, align 16
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 47, i32* %62, align 8
  %63 = load i32*, i32** @micron1_gain, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 8
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** @micron1_gain, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  store i32 %72, i32* %73, align 16
  br label %101

74:                                               ; preds = %29
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = or i32 %76, 48
  store i32 %77, i32* %75, align 16
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 47, i32* %78, align 8
  %79 = load i32*, i32** @micron2_gain, align 8
  %80 = load i64, i64* %4, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 8
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 %83, i32* %84, align 4
  %85 = load i32*, i32** @micron2_gain, align 8
  %86 = load i64, i64* %4, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  store i32 %88, i32* %89, align 16
  br label %101

90:                                               ; preds = %29
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %92 = load i32, i32* %91, align 16
  %93 = or i32 %92, 32
  store i32 %93, i32* %91, align 16
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 48, i32* %94, align 8
  %95 = load i32*, i32** @hv7131r_gain, align 8
  %96 = load i64, i64* %4, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 %98, i32* %99, align 4
  br label %101

100:                                              ; preds = %29
  br label %105

101:                                              ; preds = %90, %74, %58, %42, %33
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %104 = call i32 @i2c_w(%struct.gspca_dev* %102, i32* %103)
  br label %105

105:                                              ; preds = %101, %100
  ret void
}

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
