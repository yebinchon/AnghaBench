; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ariadne.c_ariadne_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_ariadne.c_ariadne_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.Am79C960 = type { i32, i32 }

@CSR112 = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i32 0, align 4
@ariadne_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Shutting down ethercard, status was %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%lu packets missed\0A\00", align 1
@STOP = common dso_local global i32 0, align 4
@IRQ_AMIGA_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ariadne_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ariadne_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.Am79C960*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.Am79C960*
  store %struct.Am79C960* %7, %struct.Am79C960** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @netif_stop_queue(%struct.net_device* %8)
  %10 = load i32, i32* @CSR112, align 4
  %11 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %12 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %11, i32 0, i32 1
  store volatile i32 %10, i32* %12, align 4
  %13 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %14 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %13, i32 0, i32 0
  %15 = load volatile i32, i32* %14, align 4
  %16 = call i32 @swapw(i32 %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @CSR0, align 4
  %21 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %22 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %21, i32 0, i32 1
  store volatile i32 %20, i32* %22, align 4
  %23 = load i32, i32* @ariadne_debug, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %37

25:                                               ; preds = %1
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %28 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %27, i32 0, i32 0
  %29 = load volatile i32, i32* %28, align 4
  %30 = call i32 @netdev_dbg(%struct.net_device* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @netdev_dbg(%struct.net_device* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %25, %1
  %38 = load i32, i32* @STOP, align 4
  %39 = load %struct.Am79C960*, %struct.Am79C960** %3, align 8
  %40 = getelementptr inbounds %struct.Am79C960, %struct.Am79C960* %39, i32 0, i32 0
  store volatile i32 %38, i32* %40, align 4
  %41 = load i32, i32* @IRQ_AMIGA_PORTS, align 4
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = call i32 @free_irq(i32 %41, %struct.net_device* %42)
  ret i32 0
}

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @swapw(i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
