; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2175 = type { i64, i32 }

@MAX2175_EU_XTAL_FREQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"refout_bits %u\0A\00", align 1
@MAX2175_CH_MSEL = common dso_local global i32 0, align 4
@ch_coeff_fmeu = common dso_local global i32 0, align 4
@MAX2175_EQ_MSEL = common dso_local global i32 0, align 4
@eq_coeff_fmeu1_ra02_m6db = common dso_local global i32 0, align 4
@ch_coeff_fmna = common dso_local global i32 0, align 4
@eq_coeff_fmna1_ra02_m6db = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"core initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max2175*, i32)* @max2175_core_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2175_core_init(%struct.max2175* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max2175*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max2175* %0, %struct.max2175** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.max2175*, %struct.max2175** %4, align 8
  %8 = getelementptr inbounds %struct.max2175, %struct.max2175* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MAX2175_EU_XTAL_FREQ, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.max2175*, %struct.max2175** %4, align 8
  %14 = call i32 @max2175_load_full_fm_eu_1p0(%struct.max2175* %13)
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.max2175*, %struct.max2175** %4, align 8
  %17 = call i32 @max2175_load_full_fm_na_1p0(%struct.max2175* %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.max2175*, %struct.max2175** %4, align 8
  %20 = getelementptr inbounds %struct.max2175, %struct.max2175* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load %struct.max2175*, %struct.max2175** %4, align 8
  %25 = call i32 @max2175_write_bit(%struct.max2175* %24, i32 30, i32 7, i32 1)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.max2175*, %struct.max2175** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (%struct.max2175*, i8*, ...) @mxm_dbg(%struct.max2175* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.max2175*, %struct.max2175** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @max2175_write_bits(%struct.max2175* %30, i32 56, i32 7, i32 5, i32 %31)
  %33 = load %struct.max2175*, %struct.max2175** %4, align 8
  %34 = call i32 @max2175_write_bit(%struct.max2175* %33, i32 99, i32 1, i32 0)
  %35 = call i32 @usleep_range(i32 1000, i32 1500)
  %36 = load %struct.max2175*, %struct.max2175** %4, align 8
  %37 = call i32 @max2175_write_bit(%struct.max2175* %36, i32 99, i32 1, i32 1)
  %38 = load %struct.max2175*, %struct.max2175** %4, align 8
  %39 = call i32 @max2175_load_adc_presets(%struct.max2175* %38)
  %40 = load %struct.max2175*, %struct.max2175** %4, align 8
  %41 = call i32 @max2175_init_power_manager(%struct.max2175* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %26
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %82

46:                                               ; preds = %26
  %47 = load %struct.max2175*, %struct.max2175** %4, align 8
  %48 = call i32 @max2175_recalibrate_adc(%struct.max2175* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %82

53:                                               ; preds = %46
  %54 = load %struct.max2175*, %struct.max2175** %4, align 8
  %55 = call i32 @max2175_load_from_rom(%struct.max2175* %54)
  %56 = load %struct.max2175*, %struct.max2175** %4, align 8
  %57 = getelementptr inbounds %struct.max2175, %struct.max2175* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MAX2175_EU_XTAL_FREQ, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.max2175*, %struct.max2175** %4, align 8
  %63 = load i32, i32* @MAX2175_CH_MSEL, align 4
  %64 = load i32, i32* @ch_coeff_fmeu, align 4
  %65 = call i32 @max2175_set_filter_coeffs(%struct.max2175* %62, i32 %63, i32 0, i32 %64)
  %66 = load %struct.max2175*, %struct.max2175** %4, align 8
  %67 = load i32, i32* @MAX2175_EQ_MSEL, align 4
  %68 = load i32, i32* @eq_coeff_fmeu1_ra02_m6db, align 4
  %69 = call i32 @max2175_set_filter_coeffs(%struct.max2175* %66, i32 %67, i32 0, i32 %68)
  br label %79

70:                                               ; preds = %53
  %71 = load %struct.max2175*, %struct.max2175** %4, align 8
  %72 = load i32, i32* @MAX2175_CH_MSEL, align 4
  %73 = load i32, i32* @ch_coeff_fmna, align 4
  %74 = call i32 @max2175_set_filter_coeffs(%struct.max2175* %71, i32 %72, i32 0, i32 %73)
  %75 = load %struct.max2175*, %struct.max2175** %4, align 8
  %76 = load i32, i32* @MAX2175_EQ_MSEL, align 4
  %77 = load i32, i32* @eq_coeff_fmna1_ra02_m6db, align 4
  %78 = call i32 @max2175_set_filter_coeffs(%struct.max2175* %75, i32 %76, i32 0, i32 %77)
  br label %79

79:                                               ; preds = %70, %61
  %80 = load %struct.max2175*, %struct.max2175** %4, align 8
  %81 = call i32 (%struct.max2175*, i8*, ...) @mxm_dbg(%struct.max2175* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %51, %44
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @max2175_load_full_fm_eu_1p0(%struct.max2175*) #1

declare dso_local i32 @max2175_load_full_fm_na_1p0(%struct.max2175*) #1

declare dso_local i32 @max2175_write_bit(%struct.max2175*, i32, i32, i32) #1

declare dso_local i32 @mxm_dbg(%struct.max2175*, i8*, ...) #1

declare dso_local i32 @max2175_write_bits(%struct.max2175*, i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @max2175_load_adc_presets(%struct.max2175*) #1

declare dso_local i32 @max2175_init_power_manager(%struct.max2175*) #1

declare dso_local i32 @max2175_recalibrate_adc(%struct.max2175*) #1

declare dso_local i32 @max2175_load_from_rom(%struct.max2175*) #1

declare dso_local i32 @max2175_set_filter_coeffs(%struct.max2175*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
