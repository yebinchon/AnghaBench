; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda8425_setaudmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda8425_setaudmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@TDA8425_S1 = common dso_local global i32 0, align 4
@TDA8425_S1_ML_SOUND_A = common dso_local global i32 0, align 4
@TDA8425_S1_STEREO_PSEUDO = common dso_local global i32 0, align 4
@TDA8425_S1_ML_SOUND_B = common dso_local global i32 0, align 4
@TDA8425_S1_ML_STEREO = common dso_local global i32 0, align 4
@TDA8425_S1_STEREO_LINEAR = common dso_local global i32 0, align 4
@TDA8425_S1_STEREO_MONO = common dso_local global i32 0, align 4
@TDA8425_S1_STEREO_SPATIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CHIPSTATE*, i32)* @tda8425_setaudmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda8425_setaudmode(%struct.CHIPSTATE* %0, i32 %1) #0 {
  %3 = alloca %struct.CHIPSTATE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %7 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* @TDA8425_S1, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 225
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %52 [
    i32 132, label %17
    i32 130, label %24
    i32 131, label %31
    i32 129, label %38
    i32 128, label %45
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @TDA8425_S1_ML_SOUND_A, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @TDA8425_S1_STEREO_PSEUDO, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load i32, i32* @TDA8425_S1_ML_SOUND_B, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @TDA8425_S1_STEREO_PSEUDO, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %53

31:                                               ; preds = %2
  %32 = load i32, i32* @TDA8425_S1_ML_STEREO, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @TDA8425_S1_STEREO_LINEAR, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %53

38:                                               ; preds = %2
  %39 = load i32, i32* @TDA8425_S1_ML_STEREO, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @TDA8425_S1_STEREO_MONO, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %53

45:                                               ; preds = %2
  %46 = load i32, i32* @TDA8425_S1_ML_STEREO, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @TDA8425_S1_STEREO_SPATIAL, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %2
  br label %58

53:                                               ; preds = %45, %38, %31, %24, %17
  %54 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %55 = load i32, i32* @TDA8425_S1, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @chip_write(%struct.CHIPSTATE* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %52
  ret void
}

declare dso_local i32 @chip_write(%struct.CHIPSTATE*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
