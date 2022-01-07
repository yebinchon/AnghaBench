; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_enable_acb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_enable_acb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }
%struct.bcm_sf2_priv = type { i32 }

@ACB_CONTROL = common dso_local global i32 0, align 4
@ACB_FLUSH_MASK = common dso_local global i32 0, align 4
@ACB_FLUSH_SHIFT = common dso_local global i32 0, align 4
@ACB_EN = common dso_local global i32 0, align 4
@ACB_ALGORITHM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*)* @bcm_sf2_enable_acb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sf2_enable_acb(%struct.dsa_switch* %0) #0 {
  %2 = alloca %struct.dsa_switch*, align 8
  %3 = alloca %struct.bcm_sf2_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %2, align 8
  %5 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %6 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %5)
  store %struct.bcm_sf2_priv* %6, %struct.bcm_sf2_priv** %3, align 8
  %7 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %8 = load i32, i32* @ACB_CONTROL, align 4
  %9 = call i32 @acb_readl(%struct.bcm_sf2_priv* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @ACB_FLUSH_MASK, align 4
  %11 = load i32, i32* @ACB_FLUSH_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ACB_CONTROL, align 4
  %18 = call i32 @acb_writel(%struct.bcm_sf2_priv* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @ACB_FLUSH_MASK, align 4
  %20 = load i32, i32* @ACB_FLUSH_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @ACB_EN, align 4
  %26 = load i32, i32* @ACB_ALGORITHM, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ACB_CONTROL, align 4
  %33 = call i32 @acb_writel(%struct.bcm_sf2_priv* %30, i32 %31, i32 %32)
  ret void
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

declare dso_local i32 @acb_readl(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @acb_writel(%struct.bcm_sf2_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
