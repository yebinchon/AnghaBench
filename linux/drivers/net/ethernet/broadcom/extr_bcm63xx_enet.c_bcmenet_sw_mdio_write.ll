; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcmenet_sw_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcmenet_sw_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_enet_priv = type { i32 }

@ENETSW_MDIOC_REG = common dso_local global i32 0, align 4
@ENETSW_MDIOC_WR_MASK = common dso_local global i32 0, align 4
@ENETSW_MDIOC_PHYID_SHIFT = common dso_local global i32 0, align 4
@ENETSW_MDIOC_REG_SHIFT = common dso_local global i32 0, align 4
@ENETSW_MDIOC_EXT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_enet_priv*, i32, i32, i32, i32)* @bcmenet_sw_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmenet_sw_mdio_write(%struct.bcm_enet_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bcm_enet_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bcm_enet_priv* %0, %struct.bcm_enet_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %13 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %16 = load i32, i32* @ENETSW_MDIOC_REG, align 4
  %17 = call i32 @enetsw_writel(%struct.bcm_enet_priv* %15, i32 0, i32 %16)
  %18 = load i32, i32* @ENETSW_MDIOC_WR_MASK, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ENETSW_MDIOC_PHYID_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @ENETSW_MDIOC_REG_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i32, i32* @ENETSW_MDIOC_EXT_MASK, align 4
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %29, %5
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @ENETSW_MDIOC_REG, align 4
  %40 = call i32 @enetsw_writel(%struct.bcm_enet_priv* %37, i32 %38, i32 %39)
  %41 = call i32 @udelay(i32 50)
  %42 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %6, align 8
  %43 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_bh(i32* %43)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @enetsw_writel(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
