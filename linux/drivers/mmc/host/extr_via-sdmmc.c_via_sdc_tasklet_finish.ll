; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_via-sdmmc.c_via_sdc_tasklet_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_via-sdmmc.c_via_sdc_tasklet_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_crdr_mmc_host = type { i32, i32, i32*, i32*, %struct.mmc_request*, i32 }
%struct.mmc_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @via_sdc_tasklet_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_sdc_tasklet_finish(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.via_crdr_mmc_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mmc_request*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.via_crdr_mmc_host*
  store %struct.via_crdr_mmc_host* %7, %struct.via_crdr_mmc_host** %3, align 8
  %8 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %12, i32 0, i32 5
  %14 = call i32 @del_timer(i32* %13)
  %15 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %15, i32 0, i32 4
  %17 = load %struct.mmc_request*, %struct.mmc_request** %16, align 8
  store %struct.mmc_request* %17, %struct.mmc_request** %5, align 8
  %18 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %18, i32 0, i32 4
  store %struct.mmc_request* null, %struct.mmc_request** %19, align 8
  %20 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %21 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  %22 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %24, i32 0, i32 1
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %29 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %32 = call i32 @mmc_request_done(i32 %30, %struct.mmc_request* %31)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
