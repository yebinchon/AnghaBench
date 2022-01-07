; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_gib_set_pad_extension.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_gib_set_pad_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i32 }

@GIB_CONTROL = common dso_local global i32 0, align 4
@GIB_PAD_EXTENSION_MASK = common dso_local global i32 0, align 4
@GIB_PAD_EXTENSION_SHIFT = common dso_local global i32 0, align 4
@ENET_BRCM_TAG_LEN = common dso_local global i32 0, align 4
@GIB_IPG_LEN_MASK = common dso_local global i32 0, align 4
@GIB_IPG_LEN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sysport_priv*)* @gib_set_pad_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gib_set_pad_extension(%struct.bcm_sysport_priv* %0) #0 {
  %2 = alloca %struct.bcm_sysport_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %2, align 8
  %4 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %5 = load i32, i32* @GIB_CONTROL, align 4
  %6 = call i32 @gib_readl(%struct.bcm_sysport_priv* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %8 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @netdev_uses_dsa(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load i32, i32* @GIB_PAD_EXTENSION_MASK, align 4
  %14 = load i32, i32* @GIB_PAD_EXTENSION_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @ENET_BRCM_TAG_LEN, align 4
  %20 = load i32, i32* @GIB_PAD_EXTENSION_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %12, %1
  %25 = load i32, i32* @GIB_IPG_LEN_MASK, align 4
  %26 = load i32, i32* @GIB_IPG_LEN_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @GIB_IPG_LEN_SHIFT, align 4
  %32 = shl i32 12, %31
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @GIB_CONTROL, align 4
  %38 = call i32 @gib_writel(%struct.bcm_sysport_priv* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @gib_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i64 @netdev_uses_dsa(i32) #1

declare dso_local i32 @gib_writel(%struct.bcm_sysport_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
