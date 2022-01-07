; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_csm_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_csm_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2175 = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"csm_action: %d\0A\00", align 1
@MAX2175_LOAD_TO_BUFFER = common dso_local global i32 0, align 4
@MAX2175_PRESET_TUNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max2175*, i32)* @max2175_csm_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2175_csm_action(%struct.max2175* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max2175*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max2175* %0, %struct.max2175** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.max2175*, %struct.max2175** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @mxm_dbg(%struct.max2175* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.max2175*, %struct.max2175** %4, align 8
  %11 = load i32, i32* @MAX2175_LOAD_TO_BUFFER, align 4
  %12 = call i32 @max2175_set_csm_mode(%struct.max2175* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.max2175*, %struct.max2175** %4, align 8
  %19 = load i32, i32* @MAX2175_PRESET_TUNE, align 4
  %20 = call i32 @max2175_set_csm_mode(%struct.max2175* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %15
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @mxm_dbg(%struct.max2175*, i8*, i32) #1

declare dso_local i32 @max2175_set_csm_mode(%struct.max2175*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
