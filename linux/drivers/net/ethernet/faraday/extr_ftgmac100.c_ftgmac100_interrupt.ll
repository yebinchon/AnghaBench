; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ftgmac100 = type { i32, i32, i64, i32 }

@FTGMAC100_INT_BAD = common dso_local global i32 0, align 4
@FTGMAC100_OFFSET_ISR = common dso_local global i64 0, align 8
@FTGMAC100_INT_NO_RXBUF = common dso_local global i32 0, align 4
@FTGMAC100_INT_RPKT_LOST = common dso_local global i32 0, align 4
@FTGMAC100_INT_XPKT_LOST = common dso_local global i32 0, align 4
@FTGMAC100_INT_AHB_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"AHB bus error ! Resetting chip.\0A\00", align 1
@FTGMAC100_OFFSET_IER = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ftgmac100_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ftgmac100*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.ftgmac100* @netdev_priv(%struct.net_device* %12)
  store %struct.ftgmac100* %13, %struct.ftgmac100** %7, align 8
  %14 = load i32, i32* @FTGMAC100_INT_BAD, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %16 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FTGMAC100_OFFSET_ISR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @ioread32(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %23 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FTGMAC100_OFFSET_ISR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @iowrite32(i32 %21, i64 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @FTGMAC100_INT_BAD, align 4
  %30 = and i32 %28, %29
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %95

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @FTGMAC100_INT_NO_RXBUF, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @FTGMAC100_INT_RPKT_LOST, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @FTGMAC100_INT_XPKT_LOST, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @FTGMAC100_INT_AHB_ERR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = call i64 (...) @net_ratelimit()
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = call i32 @netdev_warn(%struct.net_device* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %79 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @FTGMAC100_OFFSET_IER, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @iowrite32(i32 0, i64 %82)
  %84 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %85 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %84, i32 0, i32 3
  %86 = call i32 @schedule_work(i32* %85)
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %87, i32* %3, align 4
  br label %107

88:                                               ; preds = %66
  %89 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %90 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load i32, i32* %8, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %88, %2
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %98 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @FTGMAC100_OFFSET_IER, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @iowrite32(i32 %96, i64 %101)
  %103 = load %struct.ftgmac100*, %struct.ftgmac100** %7, align 8
  %104 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %103, i32 0, i32 1
  %105 = call i32 @napi_schedule_irqoff(i32* %104)
  %106 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %95, %77
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.ftgmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @napi_schedule_irqoff(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
