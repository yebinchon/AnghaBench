; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc9420_pdata = type { i32, i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@INT_CFG = common dso_local global i32 0, align 4
@INT_CFG_IRQ_EN_ = common dso_local global i32 0, align 4
@INT_CFG_IRQ_INT_ = common dso_local global i32 0, align 4
@INT_STAT = common dso_local global i32 0, align 4
@INT_STAT_DMAC_INT_ = common dso_local global i32 0, align 4
@DMAC_STATUS = common dso_local global i32 0, align 4
@DMAC_STS_TX_ = common dso_local global i32 0, align 4
@DMAC_STS_NIS_ = common dso_local global i32 0, align 4
@DMAC_STS_RX_ = common dso_local global i32 0, align 4
@DMAC_INTR_ENA = common dso_local global i32 0, align 4
@DMAC_INTR_ENA_RX_ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@INT_STAT_SW_INT_ = common dso_local global i32 0, align 4
@INT_CTL = common dso_local global i32 0, align 4
@INT_CTL_SW_INT_EN_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @smsc9420_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.smsc9420_pdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.smsc9420_pdata*
  store %struct.smsc9420_pdata* %16, %struct.smsc9420_pdata** %6, align 8
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %19 = icmp ne %struct.smsc9420_pdata* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %24 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %31 = load i32, i32* @INT_CFG, align 4
  %32 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @INT_CFG_IRQ_EN_, align 4
  %35 = load i32, i32* @INT_CFG_IRQ_INT_, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = load i32, i32* @INT_CFG_IRQ_EN_, align 4
  %39 = load i32, i32* @INT_CFG_IRQ_INT_, align 4
  %40 = or i32 %38, %39
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* @IRQ_NONE, align 4
  store i32 %43, i32* %3, align 4
  br label %146

44:                                               ; preds = %2
  %45 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %46 = load i32, i32* @INT_STAT, align 4
  %47 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @INT_STAT_DMAC_INT_, align 4
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %48, %49
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %108

53:                                               ; preds = %44
  %54 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %55 = load i32, i32* @DMAC_STATUS, align 4
  %56 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %54, i32 %55)
  store i32 %56, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @DMAC_STS_TX_, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load i32, i32* @DMAC_STS_TX_, align 4
  %63 = load i32, i32* @DMAC_STS_NIS_, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %13, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %13, align 4
  %67 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %68 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @netif_wake_queue(i32 %69)
  br label %71

71:                                               ; preds = %61, %53
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @DMAC_STS_RX_, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %71
  %77 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %78 = load i32, i32* @DMAC_INTR_ENA, align 4
  %79 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %77, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* @DMAC_INTR_ENA_RX_, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %14, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %14, align 4
  %84 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %85 = load i32, i32* @DMAC_INTR_ENA, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %84, i32 %85, i32 %86)
  %88 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %89 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %88)
  %90 = load i32, i32* @DMAC_STS_RX_, align 4
  %91 = load i32, i32* @DMAC_STS_NIS_, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %13, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %13, align 4
  %95 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %96 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %95, i32 0, i32 2
  %97 = call i32 @napi_schedule(i32* %96)
  br label %98

98:                                               ; preds = %76, %71
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %103 = load i32, i32* @DMAC_STATUS, align 4
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %98
  %107 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %106, %44
  %109 = load i32, i32* @INT_STAT_SW_INT_, align 4
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %109, %110
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %142

114:                                              ; preds = %108
  %115 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %116 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %115, i32 0, i32 1
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @spin_lock_irqsave(i32* %116, i32 %117)
  %119 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %120 = load i32, i32* @INT_CTL, align 4
  %121 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %119, i32 %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* @INT_CTL_SW_INT_EN_, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %9, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %9, align 4
  %126 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %127 = load i32, i32* @INT_CTL, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %126, i32 %127, i32 %128)
  %130 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %131 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %130, i32 0, i32 1
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i32 %132)
  %134 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %135 = load i32, i32* @INT_STAT, align 4
  %136 = load i32, i32* @INT_STAT_SW_INT_, align 4
  %137 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %134, i32 %135, i32 %136)
  %138 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %139 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %138, i32 0, i32 0
  store i32 1, i32* %139, align 4
  %140 = call i32 (...) @smp_wmb()
  %141 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %114, %108
  %143 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %6, align 8
  %144 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %143)
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %142, %42
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
