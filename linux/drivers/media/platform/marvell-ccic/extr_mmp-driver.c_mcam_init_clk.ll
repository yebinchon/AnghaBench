; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mmp-driver.c_mcam_init_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mmp-driver.c_mcam_init_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { i32, i32* }

@NR_MCAM_CLK = common dso_local global i32 0, align 4
@mcam_clks = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Could not get clk: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcam_camera*)* @mcam_init_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcam_init_clk(%struct.mcam_camera* %0) #0 {
  %2 = alloca %struct.mcam_camera*, align 8
  %3 = alloca i32, align 4
  store %struct.mcam_camera* %0, %struct.mcam_camera** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %52, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @NR_MCAM_CLK, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %55

8:                                                ; preds = %4
  %9 = load i32**, i32*** @mcam_clks, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32*, i32** %9, i64 %11
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %8
  %16 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %17 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32**, i32*** @mcam_clks, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @devm_clk_get(i32 %18, i32* %23)
  %25 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %26 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %24, i32* %30, align 4
  %31 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %32 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %15
  %41 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %42 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32**, i32*** @mcam_clks, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @dev_warn(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %48)
  br label %50

50:                                               ; preds = %40, %15
  br label %51

51:                                               ; preds = %50, %8
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %3, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %4

55:                                               ; preds = %4
  ret void
}

declare dso_local i32 @devm_clk_get(i32, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
