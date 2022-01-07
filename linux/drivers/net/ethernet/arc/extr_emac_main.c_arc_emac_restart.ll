; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.arc_emac_priv = type { i64, %struct.arc_emac_bd*, i32, i64, i64 }
%struct.arc_emac_bd = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"restarting stalled EMAC\0A\00", align 1
@R_ENABLE = common dso_local global i32 0, align 4
@RXINT_MASK = common dso_local global i32 0, align 4
@TXINT_MASK = common dso_local global i32 0, align 4
@ERR_MASK = common dso_local global i32 0, align 4
@R_CTRL = common dso_local global i32 0, align 4
@EN_MASK = common dso_local global i32 0, align 4
@TX_RING_SZ = common dso_local global i32 0, align 4
@RX_BD_NUM = common dso_local global i32 0, align 4
@FOR_EMAC = common dso_local global i32 0, align 4
@EMAC_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @arc_emac_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_emac_restart(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.arc_emac_priv*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arc_emac_bd*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.arc_emac_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.arc_emac_priv* %9, %struct.arc_emac_priv** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  store %struct.net_device_stats* %11, %struct.net_device_stats** %4, align 8
  %12 = call i64 (...) @net_ratelimit()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @netdev_warn(%struct.net_device* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @netif_stop_queue(%struct.net_device* %18)
  %20 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %21 = load i32, i32* @R_ENABLE, align 4
  %22 = load i32, i32* @RXINT_MASK, align 4
  %23 = load i32, i32* @TXINT_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ERR_MASK, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @arc_reg_clr(%struct.arc_emac_priv* %20, i32 %21, i32 %26)
  %28 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %29 = load i32, i32* @R_CTRL, align 4
  %30 = load i32, i32* @EN_MASK, align 4
  %31 = call i32 @arc_reg_clr(%struct.arc_emac_priv* %28, i32 %29, i32 %30)
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @arc_free_tx_queue(%struct.net_device* %32)
  %34 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %35 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %37 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %39 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TX_RING_SZ, align 4
  %42 = call i32 @memset(i32 %40, i32 0, i32 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %78, %17
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @RX_BD_NUM, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %43
  %48 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %49 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %48, i32 0, i32 1
  %50 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %50, i64 %52
  store %struct.arc_emac_bd* %53, %struct.arc_emac_bd** %6, align 8
  %54 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %6, align 8
  %55 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @FOR_EMAC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %47
  %63 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %64 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %68 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %62, %47
  %72 = load i32, i32* @FOR_EMAC, align 4
  %73 = load i32, i32* @EMAC_BUFFER_SIZE, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @cpu_to_le32(i32 %74)
  %76 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %6, align 8
  %77 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %43

81:                                               ; preds = %43
  %82 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %83 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = call i32 (...) @wmb()
  %85 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %86 = load i32, i32* @R_ENABLE, align 4
  %87 = load i32, i32* @RXINT_MASK, align 4
  %88 = load i32, i32* @TXINT_MASK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @ERR_MASK, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @arc_reg_set(%struct.arc_emac_priv* %85, i32 %86, i32 %91)
  %93 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %94 = load i32, i32* @R_CTRL, align 4
  %95 = load i32, i32* @EN_MASK, align 4
  %96 = call i32 @arc_reg_or(%struct.arc_emac_priv* %93, i32 %94, i32 %95)
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = call i32 @netif_start_queue(%struct.net_device* %97)
  ret void
}

declare dso_local %struct.arc_emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @arc_reg_clr(%struct.arc_emac_priv*, i32, i32) #1

declare dso_local i32 @arc_free_tx_queue(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @arc_reg_set(%struct.arc_emac_priv*, i32, i32) #1

declare dso_local i32 @arc_reg_or(%struct.arc_emac_priv*, i32, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
