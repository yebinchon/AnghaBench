; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hostess_sv11.c_hostess_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hostess_sv11.c_hostess_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.z8530_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@dma = common dso_local global i32 0, align 4
@hostess_input = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hostess_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostess_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.z8530_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.z8530_dev* @dev_to_sv(%struct.net_device* %6)
  store %struct.z8530_dev* %7, %struct.z8530_dev** %4, align 8
  store i32 -1, i32* %5, align 4
  %8 = load i32, i32* @dma, align 4
  switch i32 %8, label %24 [
    i32 0, label %9
    i32 1, label %14
    i32 2, label %19
  ]

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = load %struct.z8530_dev*, %struct.z8530_dev** %4, align 8
  %12 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %11, i32 0, i32 0
  %13 = call i32 @z8530_sync_open(%struct.net_device* %10, %struct.TYPE_7__* %12)
  store i32 %13, i32* %5, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load %struct.z8530_dev*, %struct.z8530_dev** %4, align 8
  %17 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %16, i32 0, i32 0
  %18 = call i32 @z8530_sync_dma_open(%struct.net_device* %15, %struct.TYPE_7__* %17)
  store i32 %18, i32* %5, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = load %struct.z8530_dev*, %struct.z8530_dev** %4, align 8
  %22 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %21, i32 0, i32 0
  %23 = call i32 @z8530_sync_txdma_open(%struct.net_device* %20, %struct.TYPE_7__* %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %1, %19, %14, %9
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %60

29:                                               ; preds = %24
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @hdlc_open(%struct.net_device* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load i32, i32* @dma, align 4
  switch i32 %35, label %51 [
    i32 0, label %36
    i32 1, label %41
    i32 2, label %46
  ]

36:                                               ; preds = %34
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load %struct.z8530_dev*, %struct.z8530_dev** %4, align 8
  %39 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %38, i32 0, i32 0
  %40 = call i32 @z8530_sync_close(%struct.net_device* %37, %struct.TYPE_7__* %39)
  br label %51

41:                                               ; preds = %34
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = load %struct.z8530_dev*, %struct.z8530_dev** %4, align 8
  %44 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %43, i32 0, i32 0
  %45 = call i32 @z8530_sync_dma_close(%struct.net_device* %42, %struct.TYPE_7__* %44)
  br label %51

46:                                               ; preds = %34
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = load %struct.z8530_dev*, %struct.z8530_dev** %4, align 8
  %49 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %48, i32 0, i32 0
  %50 = call i32 @z8530_sync_txdma_close(%struct.net_device* %47, %struct.TYPE_7__* %49)
  br label %51

51:                                               ; preds = %34, %46, %41, %36
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %60

53:                                               ; preds = %29
  %54 = load i32, i32* @hostess_input, align 4
  %55 = load %struct.z8530_dev*, %struct.z8530_dev** %4, align 8
  %56 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @netif_start_queue(%struct.net_device* %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %53, %51, %27
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.z8530_dev* @dev_to_sv(%struct.net_device*) #1

declare dso_local i32 @z8530_sync_open(%struct.net_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @z8530_sync_dma_open(%struct.net_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @z8530_sync_txdma_open(%struct.net_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @hdlc_open(%struct.net_device*) #1

declare dso_local i32 @z8530_sync_close(%struct.net_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @z8530_sync_dma_close(%struct.net_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @z8530_sync_txdma_close(%struct.net_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
