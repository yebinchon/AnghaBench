; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_load_fmeu_1p2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_load_fmeu_1p2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.max2175 = type { i32 }

@fmeu1p2_map = common dso_local global %struct.TYPE_3__* null, align 8
@MAX2175_CH_MSEL = common dso_local global i32 0, align 4
@ch_coeff_fmeu = common dso_local global i32 0, align 4
@MAX2175_EQ_MSEL = common dso_local global i32 0, align 4
@eq_coeff_fmeu1_ra02_m6db = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max2175*)* @max2175_load_fmeu_1p2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max2175_load_fmeu_1p2(%struct.max2175* %0) #0 {
  %2 = alloca %struct.max2175*, align 8
  %3 = alloca i32, align 4
  store %struct.max2175* %0, %struct.max2175** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %24, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fmeu1p2_map, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %6)
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %4
  %10 = load %struct.max2175*, %struct.max2175** %2, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fmeu1p2_map, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fmeu1p2_map, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @max2175_write(%struct.max2175* %10, i32 %16, i32 %22)
  br label %24

24:                                               ; preds = %9
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %4

27:                                               ; preds = %4
  %28 = load %struct.max2175*, %struct.max2175** %2, align 8
  %29 = getelementptr inbounds %struct.max2175, %struct.max2175* %28, i32 0, i32 0
  store i32 36, i32* %29, align 4
  %30 = load %struct.max2175*, %struct.max2175** %2, align 8
  %31 = load i32, i32* @MAX2175_CH_MSEL, align 4
  %32 = load i32, i32* @ch_coeff_fmeu, align 4
  %33 = call i32 @max2175_set_filter_coeffs(%struct.max2175* %30, i32 %31, i32 0, i32 %32)
  %34 = load %struct.max2175*, %struct.max2175** %2, align 8
  %35 = load i32, i32* @MAX2175_EQ_MSEL, align 4
  %36 = load i32, i32* @eq_coeff_fmeu1_ra02_m6db, align 4
  %37 = call i32 @max2175_set_filter_coeffs(%struct.max2175* %34, i32 %35, i32 0, i32 %36)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @max2175_write(%struct.max2175*, i32, i32) #1

declare dso_local i32 @max2175_set_filter_coeffs(%struct.max2175*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
