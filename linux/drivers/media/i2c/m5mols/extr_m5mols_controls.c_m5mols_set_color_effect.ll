; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_controls.c_m5mols_set_color_effect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_controls.c_m5mols_set_color_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m5mols_info = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@REG_COLOR_EFFECT_OFF = common dso_local global i32 0, align 4
@REG_EFFECT_OFF = common dso_local global i32 0, align 4
@REG_COLOR_EFFECT_ON = common dso_local global i32 0, align 4
@REG_EFFECT_NEGA = common dso_local global i32 0, align 4
@REG_EFFECT_EMBOSS = common dso_local global i32 0, align 4
@REG_CFIXR_SEPIA = common dso_local global i32 0, align 4
@REG_CFIXB_SEPIA = common dso_local global i32 0, align 4
@PARM_EFFECT = common dso_local global i32 0, align 4
@MON_EFFECT = common dso_local global i32 0, align 4
@MON_CFIXR = common dso_local global i32 0, align 4
@MON_CFIXB = common dso_local global i32 0, align 4
@m5mols_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"p_effect: %#x, m_effect: %#x, r: %#x, b: %#x (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m5mols_info*, i32)* @m5mols_set_color_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5mols_set_color_effect(%struct.m5mols_info* %0, i32 %1) #0 {
  %3 = alloca %struct.m5mols_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca i32, align 4
  store %struct.m5mols_info* %0, %struct.m5mols_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @REG_COLOR_EFFECT_OFF, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @REG_EFFECT_OFF, align 4
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.m5mols_info*, %struct.m5mols_info** %3, align 8
  %14 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %13, i32 0, i32 0
  store %struct.v4l2_subdev* %14, %struct.v4l2_subdev** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %26 [
    i32 131, label %16
    i32 129, label %18
    i32 130, label %20
    i32 128, label %22
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @REG_COLOR_EFFECT_ON, align 4
  store i32 %17, i32* %5, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load i32, i32* @REG_EFFECT_NEGA, align 4
  store i32 %19, i32* %6, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @REG_EFFECT_EMBOSS, align 4
  store i32 %21, i32* %6, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @REG_COLOR_EFFECT_ON, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @REG_CFIXR_SEPIA, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @REG_CFIXB_SEPIA, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %2, %22, %20, %18, %16
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %28 = load i32, i32* @PARM_EFFECT, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @m5mols_write(%struct.v4l2_subdev* %27, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %35 = load i32, i32* @MON_EFFECT, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @m5mols_write(%struct.v4l2_subdev* %34, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @REG_COLOR_EFFECT_ON, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %47 = load i32, i32* @MON_CFIXR, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @m5mols_write(%struct.v4l2_subdev* %46, i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %54 = load i32, i32* @MON_CFIXB, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @m5mols_write(%struct.v4l2_subdev* %53, i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %52, %45
  br label %58

58:                                               ; preds = %57, %41, %38
  %59 = load i32, i32* @m5mols_debug, align 4
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @v4l2_dbg(i32 1, i32 %59, %struct.v4l2_subdev* %60, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @m5mols_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
