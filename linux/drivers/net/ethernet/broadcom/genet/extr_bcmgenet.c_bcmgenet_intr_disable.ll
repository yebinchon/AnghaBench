; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_intr_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_intr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { i32 }

@INTRL2_CPU_MASK_SET = common dso_local global i32 0, align 4
@INTRL2_CPU_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmgenet_priv*)* @bcmgenet_intr_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_intr_disable(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca %struct.bcmgenet_priv*, align 8
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %2, align 8
  %3 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %4 = load i32, i32* @INTRL2_CPU_MASK_SET, align 4
  %5 = call i32 @bcmgenet_intrl2_0_writel(%struct.bcmgenet_priv* %3, i32 -1, i32 %4)
  %6 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %7 = load i32, i32* @INTRL2_CPU_CLEAR, align 4
  %8 = call i32 @bcmgenet_intrl2_0_writel(%struct.bcmgenet_priv* %6, i32 -1, i32 %7)
  %9 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %10 = load i32, i32* @INTRL2_CPU_MASK_SET, align 4
  %11 = call i32 @bcmgenet_intrl2_1_writel(%struct.bcmgenet_priv* %9, i32 -1, i32 %10)
  %12 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %13 = load i32, i32* @INTRL2_CPU_CLEAR, align 4
  %14 = call i32 @bcmgenet_intrl2_1_writel(%struct.bcmgenet_priv* %12, i32 -1, i32 %13)
  ret void
}

declare dso_local i32 @bcmgenet_intrl2_0_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @bcmgenet_intrl2_1_writel(%struct.bcmgenet_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
