; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32 }

@ALX_ISR = common dso_local global i32 0, align 4
@ALX_ISR_DIS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alx_priv*)* @alx_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alx_activate(%struct.alx_priv* %0) #0 {
  %2 = alloca %struct.alx_priv*, align 8
  store %struct.alx_priv* %0, %struct.alx_priv** %2, align 8
  %3 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %4 = call i32 @alx_reinit_rings(%struct.alx_priv* %3)
  %5 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %6 = call i32 @alx_configure(%struct.alx_priv* %5)
  %7 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %8 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %7, i32 0, i32 0
  %9 = load i32, i32* @ALX_ISR, align 4
  %10 = load i64, i64* @ALX_ISR_DIS, align 8
  %11 = trunc i64 %10 to i32
  %12 = xor i32 %11, -1
  %13 = call i32 @alx_write_mem32(i32* %8, i32 %9, i32 %12)
  %14 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %15 = call i32 @alx_irq_enable(%struct.alx_priv* %14)
  %16 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %17 = call i32 @alx_schedule_link_check(%struct.alx_priv* %16)
  ret void
}

declare dso_local i32 @alx_reinit_rings(%struct.alx_priv*) #1

declare dso_local i32 @alx_configure(%struct.alx_priv*) #1

declare dso_local i32 @alx_write_mem32(i32*, i32, i32) #1

declare dso_local i32 @alx_irq_enable(%struct.alx_priv*) #1

declare dso_local i32 @alx_schedule_link_check(%struct.alx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
