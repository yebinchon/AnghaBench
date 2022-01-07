; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_grcan.c_grcan_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_grcan.c_grcan_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.grcan_priv = type { i32, i32, i8*, i8*, i32, %struct.TYPE_6__, i32, %struct.TYPE_4__, %struct.grcan_dma }
%struct.TYPE_6__ = type { i32, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.grcan_dma = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"could not allocate DMA buffers\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@grcan_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @grcan_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grcan_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.grcan_priv*, align 8
  %5 = alloca %struct.grcan_dma*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.grcan_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.grcan_priv* %9, %struct.grcan_priv** %4, align 8
  %10 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %11 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %10, i32 0, i32 8
  store %struct.grcan_dma* %11, %struct.grcan_dma** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %14 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %18 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @grcan_allocate_dma_buffers(%struct.net_device* %12, i32 %16, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %139

28:                                               ; preds = %1
  %29 = load %struct.grcan_dma*, %struct.grcan_dma** %5, align 8
  %30 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kcalloc(i32 %32, i32 1, i32 %33)
  %35 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %36 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %38 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %135

44:                                               ; preds = %28
  %45 = load %struct.grcan_dma*, %struct.grcan_dma** %5, align 8
  %46 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %50 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %53 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %56 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = load %struct.grcan_dma*, %struct.grcan_dma** %5, align 8
  %59 = getelementptr inbounds %struct.grcan_dma, %struct.grcan_dma* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @kcalloc(i32 %61, i32 1, i32 %62)
  %64 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %65 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %67 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %44
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %130

73:                                               ; preds = %44
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = call i32 @open_candev(%struct.net_device* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %125

79:                                               ; preds = %73
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @grcan_interrupt, align 4
  %84 = load i32, i32* @IRQF_SHARED, align 4
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = call i32 @request_irq(i32 %82, i32 %83, i32 %84, i32 %87, %struct.net_device* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %122

93:                                               ; preds = %79
  %94 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %95 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %94, i32 0, i32 4
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @spin_lock_irqsave(i32* %95, i64 %96)
  %98 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %99 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %98, i32 0, i32 6
  %100 = call i32 @napi_enable(i32* %99)
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = call i32 @grcan_start(%struct.net_device* %101)
  %103 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %104 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %93
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = call i32 @netif_start_queue(%struct.net_device* %111)
  br label %113

113:                                              ; preds = %110, %93
  %114 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %115 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %114, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %117 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %116, i32 0, i32 1
  store i32 0, i32* %117, align 4
  %118 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %119 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %118, i32 0, i32 4
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  store i32 0, i32* %2, align 4
  br label %139

122:                                              ; preds = %92
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = call i32 @close_candev(%struct.net_device* %123)
  br label %125

125:                                              ; preds = %122, %78
  %126 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %127 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @kfree(i8* %128)
  br label %130

130:                                              ; preds = %125, %70
  %131 = load %struct.grcan_priv*, %struct.grcan_priv** %4, align 8
  %132 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @kfree(i8* %133)
  br label %135

135:                                              ; preds = %130, %41
  %136 = load %struct.net_device*, %struct.net_device** %3, align 8
  %137 = call i32 @grcan_free_dma_buffers(%struct.net_device* %136)
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %135, %113, %24
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.grcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @grcan_allocate_dma_buffers(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @grcan_start(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @grcan_free_dma_buffers(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
