; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { %struct.lbs_private*, %struct.sdio_func* }
%struct.lbs_private = type { i64 }
%struct.sdio_func = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_sdio_card*)* @if_sdio_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_power_off(%struct.if_sdio_card* %0) #0 {
  %2 = alloca %struct.if_sdio_card*, align 8
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca %struct.lbs_private*, align 8
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %2, align 8
  %5 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %6 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %5, i32 0, i32 1
  %7 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  store %struct.sdio_func* %7, %struct.sdio_func** %3, align 8
  %8 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %9 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %8, i32 0, i32 0
  %10 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  store %struct.lbs_private* %10, %struct.lbs_private** %4, align 8
  %11 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %12 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %14 = call i32 @sdio_claim_host(%struct.sdio_func* %13)
  %15 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %16 = call i32 @sdio_release_irq(%struct.sdio_func* %15)
  %17 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %18 = call i32 @sdio_disable_func(%struct.sdio_func* %17)
  %19 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %20 = call i32 @sdio_release_host(%struct.sdio_func* %19)
  ret i32 0
}

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
