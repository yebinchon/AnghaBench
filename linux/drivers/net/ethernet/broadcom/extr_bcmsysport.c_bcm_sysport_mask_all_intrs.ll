; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_mask_all_intrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_mask_all_intrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i32 }

@INTRL2_CPU_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sysport_priv*)* @bcm_sysport_mask_all_intrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sysport_mask_all_intrs(%struct.bcm_sysport_priv* %0) #0 {
  %2 = alloca %struct.bcm_sysport_priv*, align 8
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %2, align 8
  %3 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %4 = call i32 @intrl2_0_mask_set(%struct.bcm_sysport_priv* %3, i32 -1)
  %5 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %6 = load i32, i32* @INTRL2_CPU_CLEAR, align 4
  %7 = call i32 @intrl2_0_writel(%struct.bcm_sysport_priv* %5, i32 -1, i32 %6)
  %8 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %9 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %14 = call i32 @intrl2_1_mask_set(%struct.bcm_sysport_priv* %13, i32 -1)
  %15 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %16 = load i32, i32* @INTRL2_CPU_CLEAR, align 4
  %17 = call i32 @intrl2_1_writel(%struct.bcm_sysport_priv* %15, i32 -1, i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @intrl2_0_mask_set(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @intrl2_0_writel(%struct.bcm_sysport_priv*, i32, i32) #1

declare dso_local i32 @intrl2_1_mask_set(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @intrl2_1_writel(%struct.bcm_sysport_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
