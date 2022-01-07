; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_eth_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_eth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.pxa168_eth_private = type { i32, i64, i64, i64 }

@pxa168_eth_int_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"can't assign irq\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @pxa168_eth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa168_eth_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pxa168_eth_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.pxa168_eth_private* @netdev_priv(%struct.net_device* %6)
  store %struct.pxa168_eth_private* %7, %struct.pxa168_eth_private** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @pxa168_init_phy(%struct.net_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %74

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @pxa168_eth_int_handler, align 4
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @request_irq(i32 %17, i32 %18, i32 0, i32 %21, %struct.net_device* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %14
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %74

32:                                               ; preds = %14
  %33 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %34 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @rxq_init(%struct.net_device* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %67

40:                                               ; preds = %32
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @txq_init(%struct.net_device* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %64

46:                                               ; preds = %40
  %47 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %48 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %50 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i32 @rxq_refill(%struct.net_device* %51)
  %53 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %54 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %56 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @netif_carrier_off(%struct.net_device* %57)
  %59 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %60 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %59, i32 0, i32 0
  %61 = call i32 @napi_enable(i32* %60)
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call i32 @eth_port_start(%struct.net_device* %62)
  store i32 0, i32* %2, align 4
  br label %74

64:                                               ; preds = %45
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = call i32 @rxq_deinit(%struct.net_device* %65)
  br label %67

67:                                               ; preds = %64, %39
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = call i32 @free_irq(i32 %70, %struct.net_device* %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %67, %46, %26, %12
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.pxa168_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pxa168_init_phy(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @rxq_init(%struct.net_device*) #1

declare dso_local i32 @txq_init(%struct.net_device*) #1

declare dso_local i32 @rxq_refill(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @eth_port_start(%struct.net_device*) #1

declare dso_local i32 @rxq_deinit(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
