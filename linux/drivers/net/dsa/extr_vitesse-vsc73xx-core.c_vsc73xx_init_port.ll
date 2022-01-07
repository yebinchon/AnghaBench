; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-core.c_vsc73xx_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsc73xx = type { i32* }

@VSC73XX_BLOCK_MAC = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG_RESET = common dso_local global i32 0, align 4
@CPU_PORT = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG_1000M_F_RGMII = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG_1000M_F_PHY = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG_TX_EN = common dso_local global i32 0, align 4
@VSC73XX_MAC_CFG_RX_EN = common dso_local global i32 0, align 4
@VSC73XX_MAXLEN = common dso_local global i32 0, align 4
@VSC73XX_FCCONF = common dso_local global i32 0, align 4
@VSC73XX_FCCONF_ZERO_PAUSE_EN = common dso_local global i32 0, align 4
@VSC73XX_FCCONF_FLOW_CTRL_OBEY = common dso_local global i32 0, align 4
@VSC73XX_Q_MISC_CONF_EARLY_TX_512 = common dso_local global i32 0, align 4
@VSC73XX_Q_MISC_CONF_MAC_PAUSE_MODE = common dso_local global i32 0, align 4
@VSC73XX_Q_MISC_CONF_EXTENT_MEM = common dso_local global i32 0, align 4
@VSC73XX_Q_MISC_CONF = common dso_local global i32 0, align 4
@VSC73XX_FCMACHI = common dso_local global i32 0, align 4
@VSC73XX_FCMACLO = common dso_local global i32 0, align 4
@VSC73XX_CAT_DROP = common dso_local global i32 0, align 4
@VSC73XX_CAT_DROP_FWD_PAUSE_ENA = common dso_local global i32 0, align 4
@VSC73XX_C_RX0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsc73xx*, i32)* @vsc73xx_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsc73xx_init_port(%struct.vsc73xx* %0, i32 %1) #0 {
  %3 = alloca %struct.vsc73xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vsc73xx* %0, %struct.vsc73xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %7 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @VSC73XX_MAC_CFG, align 4
  %10 = load i32, i32* @VSC73XX_MAC_CFG_RESET, align 4
  %11 = call i32 @vsc73xx_write(%struct.vsc73xx* %6, i32 %7, i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CPU_PORT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @VSC73XX_MAC_CFG_1000M_F_RGMII, align 4
  store i32 %16, i32* %5, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @VSC73XX_MAC_CFG_1000M_F_PHY, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %21 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @VSC73XX_MAC_CFG, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @VSC73XX_MAC_CFG_TX_EN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @VSC73XX_MAC_CFG_RX_EN, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @vsc73xx_write(%struct.vsc73xx* %20, i32 %21, i32 %22, i32 %23, i32 %28)
  %30 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %31 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @VSC73XX_MAXLEN, align 4
  %34 = call i32 @vsc73xx_write(%struct.vsc73xx* %30, i32 %31, i32 %32, i32 %33, i32 9600)
  %35 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %36 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @VSC73XX_FCCONF, align 4
  %39 = load i32, i32* @VSC73XX_FCCONF_ZERO_PAUSE_EN, align 4
  %40 = load i32, i32* @VSC73XX_FCCONF_FLOW_CTRL_OBEY, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @vsc73xx_write(%struct.vsc73xx* %35, i32 %36, i32 %37, i32 %38, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @CPU_PORT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %19
  %47 = load i32, i32* @VSC73XX_Q_MISC_CONF_EARLY_TX_512, align 4
  store i32 %47, i32* %5, align 4
  br label %50

48:                                               ; preds = %19
  %49 = load i32, i32* @VSC73XX_Q_MISC_CONF_MAC_PAUSE_MODE, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32, i32* @VSC73XX_Q_MISC_CONF_EXTENT_MEM, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %55 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @VSC73XX_Q_MISC_CONF, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @vsc73xx_write(%struct.vsc73xx* %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %61 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 16
  %66 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %67 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 8
  %72 = or i32 %65, %71
  %73 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %74 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %72, %77
  store i32 %78, i32* %5, align 4
  %79 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %80 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @VSC73XX_FCMACHI, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @vsc73xx_write(%struct.vsc73xx* %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %86 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 16
  %91 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %92 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 8
  %97 = or i32 %90, %96
  %98 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %99 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %97, %102
  store i32 %103, i32* %5, align 4
  %104 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %105 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @VSC73XX_FCMACLO, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @vsc73xx_write(%struct.vsc73xx* %104, i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %111 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @VSC73XX_CAT_DROP, align 4
  %114 = load i32, i32* @VSC73XX_CAT_DROP_FWD_PAUSE_ENA, align 4
  %115 = call i32 @vsc73xx_write(%struct.vsc73xx* %110, i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load %struct.vsc73xx*, %struct.vsc73xx** %3, align 8
  %117 = load i32, i32* @VSC73XX_BLOCK_MAC, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @VSC73XX_C_RX0, align 4
  %120 = call i32 @vsc73xx_write(%struct.vsc73xx* %116, i32 %117, i32 %118, i32 %119, i32 0)
  ret void
}

declare dso_local i32 @vsc73xx_write(%struct.vsc73xx*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
