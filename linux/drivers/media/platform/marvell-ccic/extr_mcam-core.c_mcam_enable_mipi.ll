; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_enable_mipi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_enable_mipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { i32*, i32, i32, i32 (%struct.mcam_camera*)* }

@.str = private unnamed_addr constant [44 x i8] c"camera: DPHY3=0x%x, DPHY5=0x%x, DPHY6=0x%x\0A\00", align 1
@REG_CSI2_DPHY3 = common dso_local global i32 0, align 4
@REG_CSI2_DPHY5 = common dso_local global i32 0, align 4
@REG_CSI2_DPHY6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"lane number error\0A\00", align 1
@REG_CSI2_CTRL0 = common dso_local global i32 0, align 4
@CSI2_C0_MIPI_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcam_camera*)* @mcam_enable_mipi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcam_enable_mipi(%struct.mcam_camera* %0) #0 {
  %2 = alloca %struct.mcam_camera*, align 8
  store %struct.mcam_camera* %0, %struct.mcam_camera** %2, align 8
  %3 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %4 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %3, i32 0, i32 3
  %5 = load i32 (%struct.mcam_camera*)*, i32 (%struct.mcam_camera*)** %4, align 8
  %6 = icmp ne i32 (%struct.mcam_camera*)* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %9 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %8, i32 0, i32 3
  %10 = load i32 (%struct.mcam_camera*)*, i32 (%struct.mcam_camera*)** %9, align 8
  %11 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %12 = call i32 %10(%struct.mcam_camera* %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %15 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %16 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %21 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %26 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cam_dbg(%struct.mcam_camera* %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %24, i32 %29)
  %31 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %32 = load i32, i32* @REG_CSI2_DPHY3, align 4
  %33 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %34 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mcam_reg_write(%struct.mcam_camera* %31, i32 %32, i32 %37)
  %39 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %40 = load i32, i32* @REG_CSI2_DPHY5, align 4
  %41 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %42 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mcam_reg_write(%struct.mcam_camera* %39, i32 %40, i32 %45)
  %47 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %48 = load i32, i32* @REG_CSI2_DPHY6, align 4
  %49 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %50 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mcam_reg_write(%struct.mcam_camera* %47, i32 %48, i32 %53)
  %55 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %56 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %86, label %59

59:                                               ; preds = %13
  %60 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %61 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 4
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %66 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64, %59
  %70 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %71 = call i32 @cam_warn(%struct.mcam_camera* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %73 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %72, i32 0, i32 2
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %64
  %75 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %76 = load i32, i32* @REG_CSI2_CTRL0, align 4
  %77 = load i32, i32* @CSI2_C0_MIPI_EN, align 4
  %78 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %79 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @CSI2_C0_ACT_LANE(i32 %80)
  %82 = or i32 %77, %81
  %83 = call i32 @mcam_reg_write(%struct.mcam_camera* %75, i32 %76, i32 %82)
  %84 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %85 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %84, i32 0, i32 1
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %74, %13
  ret void
}

declare dso_local i32 @cam_dbg(%struct.mcam_camera*, i8*, i32, i32, i32) #1

declare dso_local i32 @mcam_reg_write(%struct.mcam_camera*, i32, i32) #1

declare dso_local i32 @cam_warn(%struct.mcam_camera*, i8*) #1

declare dso_local i32 @CSI2_C0_ACT_LANE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
