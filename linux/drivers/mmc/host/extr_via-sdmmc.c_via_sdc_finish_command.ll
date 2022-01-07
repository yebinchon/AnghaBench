; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_via-sdmmc.c_via_sdc_finish_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_via-sdmmc.c_via_sdc_finish_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_crdr_mmc_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via_crdr_mmc_host*)* @via_sdc_finish_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_sdc_finish_command(%struct.via_crdr_mmc_host* %0) #0 {
  %2 = alloca %struct.via_crdr_mmc_host*, align 8
  store %struct.via_crdr_mmc_host* %0, %struct.via_crdr_mmc_host** %2, align 8
  %3 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %4 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = call i32 @via_sdc_get_response(%struct.via_crdr_mmc_host* %3, %struct.TYPE_2__* %6)
  %8 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %9 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %13 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %20 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %19, i32 0, i32 1
  %21 = call i32 @tasklet_schedule(i32* %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %2, align 8
  %24 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %23, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %24, align 8
  ret void
}

declare dso_local i32 @via_sdc_get_response(%struct.via_crdr_mmc_host*, %struct.TYPE_2__*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
