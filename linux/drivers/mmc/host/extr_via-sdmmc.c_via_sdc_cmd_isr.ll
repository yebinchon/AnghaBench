; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_via-sdmmc.c_via_sdc_cmd_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_via-sdmmc.c_via_sdc_cmd_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_crdr_mmc_host = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [82 x i8] c"%s: Got command interrupt 0x%x even though no command operation was in progress.\0A\00", align 1
@VIA_CRDR_SDSTS_CRTO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@VIA_CRDR_SDSTS_SC = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@VIA_CRDR_SDSTS_CRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via_crdr_mmc_host*, i32)* @via_sdc_cmd_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_sdc_cmd_isr(%struct.via_crdr_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.via_crdr_mmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.via_crdr_mmc_host* %0, %struct.via_crdr_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %15 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mmc_hostname(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  br label %65

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @VIA_CRDR_SDSTS_CRTO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  %28 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %29 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  br label %45

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @VIA_CRDR_SDSTS_SC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* @EILSEQ, align 4
  %39 = sub nsw i32 0, %38
  %40 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %41 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %32
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %47 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %54 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %53, i32 0, i32 0
  %55 = call i32 @tasklet_schedule(i32* %54)
  br label %65

56:                                               ; preds = %45
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @VIA_CRDR_SDSTS_CRD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %63 = call i32 @via_sdc_finish_command(%struct.via_crdr_mmc_host* %62)
  br label %64

64:                                               ; preds = %61, %56
  br label %65

65:                                               ; preds = %13, %64, %52
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @via_sdc_finish_command(%struct.via_crdr_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
