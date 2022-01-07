; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_boot.c__mic_request_threaded_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_boot.c__mic_request_threaded_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_irq = type { i32 }
%struct.mbus_device = type { i32 }

@MIC_INTR_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mic_irq* (%struct.mbus_device*, i32, i32, i8*, i8*, i32)* @_mic_request_threaded_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mic_irq* @_mic_request_threaded_irq(%struct.mbus_device* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.mbus_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.mbus_device* %0, %struct.mbus_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.mbus_device*, %struct.mbus_device** %7, align 8
  %14 = call i32 @mbdev_to_mdev(%struct.mbus_device* %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @MIC_INTR_DMA, align 4
  %21 = call %struct.mic_irq* @mic_request_threaded_irq(i32 %14, i32 %15, i32 %16, i8* %17, i8* %18, i32 %19, i32 %20)
  ret %struct.mic_irq* %21
}

declare dso_local %struct.mic_irq* @mic_request_threaded_irq(i32, i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @mbdev_to_mdev(%struct.mbus_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
