; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_tcan4x5x.c_tcan4x5x_write_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_tcan4x5x.c_tcan4x5x_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { %struct.tcan4x5x_priv* }
%struct.tcan4x5x_priv = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_can_classdev*, i32, i32)* @tcan4x5x_write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcan4x5x_write_fifo(%struct.m_can_classdev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.m_can_classdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcan4x5x_priv*, align 8
  store %struct.m_can_classdev* %0, %struct.m_can_classdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.m_can_classdev*, %struct.m_can_classdev** %4, align 8
  %9 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %8, i32 0, i32 0
  %10 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %9, align 8
  store %struct.tcan4x5x_priv* %10, %struct.tcan4x5x_priv** %7, align 8
  %11 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %7, align 8
  %12 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.tcan4x5x_priv*, %struct.tcan4x5x_priv** %7, align 8
  %15 = getelementptr inbounds %struct.tcan4x5x_priv, %struct.tcan4x5x_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @regmap_write(i32 %13, i64 %19, i32 %20)
  ret i32 %21
}

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
