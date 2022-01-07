; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_stop_gmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_stop_gmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i32 }

@GMAC_REG_OMR = common dso_local global i32 0, align 4
@NETSEC_GMAC_OMR_REG_SR = common dso_local global i32 0, align 4
@NETSEC_GMAC_OMR_REG_ST = common dso_local global i32 0, align 4
@NETSEC_REG_NRM_RX_INTEN_CLR = common dso_local global i32 0, align 4
@NETSEC_REG_NRM_TX_INTEN_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netsec_priv*)* @netsec_stop_gmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_stop_gmac(%struct.netsec_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netsec_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.netsec_priv* %0, %struct.netsec_priv** %3, align 8
  %6 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %7 = load i32, i32* @GMAC_REG_OMR, align 4
  %8 = call i32 @netsec_mac_read(%struct.netsec_priv* %6, i32 %7, i32* %4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load i32, i32* @NETSEC_GMAC_OMR_REG_SR, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @NETSEC_GMAC_OMR_REG_ST, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %23 = load i32, i32* @NETSEC_REG_NRM_RX_INTEN_CLR, align 4
  %24 = call i32 @netsec_write(%struct.netsec_priv* %22, i32 %23, i32 -1)
  %25 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %26 = load i32, i32* @NETSEC_REG_NRM_TX_INTEN_CLR, align 4
  %27 = call i32 @netsec_write(%struct.netsec_priv* %25, i32 %26, i32 -1)
  %28 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %29 = load i32, i32* @GMAC_REG_OMR, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @netsec_mac_write(%struct.netsec_priv* %28, i32 %29, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %13, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @netsec_mac_read(%struct.netsec_priv*, i32, i32*) #1

declare dso_local i32 @netsec_write(%struct.netsec_priv*, i32, i32) #1

declare dso_local i32 @netsec_mac_write(%struct.netsec_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
