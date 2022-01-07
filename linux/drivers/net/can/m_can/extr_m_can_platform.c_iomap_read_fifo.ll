; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can_platform.c_iomap_read_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can_platform.c_iomap_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_can_classdev = type { %struct.m_can_plat_priv* }
%struct.m_can_plat_priv = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m_can_classdev*, i32)* @iomap_read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iomap_read_fifo(%struct.m_can_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.m_can_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.m_can_plat_priv*, align 8
  store %struct.m_can_classdev* %0, %struct.m_can_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.m_can_classdev*, %struct.m_can_classdev** %3, align 8
  %7 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %6, i32 0, i32 0
  %8 = load %struct.m_can_plat_priv*, %struct.m_can_plat_priv** %7, align 8
  store %struct.m_can_plat_priv* %8, %struct.m_can_plat_priv** %5, align 8
  %9 = load %struct.m_can_plat_priv*, %struct.m_can_plat_priv** %5, align 8
  %10 = getelementptr inbounds %struct.m_can_plat_priv, %struct.m_can_plat_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = call i32 @readl(i64 %14)
  ret i32 %15
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
