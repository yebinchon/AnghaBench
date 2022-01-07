; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_enable_host_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sdio.c_mwifiex_sdio_enable_host_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.sdio_mmc_card* }
%struct.sdio_mmc_card = type { %struct.TYPE_2__*, %struct.sdio_func* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sdio_func = type { i32 }

@mwifiex_sdio_interrupt = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"claim irq failed: ret=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"enable host interrupt failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_sdio_enable_host_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_sdio_enable_host_int(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca %struct.mwifiex_adapter*, align 8
  %3 = alloca %struct.sdio_mmc_card*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %2, align 8
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %6, i32 0, i32 0
  %8 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %7, align 8
  store %struct.sdio_mmc_card* %8, %struct.sdio_mmc_card** %3, align 8
  %9 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %10 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %9, i32 0, i32 1
  %11 = load %struct.sdio_func*, %struct.sdio_func** %10, align 8
  store %struct.sdio_func* %11, %struct.sdio_func** %4, align 8
  %12 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %13 = call i32 @sdio_claim_host(%struct.sdio_func* %12)
  %14 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %15 = load i32, i32* @mwifiex_sdio_interrupt, align 4
  %16 = call i32 @sdio_claim_irq(%struct.sdio_func* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %20, i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %46

24:                                               ; preds = %1
  %25 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %26 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %27 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sdio_mmc_card*, %struct.sdio_mmc_card** %3, align 8
  %32 = getelementptr inbounds %struct.sdio_mmc_card, %struct.sdio_mmc_card* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mwifiex_write_reg_locked(%struct.sdio_func* %25, i32 %30, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %24
  %40 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %2, align 8
  %41 = load i32, i32* @ERROR, align 4
  %42 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %40, i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %44 = call i32 @sdio_release_irq(%struct.sdio_func* %43)
  br label %45

45:                                               ; preds = %39, %24
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %48 = call i32 @sdio_release_host(%struct.sdio_func* %47)
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_claim_irq(%struct.sdio_func*, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_write_reg_locked(%struct.sdio_func*, i32, i32) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
