; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sealevel.c_sealevel_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sealevel.c_sealevel_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.slvl_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@sealevel_input = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sealevel_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sealevel_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.slvl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.slvl_device* @dev_to_chan(%struct.net_device* %7)
  store %struct.slvl_device* %8, %struct.slvl_device** %4, align 8
  store i32 -1, i32* %5, align 4
  %9 = load %struct.slvl_device*, %struct.slvl_device** %4, align 8
  %10 = getelementptr inbounds %struct.slvl_device, %struct.slvl_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %25 [
    i32 0, label %13
    i32 1, label %19
  ]

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = load %struct.slvl_device*, %struct.slvl_device** %4, align 8
  %16 = getelementptr inbounds %struct.slvl_device, %struct.slvl_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call i32 @z8530_sync_dma_open(%struct.net_device* %14, %struct.TYPE_5__* %17)
  store i32 %18, i32* %5, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = load %struct.slvl_device*, %struct.slvl_device** %4, align 8
  %22 = getelementptr inbounds %struct.slvl_device, %struct.slvl_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = call i32 @z8530_sync_open(%struct.net_device* %20, %struct.TYPE_5__* %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %1, %19, %13
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %59

30:                                               ; preds = %25
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @hdlc_open(%struct.net_device* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %49 [
    i32 0, label %37
    i32 1, label %43
  ]

37:                                               ; preds = %35
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load %struct.slvl_device*, %struct.slvl_device** %4, align 8
  %40 = getelementptr inbounds %struct.slvl_device, %struct.slvl_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @z8530_sync_dma_close(%struct.net_device* %38, %struct.TYPE_5__* %41)
  br label %49

43:                                               ; preds = %35
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = load %struct.slvl_device*, %struct.slvl_device** %4, align 8
  %46 = getelementptr inbounds %struct.slvl_device, %struct.slvl_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = call i32 @z8530_sync_close(%struct.net_device* %44, %struct.TYPE_5__* %47)
  br label %49

49:                                               ; preds = %35, %43, %37
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %59

51:                                               ; preds = %30
  %52 = load i32, i32* @sealevel_input, align 4
  %53 = load %struct.slvl_device*, %struct.slvl_device** %4, align 8
  %54 = getelementptr inbounds %struct.slvl_device, %struct.slvl_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @netif_start_queue(%struct.net_device* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %51, %49, %28
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.slvl_device* @dev_to_chan(%struct.net_device*) #1

declare dso_local i32 @z8530_sync_dma_open(%struct.net_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @z8530_sync_open(%struct.net_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @hdlc_open(%struct.net_device*) #1

declare dso_local i32 @z8530_sync_dma_close(%struct.net_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @z8530_sync_close(%struct.net_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
