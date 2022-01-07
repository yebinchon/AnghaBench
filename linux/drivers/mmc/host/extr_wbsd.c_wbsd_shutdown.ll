; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mmc_host = type { i32 }
%struct.wbsd_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @wbsd_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_shutdown(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca %struct.wbsd_host*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.mmc_host* @dev_get_drvdata(%struct.device* %7)
  store %struct.mmc_host* %8, %struct.mmc_host** %5, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %10 = icmp ne %struct.mmc_host* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %14 = call %struct.wbsd_host* @mmc_priv(%struct.mmc_host* %13)
  store %struct.wbsd_host* %14, %struct.wbsd_host** %6, align 8
  %15 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %16 = call i32 @mmc_remove_host(%struct.mmc_host* %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load %struct.wbsd_host*, %struct.wbsd_host** %6, align 8
  %21 = call i32 @wbsd_chip_poweroff(%struct.wbsd_host* %20)
  br label %22

22:                                               ; preds = %19, %12
  %23 = load %struct.wbsd_host*, %struct.wbsd_host** %6, align 8
  %24 = call i32 @wbsd_release_resources(%struct.wbsd_host* %23)
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @wbsd_free_mmc(%struct.device* %25)
  br label %27

27:                                               ; preds = %22, %11
  ret void
}

declare dso_local %struct.mmc_host* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.wbsd_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @wbsd_chip_poweroff(%struct.wbsd_host*) #1

declare dso_local i32 @wbsd_release_resources(%struct.wbsd_host*) #1

declare dso_local i32 @wbsd_free_mmc(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
