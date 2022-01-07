; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_ll_temac_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_ll_temac_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.temac_local = type { i32 (%struct.temac_local*, i32)*, i32, i32 (%struct.temac_local*, i32, i32)* }

@TX_IRQ_REG = common dso_local global i32 0, align 4
@IRQ_COAL = common dso_local global i32 0, align 4
@IRQ_DLY = common dso_local global i32 0, align 4
@IRQ_ERR = common dso_local global i32 0, align 4
@IRQ_DMAERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"TX error 0x%x TX_CHNL_STS=0x%08x\0A\00", align 1
@TX_CHNL_STS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ll_temac_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_temac_tx_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.temac_local*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.temac_local* @netdev_priv(%struct.net_device* %10)
  store %struct.temac_local* %11, %struct.temac_local** %6, align 8
  %12 = load %struct.temac_local*, %struct.temac_local** %6, align 8
  %13 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %12, i32 0, i32 0
  %14 = load i32 (%struct.temac_local*, i32)*, i32 (%struct.temac_local*, i32)** %13, align 8
  %15 = load %struct.temac_local*, %struct.temac_local** %6, align 8
  %16 = load i32, i32* @TX_IRQ_REG, align 4
  %17 = call i32 %14(%struct.temac_local* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.temac_local*, %struct.temac_local** %6, align 8
  %19 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %18, i32 0, i32 2
  %20 = load i32 (%struct.temac_local*, i32, i32)*, i32 (%struct.temac_local*, i32, i32)** %19, align 8
  %21 = load %struct.temac_local*, %struct.temac_local** %6, align 8
  %22 = load i32, i32* @TX_IRQ_REG, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 %20(%struct.temac_local* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @IRQ_COAL, align 4
  %27 = load i32, i32* @IRQ_DLY, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.temac_local*, %struct.temac_local** %6, align 8
  %33 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @temac_start_xmit_done(i32 %34)
  br label %36

36:                                               ; preds = %31, %2
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @IRQ_ERR, align 4
  %39 = load i32, i32* @IRQ_DMAERR, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.temac_local*, %struct.temac_local** %6, align 8
  %48 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %47, i32 0, i32 0
  %49 = load i32 (%struct.temac_local*, i32)*, i32 (%struct.temac_local*, i32)** %48, align 8
  %50 = load %struct.temac_local*, %struct.temac_local** %6, align 8
  %51 = load i32, i32* @TX_CHNL_STS, align 4
  %52 = call i32 %49(%struct.temac_local* %50, i32 %51)
  %53 = call i32 @dev_err_ratelimited(i32* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %52)
  br label %54

54:                                               ; preds = %43, %36
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %55
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @temac_start_xmit_done(i32) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
