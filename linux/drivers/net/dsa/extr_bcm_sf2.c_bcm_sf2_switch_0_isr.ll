; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_switch_0_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_switch_0_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }
%struct.bcm_sf2_priv = type { i32, i32 }

@INTRL2_CPU_STATUS = common dso_local global i32 0, align 4
@INTRL2_CPU_CLEAR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bcm_sf2_switch_0_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_switch_0_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca %struct.bcm_sf2_priv*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.dsa_switch*
  store %struct.dsa_switch* %8, %struct.dsa_switch** %5, align 8
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %10 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %9)
  store %struct.bcm_sf2_priv* %10, %struct.bcm_sf2_priv** %6, align 8
  %11 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %12 = load i32, i32* @INTRL2_CPU_STATUS, align 4
  %13 = call i32 @intrl2_0_readl(%struct.bcm_sf2_priv* %11, i32 %12)
  %14 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %15 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  %19 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %20 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %22 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %23 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @INTRL2_CPU_CLEAR, align 4
  %26 = call i32 @intrl2_0_writel(%struct.bcm_sf2_priv* %21, i32 %24, i32 %25)
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %27
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

declare dso_local i32 @intrl2_0_readl(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @intrl2_0_writel(%struct.bcm_sf2_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
