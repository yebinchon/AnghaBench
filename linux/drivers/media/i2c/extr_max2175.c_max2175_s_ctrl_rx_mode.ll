; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_s_ctrl_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_s_ctrl_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2175 = type { %struct.TYPE_5__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"s_ctrl_rx_mode: %u curr freq %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max2175*, i64)* @max2175_s_ctrl_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max2175_s_ctrl_rx_mode(%struct.max2175* %0, i64 %1) #0 {
  %3 = alloca %struct.max2175*, align 8
  %4 = alloca i64, align 8
  store %struct.max2175* %0, %struct.max2175** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.max2175*, %struct.max2175** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @max2175_set_rx_mode(%struct.max2175* %5, i64 %6)
  %8 = load %struct.max2175*, %struct.max2175** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.max2175*, %struct.max2175** %3, align 8
  %11 = getelementptr inbounds %struct.max2175, %struct.max2175* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @mxm_dbg(%struct.max2175* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %9, i32 %12)
  %14 = load %struct.max2175*, %struct.max2175** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.max2175*, %struct.max2175** %3, align 8
  %17 = getelementptr inbounds %struct.max2175, %struct.max2175* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @max2175_freq_rx_mode_valid(%struct.max2175* %14, i64 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.max2175*, %struct.max2175** %3, align 8
  %23 = load %struct.max2175*, %struct.max2175** %3, align 8
  %24 = getelementptr inbounds %struct.max2175, %struct.max2175* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.max2175*, %struct.max2175** %3, align 8
  %27 = getelementptr inbounds %struct.max2175, %struct.max2175* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @max2175_tune_rf_freq(%struct.max2175* %22, i32 %25, i32 %31)
  br label %49

33:                                               ; preds = %2
  %34 = load %struct.max2175*, %struct.max2175** %3, align 8
  %35 = load %struct.max2175*, %struct.max2175** %3, align 8
  %36 = getelementptr inbounds %struct.max2175, %struct.max2175* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.max2175*, %struct.max2175** %3, align 8
  %43 = getelementptr inbounds %struct.max2175, %struct.max2175* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @max2175_tune_rf_freq(%struct.max2175* %34, i32 %41, i32 %47)
  br label %49

49:                                               ; preds = %33, %21
  ret void
}

declare dso_local i32 @max2175_set_rx_mode(%struct.max2175*, i64) #1

declare dso_local i32 @mxm_dbg(%struct.max2175*, i8*, i64, i32) #1

declare dso_local i64 @max2175_freq_rx_mode_valid(%struct.max2175*, i64, i32) #1

declare dso_local i32 @max2175_tune_rf_freq(%struct.max2175*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
