; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_adjust_enable_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_adjust_enable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsc73xx = type { i32 }
%struct.phy_device = type { i32 }

@VSC73XX_MAC_CFG_RESET = common dso_local global i32 0, align 4
@VSC73XX_BLOCK_MAC = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG_SEED_OFFSET = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG_SEED_LOAD = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG_WEXC_DIS = common dso_local global i32 0, align 4
@VSC73XX_FCCONF = common dso_local global i32 0, align 4
@VSC73XX_FCCONF_ZERO_PAUSE_EN = common dso_local global i32 0, align 4
@VSC73XX_FCCONF_FLOW_CTRL_OBEY = common dso_local global i32 0, align 4
@VSC73XX_BLOCK_ARBITER = common dso_local global i32 0, align 4
@VSC73XX_SBACKWDROP = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG_TX_EN = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG_RX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsc73xx*, i32, %struct.phy_device*, i32)* @vsc73xx_adjust_enable_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsc73xx_adjust_enable_port(%struct.vsc73xx* %0, i32 %1, %struct.phy_device* %2, i32 %3) #0 {
  %5 = alloca %struct.vsc73xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vsc73xx* %0, %struct.vsc73xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.phy_device* %2, %struct.phy_device** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @VSC73XX_MAC_CFG_RESET, align 4
  %13 = load i32, i32* %9, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %9, align 4
  %15 = load %struct.vsc73xx*, %struct.vsc73xx** %5, align 8
  %16 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @VSC73XX_MAC_CFG, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @vsc73xx_write(%struct.vsc73xx* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = call i32 @get_random_bytes(i32* %10, i32 1)
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @VSC73XX_MAC_CFG_SEED_OFFSET, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* %9, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @VSC73XX_MAC_CFG_SEED_LOAD, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @VSC73XX_MAC_CFG_WEXC_DIS, align 4
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load %struct.vsc73xx*, %struct.vsc73xx** %5, align 8
  %34 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @VSC73XX_MAC_CFG, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @vsc73xx_write(%struct.vsc73xx* %33, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.vsc73xx*, %struct.vsc73xx** %5, align 8
  %40 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @VSC73XX_FCCONF, align 4
  %43 = load i32, i32* @VSC73XX_FCCONF_ZERO_PAUSE_EN, align 4
  %44 = load i32, i32* @VSC73XX_FCCONF_FLOW_CTRL_OBEY, align 4
  %45 = or i32 %43, %44
  %46 = or i32 %45, 255
  %47 = call i32 @vsc73xx_write(%struct.vsc73xx* %39, i32 %40, i32 %41, i32 %42, i32 %46)
  %48 = load %struct.vsc73xx*, %struct.vsc73xx** %5, align 8
  %49 = load i32, i32* @VSC73XX_BLOCK_ARBITER, align 4
  %50 = load i32, i32* @VSC73XX_SBACKWDROP, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = call i32 @vsc73xx_update_bits(%struct.vsc73xx* %48, i32 %49, i32 0, i32 %50, i32 %52, i32 0)
  %54 = load %struct.vsc73xx*, %struct.vsc73xx** %5, align 8
  %55 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @VSC73XX_MAC_CFG, align 4
  %58 = load i32, i32* @VSC73XX_MAC_CFG_RESET, align 4
  %59 = load i32, i32* @VSC73XX_MAC_CFG_SEED_LOAD, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @VSC73XX_MAC_CFG_TX_EN, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @VSC73XX_MAC_CFG_RX_EN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @VSC73XX_MAC_CFG_TX_EN, align 4
  %66 = load i32, i32* @VSC73XX_MAC_CFG_RX_EN, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @vsc73xx_update_bits(%struct.vsc73xx* %54, i32 %55, i32 %56, i32 %57, i32 %64, i32 %67)
  ret void
}

declare dso_local i32 @vsc73xx_write(%struct.vsc73xx*, i32, i32, i32, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @vsc73xx_update_bits(%struct.vsc73xx*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
