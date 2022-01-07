; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_get_lna_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_get_lna_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2175 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max2175*)* @max2175_get_lna_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2175_get_lna_gain(%struct.max2175* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max2175*, align 8
  %4 = alloca i32, align 4
  store %struct.max2175* %0, %struct.max2175** %3, align 8
  %5 = load %struct.max2175*, %struct.max2175** %3, align 8
  %6 = call i32 @max2175_read_bits(%struct.max2175* %5, i32 5, i32 1, i32 0)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %17 [
    i32 130, label %8
    i32 129, label %11
    i32 128, label %14
  ]

8:                                                ; preds = %1
  %9 = load %struct.max2175*, %struct.max2175** %3, align 8
  %10 = call i32 @max2175_read_bits(%struct.max2175* %9, i32 51, i32 3, i32 0)
  store i32 %10, i32* %2, align 4
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.max2175*, %struct.max2175** %3, align 8
  %13 = call i32 @max2175_read_bits(%struct.max2175* %12, i32 50, i32 3, i32 0)
  store i32 %13, i32* %2, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.max2175*, %struct.max2175** %3, align 8
  %16 = call i32 @max2175_read_bits(%struct.max2175* %15, i32 52, i32 5, i32 0)
  store i32 %16, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %14, %11, %8
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @max2175_read_bits(%struct.max2175*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
