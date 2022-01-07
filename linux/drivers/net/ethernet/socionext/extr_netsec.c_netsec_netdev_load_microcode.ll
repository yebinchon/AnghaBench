; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_netdev_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_netdev_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i64 }

@NETSEC_EEPROM_HM_ME_ADDRESS_H = common dso_local global i64 0, align 8
@NETSEC_EEPROM_HM_ME_ADDRESS_L = common dso_local global i64 0, align 8
@NETSEC_EEPROM_HM_ME_SIZE = common dso_local global i64 0, align 8
@NETSEC_REG_DMAC_HM_CMD_BUF = common dso_local global i32 0, align 4
@NETSEC_EEPROM_MH_ME_ADDRESS_H = common dso_local global i64 0, align 8
@NETSEC_EEPROM_MH_ME_ADDRESS_L = common dso_local global i64 0, align 8
@NETSEC_EEPROM_MH_ME_SIZE = common dso_local global i64 0, align 8
@NETSEC_REG_DMAC_MH_CMD_BUF = common dso_local global i32 0, align 4
@NETSEC_EEPROM_PKT_ME_ADDRESS = common dso_local global i64 0, align 8
@NETSEC_EEPROM_PKT_ME_SIZE = common dso_local global i64 0, align 8
@NETSEC_REG_PKT_CMD_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netsec_priv*)* @netsec_netdev_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_netdev_load_microcode(%struct.netsec_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netsec_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.netsec_priv* %0, %struct.netsec_priv** %3, align 8
  %8 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %9 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NETSEC_EEPROM_HM_ME_ADDRESS_H, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i64 @readl(i64 %12)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %15 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NETSEC_EEPROM_HM_ME_ADDRESS_L, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i64 @readl(i64 %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %21 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NETSEC_EEPROM_HM_ME_SIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i64 @readl(i64 %24)
  store i64 %25, i64* %6, align 8
  %26 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %27 = load i32, i32* @NETSEC_REG_DMAC_HM_CMD_BUF, align 4
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @netsec_netdev_load_ucode_region(%struct.netsec_priv* %26, i32 %27, i64 %28, i64 %29, i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %89

36:                                               ; preds = %1
  %37 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %38 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NETSEC_EEPROM_MH_ME_ADDRESS_H, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i64 @readl(i64 %41)
  store i64 %42, i64* %4, align 8
  %43 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %44 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NETSEC_EEPROM_MH_ME_ADDRESS_L, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i64 @readl(i64 %47)
  store i64 %48, i64* %5, align 8
  %49 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %50 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NETSEC_EEPROM_MH_ME_SIZE, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i64 @readl(i64 %53)
  store i64 %54, i64* %6, align 8
  %55 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %56 = load i32, i32* @NETSEC_REG_DMAC_MH_CMD_BUF, align 4
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @netsec_netdev_load_ucode_region(%struct.netsec_priv* %55, i32 %56, i64 %57, i64 %58, i64 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %36
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %89

65:                                               ; preds = %36
  store i64 0, i64* %4, align 8
  %66 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %67 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NETSEC_EEPROM_PKT_ME_ADDRESS, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i64 @readl(i64 %70)
  store i64 %71, i64* %5, align 8
  %72 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %73 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NETSEC_EEPROM_PKT_ME_SIZE, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i64 @readl(i64 %76)
  store i64 %77, i64* %6, align 8
  %78 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %79 = load i32, i32* @NETSEC_REG_PKT_CMD_BUF, align 4
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @netsec_netdev_load_ucode_region(%struct.netsec_priv* %78, i32 %79, i64 %80, i64 %81, i64 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %65
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %89

88:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %86, %63, %34
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @netsec_netdev_load_ucode_region(%struct.netsec_priv*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
