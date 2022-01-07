; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_bus.c_mmc_release_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_bus.c_mmc_release_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mmc_card = type { %struct.mmc_card* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @mmc_release_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_release_card(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.mmc_card*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.mmc_card* @mmc_dev_to_card(%struct.device* %4)
  store %struct.mmc_card* %5, %struct.mmc_card** %3, align 8
  %6 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %7 = call i32 @sdio_free_common_cis(%struct.mmc_card* %6)
  %8 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 0
  %10 = load %struct.mmc_card*, %struct.mmc_card** %9, align 8
  %11 = call i32 @kfree(%struct.mmc_card* %10)
  %12 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %13 = call i32 @kfree(%struct.mmc_card* %12)
  ret void
}

declare dso_local %struct.mmc_card* @mmc_dev_to_card(%struct.device*) #1

declare dso_local i32 @sdio_free_common_cis(%struct.mmc_card*) #1

declare dso_local i32 @kfree(%struct.mmc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
