; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_via-sdmmc.c_via_sdc_data_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_via-sdmmc.c_via_sdc_data_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_crdr_mmc_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VIA_CRDR_SDSTS_DT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@VIA_CRDR_SDSTS_RC = common dso_local global i32 0, align 4
@VIA_CRDR_SDSTS_WC = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via_crdr_mmc_host*, i32)* @via_sdc_data_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_sdc_data_isr(%struct.via_crdr_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.via_crdr_mmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.via_crdr_mmc_host* %0, %struct.via_crdr_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @VIA_CRDR_SDSTS_DT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @ETIMEDOUT, align 4
  %15 = sub nsw i32 0, %14
  %16 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %17 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  br label %35

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @VIA_CRDR_SDSTS_RC, align 4
  %23 = load i32, i32* @VIA_CRDR_SDSTS_WC, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* @EILSEQ, align 4
  %29 = sub nsw i32 0, %28
  %30 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %31 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %27, %20
  br label %35

35:                                               ; preds = %34, %13
  %36 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %37 = call i32 @via_sdc_finish_data(%struct.via_crdr_mmc_host* %36)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @via_sdc_finish_data(%struct.via_crdr_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
