; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_rxq = type { i32, i32, %struct.hinic_rq* }
%struct.hinic_rq = type { i32 }
%struct.hinic_dev = type { i32 }

@HINIC_MSIX_DISABLE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hinic_rxq*, align 8
  %6 = alloca %struct.hinic_rq*, align 8
  %7 = alloca %struct.hinic_dev*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hinic_rxq*
  store %struct.hinic_rxq* %9, %struct.hinic_rxq** %5, align 8
  %10 = load %struct.hinic_rxq*, %struct.hinic_rxq** %5, align 8
  %11 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %10, i32 0, i32 2
  %12 = load %struct.hinic_rq*, %struct.hinic_rq** %11, align 8
  store %struct.hinic_rq* %12, %struct.hinic_rq** %6, align 8
  %13 = load %struct.hinic_rxq*, %struct.hinic_rxq** %5, align 8
  %14 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.hinic_dev* @netdev_priv(i32 %15)
  store %struct.hinic_dev* %16, %struct.hinic_dev** %7, align 8
  %17 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %18 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hinic_rq*, %struct.hinic_rq** %6, align 8
  %21 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HINIC_MSIX_DISABLE, align 4
  %24 = call i32 @hinic_hwdev_set_msix_state(i32 %19, i32 %22, i32 %23)
  %25 = load %struct.hinic_rxq*, %struct.hinic_rxq** %5, align 8
  %26 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.hinic_dev* @netdev_priv(i32 %27)
  store %struct.hinic_dev* %28, %struct.hinic_dev** %7, align 8
  %29 = load %struct.hinic_dev*, %struct.hinic_dev** %7, align 8
  %30 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hinic_rq*, %struct.hinic_rq** %6, align 8
  %33 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @hinic_hwdev_msix_cnt_set(i32 %31, i32 %34)
  %36 = load %struct.hinic_rxq*, %struct.hinic_rxq** %5, align 8
  %37 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %36, i32 0, i32 0
  %38 = call i32 @napi_schedule(i32* %37)
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %39
}

declare dso_local %struct.hinic_dev* @netdev_priv(i32) #1

declare dso_local i32 @hinic_hwdev_set_msix_state(i32, i32, i32) #1

declare dso_local i32 @hinic_hwdev_msix_cnt_set(i32, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
