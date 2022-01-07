; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_presets_data_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_presets_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.s5k6aa = type { %struct.s5k6aa_preset*, %struct.s5k6aa_preset*, i32* }
%struct.s5k6aa_preset = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@S5K6AA_MAX_PRESETS = common dso_local global i32 0, align 4
@S5K6AA_OUT_WIDTH_DEF = common dso_local global i32 0, align 4
@S5K6AA_OUT_HEIGHT_DEF = common dso_local global i32 0, align 4
@s5k6aa_formats = common dso_local global %struct.TYPE_4__* null, align 8
@s5k6aa_intervals = common dso_local global i32* null, align 8
@S5K6AA_INTERVAL_DEF_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5k6aa*)* @s5k6aa_presets_data_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k6aa_presets_data_init(%struct.s5k6aa* %0) #0 {
  %2 = alloca %struct.s5k6aa*, align 8
  %3 = alloca %struct.s5k6aa_preset*, align 8
  %4 = alloca i32, align 4
  store %struct.s5k6aa* %0, %struct.s5k6aa** %2, align 8
  %5 = load %struct.s5k6aa*, %struct.s5k6aa** %2, align 8
  %6 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %5, i32 0, i32 0
  %7 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %6, align 8
  %8 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %7, i64 0
  store %struct.s5k6aa_preset* %8, %struct.s5k6aa_preset** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %36, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @S5K6AA_MAX_PRESETS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %9
  %14 = load i32, i32* @S5K6AA_OUT_WIDTH_DEF, align 4
  %15 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %3, align 8
  %16 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* @S5K6AA_OUT_HEIGHT_DEF, align 4
  %19 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %3, align 8
  %20 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s5k6aa_formats, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %3, align 8
  %27 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %3, align 8
  %31 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %3, align 8
  %33 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %3, align 8
  %35 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %34, i32 1
  store %struct.s5k6aa_preset* %35, %struct.s5k6aa_preset** %3, align 8
  br label %36

36:                                               ; preds = %13
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %9

39:                                               ; preds = %9
  %40 = load i32*, i32** @s5k6aa_intervals, align 8
  %41 = load i64, i64* @S5K6AA_INTERVAL_DEF_INDEX, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load %struct.s5k6aa*, %struct.s5k6aa** %2, align 8
  %44 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.s5k6aa*, %struct.s5k6aa** %2, align 8
  %46 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %45, i32 0, i32 0
  %47 = load %struct.s5k6aa_preset*, %struct.s5k6aa_preset** %46, align 8
  %48 = getelementptr inbounds %struct.s5k6aa_preset, %struct.s5k6aa_preset* %47, i64 0
  %49 = load %struct.s5k6aa*, %struct.s5k6aa** %2, align 8
  %50 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %49, i32 0, i32 1
  store %struct.s5k6aa_preset* %48, %struct.s5k6aa_preset** %50, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
