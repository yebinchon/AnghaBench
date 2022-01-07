; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_hw_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_hw_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpmac_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.plat_cpmac_data = type { i32 }

@CPMAC_RX_CONTROL = common dso_local global i32 0, align 4
@CPMAC_TX_CONTROL = common dso_local global i32 0, align 4
@CPMAC_UNICAST_CLEAR = common dso_local global i32 0, align 4
@CPMAC_RX_INT_CLEAR = common dso_local global i32 0, align 4
@CPMAC_TX_INT_CLEAR = common dso_local global i32 0, align 4
@CPMAC_MAC_INT_CLEAR = common dso_local global i32 0, align 4
@CPMAC_MAC_CONTROL = common dso_local global i32 0, align 4
@MAC_MII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cpmac_hw_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpmac_hw_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpmac_priv*, align 8
  %5 = alloca %struct.plat_cpmac_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.cpmac_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.cpmac_priv* %7, %struct.cpmac_priv** %4, align 8
  %8 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %9 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call %struct.plat_cpmac_data* @dev_get_platdata(i32* %11)
  store %struct.plat_cpmac_data* %12, %struct.plat_cpmac_data** %5, align 8
  %13 = load %struct.plat_cpmac_data*, %struct.plat_cpmac_data** %5, align 8
  %14 = getelementptr inbounds %struct.plat_cpmac_data, %struct.plat_cpmac_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ar7_device_reset(i32 %15)
  %17 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %18 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CPMAC_RX_CONTROL, align 4
  %21 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %22 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CPMAC_RX_CONTROL, align 4
  %25 = call i32 @cpmac_read(i32 %23, i32 %24)
  %26 = and i32 %25, -2
  %27 = call i32 @cpmac_write(i32 %19, i32 %20, i32 %26)
  %28 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %29 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CPMAC_TX_CONTROL, align 4
  %32 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %33 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CPMAC_TX_CONTROL, align 4
  %36 = call i32 @cpmac_read(i32 %34, i32 %35)
  %37 = and i32 %36, -2
  %38 = call i32 @cpmac_write(i32 %30, i32 %31, i32 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %55, %1
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %44 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @CPMAC_TX_PTR(i32 %46)
  %48 = call i32 @cpmac_write(i32 %45, i32 %47, i32 0)
  %49 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %50 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @CPMAC_RX_PTR(i32 %52)
  %54 = call i32 @cpmac_write(i32 %51, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %39

58:                                               ; preds = %39
  %59 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %60 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CPMAC_UNICAST_CLEAR, align 4
  %63 = call i32 @cpmac_write(i32 %61, i32 %62, i32 255)
  %64 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %65 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CPMAC_RX_INT_CLEAR, align 4
  %68 = call i32 @cpmac_write(i32 %66, i32 %67, i32 255)
  %69 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %70 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CPMAC_TX_INT_CLEAR, align 4
  %73 = call i32 @cpmac_write(i32 %71, i32 %72, i32 255)
  %74 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %75 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CPMAC_MAC_INT_CLEAR, align 4
  %78 = call i32 @cpmac_write(i32 %76, i32 %77, i32 255)
  %79 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %80 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @CPMAC_MAC_CONTROL, align 4
  %83 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %84 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CPMAC_MAC_CONTROL, align 4
  %87 = call i32 @cpmac_read(i32 %85, i32 %86)
  %88 = load i32, i32* @MAC_MII, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = call i32 @cpmac_write(i32 %81, i32 %82, i32 %90)
  ret void
}

declare dso_local %struct.cpmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.plat_cpmac_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @ar7_device_reset(i32) #1

declare dso_local i32 @cpmac_write(i32, i32, i32) #1

declare dso_local i32 @cpmac_read(i32, i32) #1

declare dso_local i32 @CPMAC_TX_PTR(i32) #1

declare dso_local i32 @CPMAC_RX_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
