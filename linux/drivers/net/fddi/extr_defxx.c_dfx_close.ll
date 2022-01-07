; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"In dfx_close...\0A\00", align 1
@PI_PDQ_K_REG_HOST_INT_ENB = common dso_local global i32 0, align 4
@PI_HOST_INT_K_DISABLE_ALL_INTS = common dso_local global i32 0, align 4
@PI_PDATA_A_RESET_M_SKIP_ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dfx_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfx_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.TYPE_13__* @netdev_priv(%struct.net_device* %4)
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %3, align 8
  %6 = call i32 @DBG_printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = load i32, i32* @PI_PDQ_K_REG_HOST_INT_ENB, align 4
  %9 = load i32, i32* @PI_HOST_INT_K_DISABLE_ALL_INTS, align 4
  %10 = call i32 @dfx_port_write_long(%struct.TYPE_13__* %7, i32 %8, i32 %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = load i32, i32* @PI_PDATA_A_RESET_M_SKIP_ST, align 4
  %13 = call i32 @dfx_hw_dma_uninit(%struct.TYPE_13__* %11, i32 %12)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = call i32 @dfx_xmt_flush(%struct.TYPE_13__* %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memset(i32 %27, i32 0, i32 4)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = call i32 @dfx_rcv_flush(%struct.TYPE_13__* %29)
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @netif_stop_queue(%struct.net_device* %31)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @free_irq(i32 %35, %struct.net_device* %36)
  ret i32 0
}

declare dso_local %struct.TYPE_13__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DBG_printk(i8*) #1

declare dso_local i32 @dfx_port_write_long(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @dfx_hw_dma_uninit(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @dfx_xmt_flush(%struct.TYPE_13__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @dfx_rcv_flush(%struct.TYPE_13__*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
