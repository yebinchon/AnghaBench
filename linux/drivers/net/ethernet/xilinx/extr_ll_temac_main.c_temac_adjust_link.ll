; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32, i32, i32 }
%struct.temac_local = type { i32, i32 }

@XTE_EMCFG_OFFSET = common dso_local global i32 0, align 4
@XTE_EMCFG_LINKSPD_MASK = common dso_local global i32 0, align 4
@XTE_EMCFG_LINKSPD_1000 = common dso_local global i32 0, align 4
@XTE_EMCFG_LINKSPD_100 = common dso_local global i32 0, align 4
@XTE_EMCFG_LINKSPD_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @temac_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @temac_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.temac_local*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.temac_local* @netdev_priv(%struct.net_device* %8)
  store %struct.temac_local* %9, %struct.temac_local** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %4, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 1
  %20 = or i32 %15, %19
  %21 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %20, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %26 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %1
  %31 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %32 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_lock_irqsave(i32 %33, i64 %34)
  %36 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %37 = load i32, i32* @XTE_EMCFG_OFFSET, align 4
  %38 = call i32 @temac_indirect_in32_locked(%struct.temac_local* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @XTE_EMCFG_LINKSPD_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %44 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %58 [
    i32 128, label %46
    i32 129, label %50
    i32 130, label %54
  ]

46:                                               ; preds = %30
  %47 = load i32, i32* @XTE_EMCFG_LINKSPD_1000, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %58

50:                                               ; preds = %30
  %51 = load i32, i32* @XTE_EMCFG_LINKSPD_100, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %58

54:                                               ; preds = %30
  %55 = load i32, i32* @XTE_EMCFG_LINKSPD_10, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %30, %54, %50, %46
  %59 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %60 = load i32, i32* @XTE_EMCFG_OFFSET, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @temac_indirect_out32_locked(%struct.temac_local* %59, i32 %60, i32 %61)
  %63 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %64 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32 %65, i64 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %70 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %72 = call i32 @phy_print_status(%struct.phy_device* %71)
  br label %73

73:                                               ; preds = %58, %1
  ret void
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @temac_indirect_in32_locked(%struct.temac_local*, i32) #1

declare dso_local i32 @temac_indirect_out32_locked(%struct.temac_local*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
