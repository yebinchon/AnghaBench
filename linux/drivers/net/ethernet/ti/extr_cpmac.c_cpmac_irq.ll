; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpmac_priv = type { i32, i32 }

@CPMAC_MAC_INT_VECTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"interrupt status: 0x%08x\0A\00", align 1
@MAC_INT_TX = common dso_local global i32 0, align 4
@MAC_INT_RX = common dso_local global i32 0, align 4
@CPMAC_RX_INT_CLEAR = common dso_local global i32 0, align 4
@CPMAC_MAC_EOI_VECTOR = common dso_local global i32 0, align 4
@MAC_INT_HOST = common dso_local global i32 0, align 4
@MAC_INT_STATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cpmac_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpmac_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cpmac_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.cpmac_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.cpmac_priv* %12, %struct.cpmac_priv** %6, align 8
  %13 = load %struct.cpmac_priv*, %struct.cpmac_priv** %6, align 8
  %14 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CPMAC_MAC_INT_VECTOR, align 4
  %17 = call i32 @cpmac_read(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.cpmac_priv*, %struct.cpmac_priv** %6, align 8
  %19 = call i32 @netif_msg_intr(%struct.cpmac_priv* %18)
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @netdev_dbg(%struct.net_device* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @MAC_INT_TX, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 7
  %35 = call i32 @cpmac_end_xmit(%struct.net_device* %32, i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @MAC_INT_RX, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 7
  store i32 %44, i32* %7, align 4
  %45 = load %struct.cpmac_priv*, %struct.cpmac_priv** %6, align 8
  %46 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %45, i32 0, i32 1
  %47 = call i64 @napi_schedule_prep(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %41
  %50 = load %struct.cpmac_priv*, %struct.cpmac_priv** %6, align 8
  %51 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CPMAC_RX_INT_CLEAR, align 4
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 1, %54
  %56 = call i32 @cpmac_write(i32 %52, i32 %53, i32 %55)
  %57 = load %struct.cpmac_priv*, %struct.cpmac_priv** %6, align 8
  %58 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %57, i32 0, i32 1
  %59 = call i32 @__napi_schedule(i32* %58)
  br label %60

60:                                               ; preds = %49, %41
  br label %61

61:                                               ; preds = %60, %36
  %62 = load %struct.cpmac_priv*, %struct.cpmac_priv** %6, align 8
  %63 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CPMAC_MAC_EOI_VECTOR, align 4
  %66 = call i32 @cpmac_write(i32 %64, i32 %65, i32 0)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @MAC_INT_HOST, align 4
  %69 = load i32, i32* @MAC_INT_STATUS, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = call i32 @cpmac_check_status(%struct.net_device* %75)
  br label %77

77:                                               ; preds = %74, %61
  %78 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %78
}

declare dso_local %struct.cpmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpmac_read(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_msg_intr(%struct.cpmac_priv*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @cpmac_end_xmit(%struct.net_device*, i32) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @cpmac_write(i32, i32, i32) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @cpmac_check_status(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
