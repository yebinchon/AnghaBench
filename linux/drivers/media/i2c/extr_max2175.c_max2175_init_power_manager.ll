; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_init_power_manager.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_init_power_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2175 = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"init pm failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max2175*)* @max2175_init_power_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2175_init_power_manager(%struct.max2175* %0) #0 {
  %2 = alloca %struct.max2175*, align 8
  %3 = alloca i32, align 4
  store %struct.max2175* %0, %struct.max2175** %2, align 8
  %4 = load %struct.max2175*, %struct.max2175** %2, align 8
  %5 = call i32 @max2175_write_bit(%struct.max2175* %4, i32 99, i32 2, i32 0)
  %6 = call i32 @usleep_range(i32 1000, i32 1500)
  %7 = load %struct.max2175*, %struct.max2175** %2, align 8
  %8 = call i32 @max2175_write_bit(%struct.max2175* %7, i32 99, i32 2, i32 1)
  %9 = load %struct.max2175*, %struct.max2175** %2, align 8
  %10 = call i32 @max2175_poll_timeout(%struct.max2175* %9, i32 69, i32 7, i32 7, i32 1, i32 50000)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.max2175*, %struct.max2175** %2, align 8
  %15 = call i32 @mxm_err(%struct.max2175* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @max2175_write_bit(%struct.max2175*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @max2175_poll_timeout(%struct.max2175*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mxm_err(%struct.max2175*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
