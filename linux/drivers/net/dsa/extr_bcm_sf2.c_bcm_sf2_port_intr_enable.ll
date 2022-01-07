; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_port_intr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_port_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sf2_priv = type { i32 }

@P7_IRQ_OFF = common dso_local global i32 0, align 4
@P0_IRQ_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sf2_priv*, i32)* @bcm_sf2_port_intr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sf2_port_intr_enable(%struct.bcm_sf2_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm_sf2_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm_sf2_priv* %0, %struct.bcm_sf2_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %14 [
    i32 7, label %7
    i32 0, label %9
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @P7_IRQ_OFF, align 4
  store i32 %8, i32* %5, align 4
  br label %17

9:                                                ; preds = %2
  %10 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %11 = load i32, i32* @P0_IRQ_OFF, align 4
  %12 = call i32 @P_IRQ_MASK(i32 %11)
  %13 = call i32 @intrl2_0_mask_clear(%struct.bcm_sf2_priv* %10, i32 %12)
  br label %22

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @P_IRQ_OFF(i32 %15)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @P_IRQ_MASK(i32 %19)
  %21 = call i32 @intrl2_1_mask_clear(%struct.bcm_sf2_priv* %18, i32 %20)
  br label %22

22:                                               ; preds = %17, %9
  ret void
}

declare dso_local i32 @intrl2_0_mask_clear(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @P_IRQ_MASK(i32) #1

declare dso_local i32 @P_IRQ_OFF(i32) #1

declare dso_local i32 @intrl2_1_mask_clear(%struct.bcm_sf2_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
