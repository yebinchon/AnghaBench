; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_crop_scale_comp_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_crop_scale_comp_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@VNYS_REG = common dso_local global i32 0, align 4
@VNXS_REG = common dso_local global i32 0, align 4
@VNSPPOC_REG = common dso_local global i32 0, align 4
@VNSLPOC_REG = common dso_local global i32 0, align 4
@VNEPPOC_REG = common dso_local global i32 0, align 4
@VNELPOC_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Pre-Clip: %ux%u@%u:%u YS: %d XS: %d Post-Clip: %ux%u@%u:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvin_dev*)* @rvin_crop_scale_comp_gen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvin_crop_scale_comp_gen2(%struct.rvin_dev* %0) #0 {
  %2 = alloca %struct.rvin_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %10 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %8, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %16 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 4096, %18
  %20 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %21 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %19, %23
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %14, %1
  %26 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @VNYS_REG, align 4
  %29 = call i32 @rvin_write(%struct.rvin_dev* %26, i32 %27, i32 %28)
  store i32 0, i32* %3, align 4
  %30 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %31 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %35 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %33, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %25
  %40 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %41 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 4096, %43
  %45 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %46 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %44, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %39, %25
  %51 = load i32, i32* %3, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = icmp slt i32 %54, 2048
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 2048, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %53, %50
  %58 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @VNXS_REG, align 4
  %61 = call i32 @rvin_write(%struct.rvin_dev* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 4096
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %3, align 4
  %66 = mul nsw i32 %65, 2
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %57
  %68 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @rvin_set_coeff(%struct.rvin_dev* %68, i32 %69)
  %71 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %72 = load i32, i32* @VNSPPOC_REG, align 4
  %73 = call i32 @rvin_write(%struct.rvin_dev* %71, i32 0, i32 %72)
  %74 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %75 = load i32, i32* @VNSLPOC_REG, align 4
  %76 = call i32 @rvin_write(%struct.rvin_dev* %74, i32 0, i32 %75)
  %77 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %78 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %79 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* @VNEPPOC_REG, align 4
  %84 = call i32 @rvin_write(%struct.rvin_dev* %77, i32 %82, i32 %83)
  %85 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %86 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %99 [
    i32 130, label %89
    i32 128, label %89
    i32 129, label %89
  ]

89:                                               ; preds = %67, %67, %67
  %90 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %91 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %92 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %94, 2
  %96 = sub nsw i32 %95, 1
  %97 = load i32, i32* @VNELPOC_REG, align 4
  %98 = call i32 @rvin_write(%struct.rvin_dev* %90, i32 %96, i32 %97)
  br label %108

99:                                               ; preds = %67
  %100 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %101 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %102 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* @VNELPOC_REG, align 4
  %107 = call i32 @rvin_write(%struct.rvin_dev* %100, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %99, %89
  %109 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %110 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %111 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %115 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %119 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %123 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* %3, align 4
  %128 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %129 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.rvin_dev*, %struct.rvin_dev** %2, align 8
  %133 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @vin_dbg(%struct.rvin_dev* %109, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %117, i32 %121, i32 %125, i32 %126, i32 %127, i32 %131, i32 %135, i32 0, i32 0)
  ret void
}

declare dso_local i32 @rvin_write(%struct.rvin_dev*, i32, i32) #1

declare dso_local i32 @rvin_set_coeff(%struct.rvin_dev*, i32) #1

declare dso_local i32 @vin_dbg(%struct.rvin_dev*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
