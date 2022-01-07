; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_enable_bluefield_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_enable_bluefield_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32* }

@OUT_CTRL1 = common dso_local global i32 0, align 4
@OUT_CTRL_NS = common dso_local global i32 0, align 4
@VDEC_B_OUT_CTRL1 = common dso_local global i32 0, align 4
@VDEC_B_OUT_CTRL_NS = common dso_local global i32 0, align 4
@VDEC_C_OUT_CTRL1 = common dso_local global i32 0, align 4
@VDEC_C_OUT_CTRL_NS = common dso_local global i32 0, align 4
@VDEC_D_OUT_CTRL1 = common dso_local global i32 0, align 4
@VDEC_D_OUT_CTRL_NS = common dso_local global i32 0, align 4
@VDEC_E_OUT_CTRL1 = common dso_local global i32 0, align 4
@VDEC_E_OUT_CTRL_NS = common dso_local global i32 0, align 4
@VDEC_F_OUT_CTRL1 = common dso_local global i32 0, align 4
@VDEC_F_OUT_CTRL_NS = common dso_local global i32 0, align 4
@VDEC_G_OUT_CTRL1 = common dso_local global i32 0, align 4
@VDEC_G_OUT_CTRL_NS = common dso_local global i32 0, align 4
@VDEC_H_OUT_CTRL1 = common dso_local global i32 0, align 4
@VDEC_H_OUT_CTRL_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx25821_dev*, i32, i32)* @medusa_enable_bluefield_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @medusa_enable_bluefield_output(%struct.cx25821_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cx25821_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @OUT_CTRL1, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @OUT_CTRL_NS, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %14 [
    i32 135, label %15
    i32 134, label %16
    i32 133, label %19
    i32 132, label %22
    i32 131, label %25
    i32 130, label %28
    i32 129, label %31
    i32 128, label %34
  ]

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %3, %14
  br label %37

16:                                               ; preds = %3
  %17 = load i32, i32* @VDEC_B_OUT_CTRL1, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @VDEC_B_OUT_CTRL_NS, align 4
  store i32 %18, i32* %10, align 4
  br label %37

19:                                               ; preds = %3
  %20 = load i32, i32* @VDEC_C_OUT_CTRL1, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @VDEC_C_OUT_CTRL_NS, align 4
  store i32 %21, i32* %10, align 4
  br label %37

22:                                               ; preds = %3
  %23 = load i32, i32* @VDEC_D_OUT_CTRL1, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @VDEC_D_OUT_CTRL_NS, align 4
  store i32 %24, i32* %10, align 4
  br label %37

25:                                               ; preds = %3
  %26 = load i32, i32* @VDEC_E_OUT_CTRL1, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @VDEC_E_OUT_CTRL_NS, align 4
  store i32 %27, i32* %10, align 4
  br label %80

28:                                               ; preds = %3
  %29 = load i32, i32* @VDEC_F_OUT_CTRL1, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @VDEC_F_OUT_CTRL_NS, align 4
  store i32 %30, i32* %10, align 4
  br label %80

31:                                               ; preds = %3
  %32 = load i32, i32* @VDEC_G_OUT_CTRL1, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @VDEC_G_OUT_CTRL_NS, align 4
  store i32 %33, i32* %10, align 4
  br label %80

34:                                               ; preds = %3
  %35 = load i32, i32* @VDEC_H_OUT_CTRL1, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @VDEC_H_OUT_CTRL_NS, align 4
  store i32 %36, i32* %10, align 4
  br label %80

37:                                               ; preds = %22, %19, %16, %15
  %38 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %39 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @cx25821_i2c_read(i32* %41, i32 %42, i32* %8)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, -129
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, 128
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %37
  %52 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %53 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @cx25821_i2c_write(i32* %55, i32 %56, i32 %57)
  %59 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %60 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @cx25821_i2c_read(i32* %62, i32 %63, i32* %8)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, -129
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %51
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, 128
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %69, %51
  %73 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %74 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @cx25821_i2c_write(i32* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %72, %34, %31, %28, %25
  ret void
}

declare dso_local i32 @cx25821_i2c_read(i32*, i32, i32*) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
