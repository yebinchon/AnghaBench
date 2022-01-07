; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_nw80x.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_nw80x.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sd = type { i64, i64, i64 }

@webcam_start = common dso_local global i32** null, align 8
@nw801_start_qvga = common dso_local global i32* null, align 8
@nw801_start_vga = common dso_local global i32* null, align 8
@nw801_start_2 = common dso_local global i32* null, align 8
@kr651_start_qvga = common dso_local global i32* null, align 8
@kr651_start_vga = common dso_local global i32* null, align 8
@kr651_start_2 = common dso_local global i32* null, align 8
@proscope_start_qvga = common dso_local global i32* null, align 8
@proscope_start_vga = common dso_local global i32* null, align 8
@proscope_start_2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load i32**, i32*** @webcam_start, align 8
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32*, i32** %7, i64 %10
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @reg_w_buf(%struct.gspca_dev* %13, i32* %14)
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  switch i64 %18, label %73 [
    i64 129, label %19
    i64 130, label %37
    i64 128, label %55
  ]

19:                                               ; preds = %1
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 320
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = load i32*, i32** @nw801_start_qvga, align 8
  %28 = call i32 @reg_w_buf(%struct.gspca_dev* %26, i32* %27)
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = load i32*, i32** @nw801_start_vga, align 8
  %32 = call i32 @reg_w_buf(%struct.gspca_dev* %30, i32* %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = load i32*, i32** @nw801_start_2, align 8
  %36 = call i32 @reg_w_buf(%struct.gspca_dev* %34, i32* %35)
  br label %73

37:                                               ; preds = %1
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 320
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = load i32*, i32** @kr651_start_qvga, align 8
  %46 = call i32 @reg_w_buf(%struct.gspca_dev* %44, i32* %45)
  br label %51

47:                                               ; preds = %37
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = load i32*, i32** @kr651_start_vga, align 8
  %50 = call i32 @reg_w_buf(%struct.gspca_dev* %48, i32* %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = load i32*, i32** @kr651_start_2, align 8
  %54 = call i32 @reg_w_buf(%struct.gspca_dev* %52, i32* %53)
  br label %73

55:                                               ; preds = %1
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 320
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = load i32*, i32** @proscope_start_qvga, align 8
  %64 = call i32 @reg_w_buf(%struct.gspca_dev* %62, i32* %63)
  br label %69

65:                                               ; preds = %55
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %67 = load i32*, i32** @proscope_start_vga, align 8
  %68 = call i32 @reg_w_buf(%struct.gspca_dev* %66, i32* %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = load i32*, i32** @proscope_start_2, align 8
  %72 = call i32 @reg_w_buf(%struct.gspca_dev* %70, i32* %71)
  br label %73

73:                                               ; preds = %1, %69, %51, %33
  %74 = load %struct.sd*, %struct.sd** %3, align 8
  %75 = getelementptr inbounds %struct.sd, %struct.sd* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.sd*, %struct.sd** %3, align 8
  %77 = getelementptr inbounds %struct.sd, %struct.sd* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  ret i32 %80
}

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
