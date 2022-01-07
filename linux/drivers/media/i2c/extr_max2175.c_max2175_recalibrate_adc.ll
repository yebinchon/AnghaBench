; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_recalibrate_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_recalibrate_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2175 = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"adc recalibration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max2175*)* @max2175_recalibrate_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2175_recalibrate_adc(%struct.max2175* %0) #0 {
  %2 = alloca %struct.max2175*, align 8
  %3 = alloca i32, align 4
  store %struct.max2175* %0, %struct.max2175** %2, align 8
  %4 = load %struct.max2175*, %struct.max2175** %2, align 8
  %5 = call i32 @max2175_write(%struct.max2175* %4, i32 150, i32 255)
  %6 = load %struct.max2175*, %struct.max2175** %2, align 8
  %7 = call i32 @max2175_write(%struct.max2175* %6, i32 205, i32 255)
  %8 = load %struct.max2175*, %struct.max2175** %2, align 8
  %9 = call i32 @max2175_write(%struct.max2175* %8, i32 147, i32 32)
  %10 = load %struct.max2175*, %struct.max2175** %2, align 8
  %11 = call i32 @max2175_write(%struct.max2175* %10, i32 147, i32 0)
  %12 = load %struct.max2175*, %struct.max2175** %2, align 8
  %13 = call i32 @max2175_write(%struct.max2175* %12, i32 202, i32 32)
  %14 = load %struct.max2175*, %struct.max2175** %2, align 8
  %15 = call i32 @max2175_write(%struct.max2175* %14, i32 202, i32 0)
  %16 = load %struct.max2175*, %struct.max2175** %2, align 8
  %17 = call i32 @max2175_poll_timeout(%struct.max2175* %16, i32 69, i32 4, i32 3, i32 3, i32 50000)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.max2175*, %struct.max2175** %2, align 8
  %22 = call i32 @mxm_err(%struct.max2175* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @max2175_write(%struct.max2175*, i32, i32) #1

declare dso_local i32 @max2175_poll_timeout(%struct.max2175*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mxm_err(%struct.max2175*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
