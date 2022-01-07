; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_sd_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_sd_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @mmc_sd_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_sd_detect(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @mmc_get_card(i32 %6, i32* null)
  %8 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %9 = call i32 @_mmc_detect_card_removed(%struct.mmc_host* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %11 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mmc_put_card(i32 %12, i32* null)
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %18 = call i32 @mmc_sd_remove(%struct.mmc_host* %17)
  %19 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %20 = call i32 @mmc_claim_host(%struct.mmc_host* %19)
  %21 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %22 = call i32 @mmc_detach_bus(%struct.mmc_host* %21)
  %23 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %24 = call i32 @mmc_power_off(%struct.mmc_host* %23)
  %25 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %26 = call i32 @mmc_release_host(%struct.mmc_host* %25)
  br label %27

27:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @mmc_get_card(i32, i32*) #1

declare dso_local i32 @_mmc_detect_card_removed(%struct.mmc_host*) #1

declare dso_local i32 @mmc_put_card(i32, i32*) #1

declare dso_local i32 @mmc_sd_remove(%struct.mmc_host*) #1

declare dso_local i32 @mmc_claim_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_detach_bus(%struct.mmc_host*) #1

declare dso_local i32 @mmc_power_off(%struct.mmc_host*) #1

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
