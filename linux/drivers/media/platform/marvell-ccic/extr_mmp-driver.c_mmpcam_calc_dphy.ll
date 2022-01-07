; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mmp-driver.c_mmpcam_calc_dphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mmp-driver.c_mmpcam_calc_dphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { i32 }
%struct.mmp_camera = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { %struct.mmp_camera_platform_data* }
%struct.mmp_camera_platform_data = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [42 x i8] c"camera: use the default CSI2_DPHY3 value\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"camera: DPHY sets: dphy3=0x%x, dphy5=0x%x, dphy6=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcam_camera*)* @mmpcam_calc_dphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmpcam_calc_dphy(%struct.mcam_camera* %0) #0 {
  %2 = alloca %struct.mcam_camera*, align 8
  %3 = alloca %struct.mmp_camera*, align 8
  %4 = alloca %struct.mmp_camera_platform_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  store %struct.mcam_camera* %0, %struct.mcam_camera** %2, align 8
  %7 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %8 = call %struct.mmp_camera* @mcam_to_cam(%struct.mcam_camera* %7)
  store %struct.mmp_camera* %8, %struct.mmp_camera** %3, align 8
  %9 = load %struct.mmp_camera*, %struct.mmp_camera** %3, align 8
  %10 = getelementptr inbounds %struct.mmp_camera, %struct.mmp_camera* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %13, align 8
  store %struct.mmp_camera_platform_data* %14, %struct.mmp_camera_platform_data** %4, align 8
  %15 = load %struct.mmp_camera*, %struct.mmp_camera** %3, align 8
  %16 = getelementptr inbounds %struct.mmp_camera, %struct.mmp_camera* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %5, align 8
  %19 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %4, align 8
  %20 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %62 [
    i32 128, label %22
    i32 129, label %42
  ]

22:                                               ; preds = %1
  %23 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %4, align 8
  %24 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 80
  %27 = sdiv i32 %26, 1000
  %28 = add nsw i32 1, %27
  %29 = and i32 %28, 255
  %30 = shl i32 %29, 8
  %31 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %4, align 8
  %32 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %33, 35
  %35 = sdiv i32 %34, 1000
  %36 = add nsw i32 1, %35
  %37 = or i32 %30, %36
  %38 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %4, align 8
  %39 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %37, i32* %41, align 4
  br label %65

42:                                               ; preds = %1
  %43 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %4, align 8
  %44 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 110
  %47 = sdiv i32 %46, 1000
  %48 = add nsw i32 2, %47
  %49 = and i32 %48, 255
  %50 = shl i32 %49, 8
  %51 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %4, align 8
  %52 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %53, 35
  %55 = sdiv i32 %54, 1000
  %56 = add nsw i32 1, %55
  %57 = or i32 %50, %56
  %58 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %4, align 8
  %59 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %57, i32* %61, align 4
  br label %65

62:                                               ; preds = %1
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %42, %22
  %66 = load %struct.mmp_camera*, %struct.mmp_camera** %3, align 8
  %67 = getelementptr inbounds %struct.mmp_camera, %struct.mmp_camera* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %122

72:                                               ; preds = %65
  %73 = load %struct.mmp_camera*, %struct.mmp_camera** %3, align 8
  %74 = getelementptr inbounds %struct.mmp_camera, %struct.mmp_camera* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @clk_prepare_enable(i32 %75)
  %77 = load %struct.mmp_camera*, %struct.mmp_camera** %3, align 8
  %78 = getelementptr inbounds %struct.mmp_camera, %struct.mmp_camera* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @clk_get_rate(i32 %79)
  %81 = sdiv i32 %80, 1000000
  %82 = sdiv i32 %81, 12
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %6, align 8
  %84 = load %struct.mmp_camera*, %struct.mmp_camera** %3, align 8
  %85 = getelementptr inbounds %struct.mmp_camera, %struct.mmp_camera* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @clk_disable_unprepare(i32 %86)
  %88 = load i64, i64* %6, align 8
  %89 = mul i64 534, %88
  %90 = udiv i64 %89, 2000
  %91 = sub i64 %90, 1
  %92 = and i64 %91, 255
  %93 = shl i64 %92, 8
  %94 = load i64, i64* %6, align 8
  %95 = mul i64 38, %94
  %96 = udiv i64 %95, 1000
  %97 = sub i64 %96, 1
  %98 = and i64 %97, 255
  %99 = or i64 %93, %98
  %100 = trunc i64 %99 to i32
  %101 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %4, align 8
  %102 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  store i32 %100, i32* %104, align 4
  %105 = load %struct.device*, %struct.device** %5, align 8
  %106 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %4, align 8
  %107 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %4, align 8
  %112 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mmp_camera_platform_data*, %struct.mmp_camera_platform_data** %4, align 8
  %117 = getelementptr inbounds %struct.mmp_camera_platform_data, %struct.mmp_camera_platform_data* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %105, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %115, i32 %120)
  br label %122

122:                                              ; preds = %72, %71
  ret void
}

declare dso_local %struct.mmp_camera* @mcam_to_cam(%struct.mcam_camera*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
