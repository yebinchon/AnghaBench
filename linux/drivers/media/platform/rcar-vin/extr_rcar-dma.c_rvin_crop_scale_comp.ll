; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_crop_scale_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_crop_scale_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.rvin_video_format = type { i32 }

@VNSPPRC_REG = common dso_local global i32 0, align 4
@VNEPPRC_REG = common dso_local global i32 0, align 4
@VNSLPRC_REG = common dso_local global i32 0, align 4
@VNELPRC_REG = common dso_local global i32 0, align 4
@RCAR_GEN3 = common dso_local global i64 0, align 8
@VNIS_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvin_crop_scale_comp(%struct.rvin_dev* %0) #0 {
  %2 = alloca %struct.rvin_dev*, align 8
  %3 = alloca %struct.rvin_video_format*, align 8
  %4 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %2, align 8
  %5 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %6 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @VNSPPRC_REG, align 4
  %11 = call i32 @rvin_write(%struct.rvin_dev* %5, i32 %9, i32 %10)
  %12 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %13 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %14 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %18 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %16, %20
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* @VNEPPRC_REG, align 4
  %24 = call i32 @rvin_write(%struct.rvin_dev* %12, i32 %22, i32 %23)
  %25 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %26 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %52 [
    i32 130, label %29
    i32 128, label %29
    i32 129, label %29
  ]

29:                                               ; preds = %1, %1, %1
  %30 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %31 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %32 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 2
  %36 = load i32, i32* @VNSLPRC_REG, align 4
  %37 = call i32 @rvin_write(%struct.rvin_dev* %30, i32 %35, i32 %36)
  %38 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %39 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %40 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %44 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %42, %46
  %48 = sdiv i32 %47, 2
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* @VNELPRC_REG, align 4
  %51 = call i32 @rvin_write(%struct.rvin_dev* %38, i32 %49, i32 %50)
  br label %73

52:                                               ; preds = %1
  %53 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %54 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %55 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @VNSLPRC_REG, align 4
  %59 = call i32 @rvin_write(%struct.rvin_dev* %53, i32 %57, i32 %58)
  %60 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %61 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %62 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %66 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %64, %68
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* @VNELPRC_REG, align 4
  %72 = call i32 @rvin_write(%struct.rvin_dev* %60, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %52, %29
  %74 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %75 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RCAR_GEN3, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %83 = call i32 @rvin_crop_scale_comp_gen2(%struct.rvin_dev* %82)
  br label %84

84:                                               ; preds = %81, %73
  %85 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %86 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %87 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call %struct.rvin_video_format* @rvin_format_from_pixel(%struct.rvin_dev* %85, i32 %89)
  store %struct.rvin_video_format* %90, %struct.rvin_video_format** %3, align 8
  %91 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %92 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rvin_video_format*, %struct.rvin_video_format** %3, align 8
  %96 = getelementptr inbounds %struct.rvin_video_format, %struct.rvin_video_format* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sdiv i32 %94, %97
  store i32 %98, i32* %4, align 4
  %99 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @VNIS_REG, align 4
  %102 = call i32 @rvin_write(%struct.rvin_dev* %99, i32 %100, i32 %101)
  ret void
}

declare dso_local i32 @rvin_write(%struct.rvin_dev*, i32, i32) #1

declare dso_local i32 @rvin_crop_scale_comp_gen2(%struct.rvin_dev*) #1

declare dso_local %struct.rvin_video_format* @rvin_format_from_pixel(%struct.rvin_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
