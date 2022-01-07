; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_power_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_power_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, %struct.if_sdio_card* }
%struct.if_sdio_card = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*)* @if_sdio_power_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_power_restore(%struct.lbs_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.if_sdio_card*, align 8
  %5 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  %6 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %7 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %6, i32 0, i32 1
  %8 = load %struct.if_sdio_card*, %struct.if_sdio_card** %7, align 8
  store %struct.if_sdio_card* %8, %struct.if_sdio_card** %4, align 8
  %9 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %10 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @pm_runtime_get_sync(i32* %12)
  %14 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %15 = call i32 @if_sdio_power_on(%struct.if_sdio_card* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %28

20:                                               ; preds = %1
  %21 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %22 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %25 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @wait_event(i32 %23, i32 %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %20, %18
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @if_sdio_power_on(%struct.if_sdio_card*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
