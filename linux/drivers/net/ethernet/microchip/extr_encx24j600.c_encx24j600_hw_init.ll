; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encx24j600_priv = type { i32, i64, i32, i64 }

@EIDLED = common dso_local global i32 0, align 4
@MACON1 = common dso_local global i32 0, align 4
@MAIPG = common dso_local global i32 0, align 4
@PHANA = common dso_local global i32 0, align 4
@PHANA_DEFAULT = common dso_local global i32 0, align 4
@MACON2_RSV1 = common dso_local global i32 0, align 4
@TXCRCEN = common dso_local global i32 0, align 4
@PADCFG0 = common dso_local global i32 0, align 4
@PADCFG2 = common dso_local global i32 0, align 4
@MACON2_DEFER = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@FULDPX = common dso_local global i32 0, align 4
@MACON2 = common dso_local global i32 0, align 4
@RXFILTER_NORMAL = common dso_local global i32 0, align 4
@MAMXFL = common dso_local global i32 0, align 4
@MAX_FRAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Hw is initialized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.encx24j600_priv*)* @encx24j600_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encx24j600_hw_init(%struct.encx24j600_priv* %0) #0 {
  %2 = alloca %struct.encx24j600_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.encx24j600_priv* %0, %struct.encx24j600_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %6 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %8 = load i32, i32* @EIDLED, align 4
  %9 = call i32 @encx24j600_update_reg(%struct.encx24j600_priv* %7, i32 %8, i32 65280, i32 51968)
  %10 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %11 = load i32, i32* @MACON1, align 4
  %12 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %10, i32 %11, i32 9)
  %13 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %14 = load i32, i32* @MAIPG, align 4
  %15 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %13, i32 %14, i32 3090)
  %16 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %17 = load i32, i32* @PHANA, align 4
  %18 = load i32, i32* @PHANA_DEFAULT, align 4
  %19 = call i32 @encx24j600_write_phy(%struct.encx24j600_priv* %16, i32 %17, i32 %18)
  %20 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %21 = call i32 @encx24j600_update_phcon1(%struct.encx24j600_priv* %20)
  %22 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %23 = call i32 @encx24j600_check_link_status(%struct.encx24j600_priv* %22)
  %24 = load i32, i32* @MACON2_RSV1, align 4
  %25 = load i32, i32* @TXCRCEN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PADCFG0, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PADCFG2, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MACON2_DEFER, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %34 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AUTONEG_DISABLE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %1
  %39 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %40 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @FULDPX, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %38, %1
  %48 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %49 = load i32, i32* @MACON2, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @encx24j600_set_bits(%struct.encx24j600_priv* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @RXFILTER_NORMAL, align 4
  %53 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %54 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %56 = call i32 @encx24j600_set_rxfilter_mode(%struct.encx24j600_priv* %55)
  %57 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %58 = load i32, i32* @MAMXFL, align 4
  %59 = load i32, i32* @MAX_FRAMELEN, align 4
  %60 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %57, i32 %58, i32 %59)
  %61 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %62 = call i32 @encx24j600_hw_init_tx(%struct.encx24j600_priv* %61)
  %63 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %64 = call i32 @encx24j600_hw_init_rx(%struct.encx24j600_priv* %63)
  %65 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %66 = call i64 @netif_msg_hw(%struct.encx24j600_priv* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %47
  %69 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %70 = call i32 @encx24j600_dump_config(%struct.encx24j600_priv* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %47
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @encx24j600_update_reg(%struct.encx24j600_priv*, i32, i32, i32) #1

declare dso_local i32 @encx24j600_write_reg(%struct.encx24j600_priv*, i32, i32) #1

declare dso_local i32 @encx24j600_write_phy(%struct.encx24j600_priv*, i32, i32) #1

declare dso_local i32 @encx24j600_update_phcon1(%struct.encx24j600_priv*) #1

declare dso_local i32 @encx24j600_check_link_status(%struct.encx24j600_priv*) #1

declare dso_local i32 @encx24j600_set_bits(%struct.encx24j600_priv*, i32, i32) #1

declare dso_local i32 @encx24j600_set_rxfilter_mode(%struct.encx24j600_priv*) #1

declare dso_local i32 @encx24j600_hw_init_tx(%struct.encx24j600_priv*) #1

declare dso_local i32 @encx24j600_hw_init_rx(%struct.encx24j600_priv*) #1

declare dso_local i64 @netif_msg_hw(%struct.encx24j600_priv*) #1

declare dso_local i32 @encx24j600_dump_config(%struct.encx24j600_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
