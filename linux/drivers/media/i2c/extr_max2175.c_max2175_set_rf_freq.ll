; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_set_rf_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_set_rf_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2175 = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"set_rf_freq: ret %d freq %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max2175*, i32, i32)* @max2175_set_rf_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2175_set_rf_freq(%struct.max2175* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.max2175*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.max2175* %0, %struct.max2175** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.max2175*, %struct.max2175** %4, align 8
  %9 = call i64 @MAX2175_IS_BAND_AM(%struct.max2175* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.max2175*, %struct.max2175** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @max2175_set_nco_freq(%struct.max2175* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  br label %20

15:                                               ; preds = %3
  %16 = load %struct.max2175*, %struct.max2175** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @max2175_set_rf_freq_non_am_bands(%struct.max2175* %16, i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %15, %11
  %21 = load %struct.max2175*, %struct.max2175** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @mxm_dbg(%struct.max2175* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i64 @MAX2175_IS_BAND_AM(%struct.max2175*) #1

declare dso_local i32 @max2175_set_nco_freq(%struct.max2175*, i32) #1

declare dso_local i32 @max2175_set_rf_freq_non_am_bands(%struct.max2175*, i32, i32) #1

declare dso_local i32 @mxm_dbg(%struct.max2175*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
