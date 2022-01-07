; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_arizona_disable_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_arizona-core.c_arizona_disable_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arizona*)* @arizona_disable_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arizona_disable_reset(%struct.arizona* %0) #0 {
  %2 = alloca %struct.arizona*, align 8
  store %struct.arizona* %0, %struct.arizona** %2, align 8
  %3 = load %struct.arizona*, %struct.arizona** %2, align 8
  %4 = getelementptr inbounds %struct.arizona, %struct.arizona* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.arizona*, %struct.arizona** %2, align 8
  %10 = getelementptr inbounds %struct.arizona, %struct.arizona* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %14 [
    i32 129, label %12
    i32 128, label %12
  ]

12:                                               ; preds = %8, %8
  %13 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %15

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14, %12
  %16 = load %struct.arizona*, %struct.arizona** %2, align 8
  %17 = getelementptr inbounds %struct.arizona, %struct.arizona* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @gpiod_set_raw_value_cansleep(i64 %19, i32 1)
  %21 = call i32 @usleep_range(i32 1000, i32 5000)
  br label %22

22:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gpiod_set_raw_value_cansleep(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
