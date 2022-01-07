; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_chip_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_chip_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xcan_priv = type { %struct.TYPE_4__, i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32, i32)*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@XCAN_IXR_TXOK_MASK = common dso_local global i32 0, align 4
@XCAN_IXR_BSOFF_MASK = common dso_local global i32 0, align 4
@XCAN_IXR_WKUP_MASK = common dso_local global i32 0, align 4
@XCAN_IXR_SLP_MASK = common dso_local global i32 0, align 4
@XCAN_IXR_ERROR_MASK = common dso_local global i32 0, align 4
@XCAN_IXR_RXOFLW_MASK = common dso_local global i32 0, align 4
@XCAN_IXR_ARBLST_MASK = common dso_local global i32 0, align 4
@XCAN_FLAG_RXMNF = common dso_local global i32 0, align 4
@XCAN_IXR_RXMNF_MASK = common dso_local global i32 0, align 4
@XCAN_IER_OFFSET = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@XCAN_MSR_LBACK_MASK = common dso_local global i32 0, align 4
@XCAN_FLAG_EXT_FILTERS = common dso_local global i32 0, align 4
@XCAN_AFR_EXT_OFFSET = common dso_local global i32 0, align 4
@XCAN_MSR_OFFSET = common dso_local global i32 0, align 4
@XCAN_SRR_OFFSET = common dso_local global i32 0, align 4
@XCAN_SRR_CEN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"status:#x%08x\0A\00", align 1
@XCAN_SR_OFFSET = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xcan_chip_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcan_chip_start(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.xcan_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.xcan_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.xcan_priv* %9, %struct.xcan_priv** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @set_reset_mode(%struct.net_device* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %111

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @xcan_set_bittiming(%struct.net_device* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %111

23:                                               ; preds = %16
  %24 = load i32, i32* @XCAN_IXR_TXOK_MASK, align 4
  %25 = load i32, i32* @XCAN_IXR_BSOFF_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @XCAN_IXR_WKUP_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @XCAN_IXR_SLP_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @XCAN_IXR_ERROR_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @XCAN_IXR_RXOFLW_MASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @XCAN_IXR_ARBLST_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %38 = call i32 @xcan_rx_int_mask(%struct.xcan_priv* %37)
  %39 = or i32 %36, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %41 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @XCAN_FLAG_RXMNF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %23
  %48 = load i32, i32* @XCAN_IXR_RXMNF_MASK, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %23
  %52 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %53 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %52, i32 0, i32 2
  %54 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %53, align 8
  %55 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %56 = load i32, i32* @XCAN_IER_OFFSET, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 %54(%struct.xcan_priv* %55, i32 %56, i32 %57)
  %59 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %60 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load i32, i32* @XCAN_MSR_LBACK_MASK, align 4
  store i32 %67, i32* %5, align 4
  br label %69

68:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %66
  %70 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %71 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @XCAN_FLAG_EXT_FILTERS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %79 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %78, i32 0, i32 2
  %80 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %79, align 8
  %81 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %82 = load i32, i32* @XCAN_AFR_EXT_OFFSET, align 4
  %83 = call i32 %80(%struct.xcan_priv* %81, i32 %82, i32 1)
  br label %84

84:                                               ; preds = %77, %69
  %85 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %86 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %85, i32 0, i32 2
  %87 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %86, align 8
  %88 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %89 = load i32, i32* @XCAN_MSR_OFFSET, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 %87(%struct.xcan_priv* %88, i32 %89, i32 %90)
  %92 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %93 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %92, i32 0, i32 2
  %94 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %93, align 8
  %95 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %96 = load i32, i32* @XCAN_SRR_OFFSET, align 4
  %97 = load i32, i32* @XCAN_SRR_CEN_MASK, align 4
  %98 = call i32 %94(%struct.xcan_priv* %95, i32 %96, i32 %97)
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %101 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %100, i32 0, i32 1
  %102 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %101, align 8
  %103 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %104 = load i32, i32* @XCAN_SR_OFFSET, align 4
  %105 = call i32 %102(%struct.xcan_priv* %103, i32 %104)
  %106 = call i32 @netdev_dbg(%struct.net_device* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %108 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %109 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %84, %21, %14
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.xcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_reset_mode(%struct.net_device*) #1

declare dso_local i32 @xcan_set_bittiming(%struct.net_device*) #1

declare dso_local i32 @xcan_rx_int_mask(%struct.xcan_priv*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
