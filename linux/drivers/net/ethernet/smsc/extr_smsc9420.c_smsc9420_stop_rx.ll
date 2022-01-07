; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc9420_pdata = type { i32 }

@DMAC_INTR_ENA = common dso_local global i32 0, align 4
@DMAC_INTR_ENA_RX_ = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@MAC_CR_RXEN_ = common dso_local global i32 0, align 4
@DMAC_CONTROL = common dso_local global i32 0, align 4
@DMAC_CONTROL_SR_ = common dso_local global i32 0, align 4
@DMAC_STATUS = common dso_local global i32 0, align 4
@DMAC_STS_RS_ = common dso_local global i32 0, align 4
@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"RX DMAC did not stop! timeout\0A\00", align 1
@DMAC_STS_RXPS_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc9420_pdata*)* @smsc9420_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc9420_stop_rx(%struct.smsc9420_pdata* %0) #0 {
  %2 = alloca %struct.smsc9420_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smsc9420_pdata* %0, %struct.smsc9420_pdata** %2, align 8
  store i32 1000, i32* %3, align 4
  %7 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %8 = load i32, i32* @DMAC_INTR_ENA, align 4
  %9 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @DMAC_INTR_ENA_RX_, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %15 = load i32, i32* @DMAC_INTR_ENA, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %14, i32 %15, i32 %16)
  %18 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %19 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %18)
  %20 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %21 = load i32, i32* @MAC_CR, align 4
  %22 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %20, i32 %21)
  %23 = load i32, i32* @MAC_CR_RXEN_, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %27 = load i32, i32* @MAC_CR, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %26, i32 %27, i32 %28)
  %30 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %31 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %30)
  %32 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %33 = load i32, i32* @DMAC_CONTROL, align 4
  %34 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @DMAC_CONTROL_SR_, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %40 = load i32, i32* @DMAC_CONTROL, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %39, i32 %40, i32 %41)
  %43 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %44 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %43)
  br label %45

45:                                               ; preds = %57, %1
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %51 = load i32, i32* @DMAC_STATUS, align 4
  %52 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %50, i32 %51)
  %53 = load i32, i32* @DMAC_STS_RS_, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %59

57:                                               ; preds = %49
  %58 = call i32 @udelay(i32 10)
  br label %45

59:                                               ; preds = %56, %45
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %64 = load i32, i32* @ifdown, align 4
  %65 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %66 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @netif_warn(%struct.smsc9420_pdata* %63, i32 %64, i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %62, %59
  %70 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %71 = load i32, i32* @DMAC_STATUS, align 4
  %72 = load i32, i32* @DMAC_STS_RXPS_, align 4
  %73 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %70, i32 %71, i32 %72)
  ret void
}

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netif_warn(%struct.smsc9420_pdata*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
