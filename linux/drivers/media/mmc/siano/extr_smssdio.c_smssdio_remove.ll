; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mmc/siano/extr_smssdio.c_smssdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mmc/siano/extr_smssdio.c_smssdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.smssdio_device = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @smssdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smssdio_remove(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.smssdio_device*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %4 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %5 = call %struct.smssdio_device* @sdio_get_drvdata(%struct.sdio_func* %4)
  store %struct.smssdio_device* %5, %struct.smssdio_device** %3, align 8
  %6 = load %struct.smssdio_device*, %struct.smssdio_device** %3, align 8
  %7 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.smssdio_device*, %struct.smssdio_device** %3, align 8
  %12 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.smssdio_device*, %struct.smssdio_device** %3, align 8
  %15 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @smscore_putbuffer(i32 %13, i64 %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.smssdio_device*, %struct.smssdio_device** %3, align 8
  %20 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @smscore_unregister_device(i32 %21)
  %23 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %24 = call i32 @sdio_claim_host(%struct.sdio_func* %23)
  %25 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %26 = call i32 @sdio_release_irq(%struct.sdio_func* %25)
  %27 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %28 = call i32 @sdio_disable_func(%struct.sdio_func* %27)
  %29 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %30 = call i32 @sdio_release_host(%struct.sdio_func* %29)
  %31 = load %struct.smssdio_device*, %struct.smssdio_device** %3, align 8
  %32 = call i32 @kfree(%struct.smssdio_device* %31)
  ret void
}

declare dso_local %struct.smssdio_device* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @smscore_putbuffer(i32, i64) #1

declare dso_local i32 @smscore_unregister_device(i32) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @kfree(%struct.smssdio_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
