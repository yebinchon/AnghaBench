; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.mwifiex_adapter = type { i64, i32 }
%struct.sdio_mmc_card = type { %struct.mwifiex_adapter* }

@.str = private unnamed_addr constant [33 x i8] c"int: func=%p card=%p adapter=%p\0A\00", align 1
@PS_STATE_SLEEP = common dso_local global i64 0, align 8
@PS_STATE_AWAKE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @mwifiex_sdio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_sdio_interrupt(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.sdio_mmc_card*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %5 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %6 = call %struct.sdio_mmc_card* @sdio_get_drvdata(%struct.sdio_func* %5)
  store %struct.sdio_mmc_card* %6, %struct.sdio_mmc_card** %4, align 8
  %7 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %8 = icmp ne %struct.sdio_mmc_card* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %11 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %10, i32 0, i32 0
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  %13 = icmp ne %struct.mwifiex_adapter* %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %16 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %17 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %18 = icmp ne %struct.sdio_mmc_card* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %21 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %20, i32 0, i32 0
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %21, align 8
  br label %24

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi %struct.mwifiex_adapter* [ %22, %19 ], [ null, %23 ]
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.sdio_func* %15, %struct.sdio_mmc_card* %16, %struct.mwifiex_adapter* %25)
  br label %50

27:                                               ; preds = %9
  %28 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %4, align 8
  %29 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %28, i32 0, i32 0
  %30 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %29, align 8
  store %struct.mwifiex_adapter* %30, %struct.mwifiex_adapter** %3, align 8
  %31 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %27
  %36 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PS_STATE_SLEEP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i64, i64* @PS_STATE_AWAKE, align 8
  %43 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %35, %27
  %46 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %47 = call i32 @mwifiex_interrupt_status(%struct.mwifiex_adapter* %46)
  %48 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %49 = call i32 @mwifiex_main_process(%struct.mwifiex_adapter* %48)
  br label %50

50:                                               ; preds = %45, %24
  ret void
}

declare dso_local %struct.sdio_mmc_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @pr_err(i8*, %struct.sdio_func*, %struct.sdio_mmc_card*, %struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_interrupt_status(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_main_process(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
