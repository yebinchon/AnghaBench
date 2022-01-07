; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_stats_mod_visible_ver14.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_stats_mod_visible_ver14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbe_priv = type { i32 }

@switch_regs = common dso_local global i32 0, align 4
@stat_port_en = common dso_local global i32 0, align 4
@GBE_STATS_CD_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbe_priv*, i32)* @gbe_stats_mod_visible_ver14 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gbe_stats_mod_visible_ver14(%struct.gbe_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.gbe_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gbe_priv* %0, %struct.gbe_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gbe_priv*, %struct.gbe_priv** %3, align 8
  %7 = load i32, i32* @switch_regs, align 4
  %8 = load i32, i32* @stat_port_en, align 4
  %9 = call i32 @GBE_REG_ADDR(%struct.gbe_priv* %6, i32 %7, i32 %8)
  %10 = call i32 @readl(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %21 [
    i32 131, label %12
    i32 130, label %12
    i32 129, label %17
    i32 128, label %17
  ]

12:                                               ; preds = %2, %2
  %13 = load i32, i32* @GBE_STATS_CD_SEL, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  br label %22

17:                                               ; preds = %2, %2
  %18 = load i32, i32* @GBE_STATS_CD_SEL, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %22

21:                                               ; preds = %2
  br label %29

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.gbe_priv*, %struct.gbe_priv** %3, align 8
  %25 = load i32, i32* @switch_regs, align 4
  %26 = load i32, i32* @stat_port_en, align 4
  %27 = call i32 @GBE_REG_ADDR(%struct.gbe_priv* %24, i32 %25, i32 %26)
  %28 = call i32 @writel(i32 %23, i32 %27)
  br label %29

29:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @GBE_REG_ADDR(%struct.gbe_priv*, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
