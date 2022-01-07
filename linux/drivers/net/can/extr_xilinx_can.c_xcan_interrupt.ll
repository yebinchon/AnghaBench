; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xcan_priv = type { i32 (%struct.xcan_priv*, i32)*, i32, i32 (%struct.xcan_priv*, i32, i32)* }

@XCAN_ISR_OFFSET = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@XCAN_IXR_SLP_MASK = common dso_local global i32 0, align 4
@XCAN_IXR_WKUP_MASK = common dso_local global i32 0, align 4
@XCAN_ICR_OFFSET = common dso_local global i32 0, align 4
@XCAN_IXR_TXOK_MASK = common dso_local global i32 0, align 4
@XCAN_IXR_ERROR_MASK = common dso_local global i32 0, align 4
@XCAN_IXR_RXOFLW_MASK = common dso_local global i32 0, align 4
@XCAN_IXR_BSOFF_MASK = common dso_local global i32 0, align 4
@XCAN_IXR_ARBLST_MASK = common dso_local global i32 0, align 4
@XCAN_IXR_RXMNF_MASK = common dso_local global i32 0, align 4
@XCAN_IER_OFFSET = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xcan_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcan_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.xcan_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.xcan_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.xcan_priv* %15, %struct.xcan_priv** %7, align 8
  %16 = load %struct.xcan_priv*, %struct.xcan_priv** %7, align 8
  %17 = call i32 @xcan_rx_int_mask(%struct.xcan_priv* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.xcan_priv*, %struct.xcan_priv** %7, align 8
  %19 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %18, i32 0, i32 0
  %20 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %19, align 8
  %21 = load %struct.xcan_priv*, %struct.xcan_priv** %7, align 8
  %22 = load i32, i32* @XCAN_ISR_OFFSET, align 4
  %23 = call i32 %20(%struct.xcan_priv* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %110

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @XCAN_IXR_SLP_MASK, align 4
  %31 = load i32, i32* @XCAN_IXR_WKUP_MASK, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = load %struct.xcan_priv*, %struct.xcan_priv** %7, align 8
  %37 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %36, i32 0, i32 2
  %38 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %37, align 8
  %39 = load %struct.xcan_priv*, %struct.xcan_priv** %7, align 8
  %40 = load i32, i32* @XCAN_ICR_OFFSET, align 4
  %41 = load i32, i32* @XCAN_IXR_SLP_MASK, align 4
  %42 = load i32, i32* @XCAN_IXR_WKUP_MASK, align 4
  %43 = or i32 %41, %42
  %44 = call i32 %38(%struct.xcan_priv* %39, i32 %40, i32 %43)
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @xcan_state_interrupt(%struct.net_device* %45, i32 %46)
  br label %48

48:                                               ; preds = %35, %28
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @XCAN_IXR_TXOK_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @xcan_tx_interrupt(%struct.net_device* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @XCAN_IXR_ERROR_MASK, align 4
  %60 = load i32, i32* @XCAN_IXR_RXOFLW_MASK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @XCAN_IXR_BSOFF_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @XCAN_IXR_ARBLST_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @XCAN_IXR_RXMNF_MASK, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %58, %67
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %57
  %72 = load %struct.xcan_priv*, %struct.xcan_priv** %7, align 8
  %73 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %72, i32 0, i32 2
  %74 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %73, align 8
  %75 = load %struct.xcan_priv*, %struct.xcan_priv** %7, align 8
  %76 = load i32, i32* @XCAN_ICR_OFFSET, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 %74(%struct.xcan_priv* %75, i32 %76, i32 %77)
  %79 = load %struct.net_device*, %struct.net_device** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @xcan_err_interrupt(%struct.net_device* %79, i32 %80)
  br label %82

82:                                               ; preds = %71, %57
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %82
  %88 = load %struct.xcan_priv*, %struct.xcan_priv** %7, align 8
  %89 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %88, i32 0, i32 0
  %90 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %89, align 8
  %91 = load %struct.xcan_priv*, %struct.xcan_priv** %7, align 8
  %92 = load i32, i32* @XCAN_IER_OFFSET, align 4
  %93 = call i32 %90(%struct.xcan_priv* %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %11, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = load %struct.xcan_priv*, %struct.xcan_priv** %7, align 8
  %99 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %98, i32 0, i32 2
  %100 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %99, align 8
  %101 = load %struct.xcan_priv*, %struct.xcan_priv** %7, align 8
  %102 = load i32, i32* @XCAN_IER_OFFSET, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 %100(%struct.xcan_priv* %101, i32 %102, i32 %103)
  %105 = load %struct.xcan_priv*, %struct.xcan_priv** %7, align 8
  %106 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %105, i32 0, i32 1
  %107 = call i32 @napi_schedule(i32* %106)
  br label %108

108:                                              ; preds = %87, %82
  %109 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %26
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.xcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xcan_rx_int_mask(%struct.xcan_priv*) #1

declare dso_local i32 @xcan_state_interrupt(%struct.net_device*, i32) #1

declare dso_local i32 @xcan_tx_interrupt(%struct.net_device*, i32) #1

declare dso_local i32 @xcan_err_interrupt(%struct.net_device*, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
