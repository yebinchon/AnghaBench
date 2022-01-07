; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_tcan4x5x.c_tcan4x5x_check_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_tcan4x5x.c_tcan4x5x_check_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcan4x5x_priv = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcan4x5x_priv*)* @tcan4x5x_check_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcan4x5x_check_wake(%struct.tcan4x5x_priv* %0) #0 {
  %2 = alloca %struct.tcan4x5x_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.tcan4x5x_priv* %0, %struct.tcan4x5x_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %2, align 8
  %5 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %2, align 8
  %10 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @gpiod_get_value(i64 %11)
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %2, align 8
  %15 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %2, align 8
  %23 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @gpiod_set_value(i64 %24, i32 0)
  %26 = call i32 @usleep_range(i32 5, i32 50)
  %27 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %2, align 8
  %28 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @gpiod_set_value(i64 %29, i32 1)
  br label %31

31:                                               ; preds = %21, %18, %13
  ret void
}

declare dso_local i32 @gpiod_get_value(i64) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
