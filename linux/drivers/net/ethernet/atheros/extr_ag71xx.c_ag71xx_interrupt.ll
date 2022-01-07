; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ag71xx = type { i32 }

@AG71XX_REG_INT_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@AG71XX_INT_ERR = common dso_local global i32 0, align 4
@AG71XX_INT_TX_BE = common dso_local global i32 0, align 4
@AG71XX_REG_TX_STATUS = common dso_local global i32 0, align 4
@TX_STATUS_BE = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"TX BUS error\0A\00", align 1
@AG71XX_INT_RX_BE = common dso_local global i32 0, align 4
@AG71XX_REG_RX_STATUS = common dso_local global i32 0, align 4
@RX_STATUS_BE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"RX BUS error\0A\00", align 1
@AG71XX_INT_POLL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"enable polling mode\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ag71xx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ag71xx*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ag71xx* @netdev_priv(%struct.net_device* %11)
  store %struct.ag71xx* %12, %struct.ag71xx** %7, align 8
  %13 = load %struct.ag71xx*, %struct.ag71xx** %7, align 8
  %14 = load i32, i32* @AG71XX_REG_INT_STATUS, align 4
  %15 = call i32 @ag71xx_rr(%struct.ag71xx* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %78

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @AG71XX_INT_ERR, align 4
  %27 = and i32 %25, %26
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @AG71XX_INT_TX_BE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.ag71xx*, %struct.ag71xx** %7, align 8
  %37 = load i32, i32* @AG71XX_REG_TX_STATUS, align 4
  %38 = load i32, i32* @TX_STATUS_BE, align 4
  %39 = call i32 @ag71xx_wr(%struct.ag71xx* %36, i32 %37, i32 %38)
  %40 = load %struct.ag71xx*, %struct.ag71xx** %7, align 8
  %41 = load i32, i32* @intr, align 4
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = call i32 @netif_err(%struct.ag71xx* %40, i32 %41, %struct.net_device* %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %35, %30
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @AG71XX_INT_RX_BE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.ag71xx*, %struct.ag71xx** %7, align 8
  %51 = load i32, i32* @AG71XX_REG_RX_STATUS, align 4
  %52 = load i32, i32* @RX_STATUS_BE, align 4
  %53 = call i32 @ag71xx_wr(%struct.ag71xx* %50, i32 %51, i32 %52)
  %54 = load %struct.ag71xx*, %struct.ag71xx** %7, align 8
  %55 = load i32, i32* @intr, align 4
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = call i32 @netif_err(%struct.ag71xx* %54, i32 %55, %struct.net_device* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %49, %44
  br label %59

59:                                               ; preds = %58, %24
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @AG71XX_INT_POLL, align 4
  %62 = and i32 %60, %61
  %63 = call i64 @likely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.ag71xx*, %struct.ag71xx** %7, align 8
  %67 = load i32, i32* @AG71XX_INT_POLL, align 4
  %68 = call i32 @ag71xx_int_disable(%struct.ag71xx* %66, i32 %67)
  %69 = load %struct.ag71xx*, %struct.ag71xx** %7, align 8
  %70 = load i32, i32* @intr, align 4
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = call i32 @netif_dbg(%struct.ag71xx* %69, i32 %70, %struct.net_device* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.ag71xx*, %struct.ag71xx** %7, align 8
  %74 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %73, i32 0, i32 0
  %75 = call i32 @napi_schedule(i32* %74)
  br label %76

76:                                               ; preds = %65, %59
  %77 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %22
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.ag71xx* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @netif_err(%struct.ag71xx*, i32, %struct.net_device*, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ag71xx_int_disable(%struct.ag71xx*, i32) #1

declare dso_local i32 @netif_dbg(%struct.ag71xx*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
