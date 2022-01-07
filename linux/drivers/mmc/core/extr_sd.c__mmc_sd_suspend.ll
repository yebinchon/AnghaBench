; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c__mmc_sd_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c__mmc_sd_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @_mmc_sd_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mmc_sd_suspend(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = call i32 @mmc_claim_host(%struct.mmc_host* %4)
  %6 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %7 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @mmc_card_suspended(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %14 = call i32 @mmc_host_is_spi(%struct.mmc_host* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %18 = call i32 @mmc_deselect_cards(%struct.mmc_host* %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %24 = call i32 @mmc_power_off(%struct.mmc_host* %23)
  %25 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mmc_card_set_suspended(i32 %27)
  br label %29

29:                                               ; preds = %22, %19
  br label %30

30:                                               ; preds = %29, %11
  %31 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %32 = call i32 @mmc_release_host(%struct.mmc_host* %31)
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @mmc_claim_host(%struct.mmc_host*) #1

declare dso_local i64 @mmc_card_suspended(i32) #1

declare dso_local i32 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @mmc_deselect_cards(%struct.mmc_host*) #1

declare dso_local i32 @mmc_power_off(%struct.mmc_host*) #1

declare dso_local i32 @mmc_card_set_suspended(i32) #1

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
