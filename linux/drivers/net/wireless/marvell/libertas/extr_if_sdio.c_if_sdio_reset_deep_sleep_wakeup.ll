; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_reset_deep_sleep_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_reset_deep_sleep_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, %struct.if_sdio_card* }
%struct.if_sdio_card = type { i32 }

@CONFIGURATION_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sdio_writeb failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*)* @if_sdio_reset_deep_sleep_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_reset_deep_sleep_wakeup(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca %struct.if_sdio_card*, align 8
  %4 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %5 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %6 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %5, i32 0, i32 1
  %7 = load %struct.if_sdio_card*, %struct.if_sdio_card** %6, align 8
  store %struct.if_sdio_card* %7, %struct.if_sdio_card** %3, align 8
  store i32 -1, i32* %4, align 4
  %8 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %9 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @sdio_claim_host(i32 %10)
  %12 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %13 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CONFIGURATION_REG, align 4
  %16 = call i32 @sdio_writeb(i32 %14, i32 0, i32 %15, i32* %4)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %21 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @netdev_err(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %26 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sdio_release_host(i32 %27)
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_writeb(i32, i32, i32, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
