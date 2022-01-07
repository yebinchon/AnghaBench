; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_camera_dev = type { i32, i32, i32, i32, i64 }

@CICR0 = common dso_local global i64 0, align 8
@PXA_CAMERA_PCLK_EN = common dso_local global i32 0, align 4
@CICR4_PCLK_EN = common dso_local global i32 0, align 4
@PXA_CAMERA_MCLK_EN = common dso_local global i32 0, align 4
@CICR4_MCLK_EN = common dso_local global i32 0, align 4
@PXA_CAMERA_PCP = common dso_local global i32 0, align 4
@CICR4_PCP = common dso_local global i32 0, align 4
@PXA_CAMERA_HSP = common dso_local global i32 0, align 4
@CICR4_HSP = common dso_local global i32 0, align 4
@PXA_CAMERA_VSP = common dso_local global i32 0, align 4
@CICR4_VSP = common dso_local global i32 0, align 4
@CICR4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_camera_dev*)* @pxa_camera_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa_camera_activate(%struct.pxa_camera_dev* %0) #0 {
  %2 = alloca %struct.pxa_camera_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pxa_camera_dev* %0, %struct.pxa_camera_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CICR0, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @__raw_writel(i32 1023, i64 %8)
  %10 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PXA_CAMERA_PCLK_EN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @CICR4_PCLK_EN, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %22 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PXA_CAMERA_MCLK_EN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @CICR4_MCLK_EN, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %33 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PXA_CAMERA_PCP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @CICR4_PCP, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %44 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PXA_CAMERA_HSP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* @CICR4_HSP, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %42
  %54 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %55 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PXA_CAMERA_VSP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @CICR4_VSP, align 4
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %66 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %71 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CICR4, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @__raw_writel(i32 %69, i64 %74)
  %76 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %77 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PXA_CAMERA_MCLK_EN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %64
  %83 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %84 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %85 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @recalculate_fifo_timeout(%struct.pxa_camera_dev* %83, i32 %86)
  br label %91

88:                                               ; preds = %64
  %89 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %90 = call i32 @recalculate_fifo_timeout(%struct.pxa_camera_dev* %89, i32 13000000)
  br label %91

91:                                               ; preds = %88, %82
  %92 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %2, align 8
  %93 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @clk_prepare_enable(i32 %94)
  ret void
}

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @recalculate_fifo_timeout(%struct.pxa_camera_dev*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
