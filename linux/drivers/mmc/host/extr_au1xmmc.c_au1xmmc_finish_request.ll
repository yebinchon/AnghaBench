; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_finish_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_finish_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.mmc_request* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.mmc_request = type { i32 }

@HOST_F_ACTIVE = common dso_local global i32 0, align 4
@HOST_F_DMA = common dso_local global i32 0, align 4
@HOST_S_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xmmc_host*)* @au1xmmc_finish_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_finish_request(%struct.au1xmmc_host* %0) #0 {
  %2 = alloca %struct.au1xmmc_host*, align 8
  %3 = alloca %struct.mmc_request*, align 8
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %2, align 8
  %4 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %4, i32 0, i32 5
  %6 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  store %struct.mmc_request* %6, %struct.mmc_request** %3, align 8
  %7 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %8 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %7, i32 0, i32 5
  store %struct.mmc_request* null, %struct.mmc_request** %8, align 8
  %9 = load i32, i32* @HOST_F_ACTIVE, align 4
  %10 = load i32, i32* @HOST_F_DMA, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %13 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %20 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %23 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %26 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %29 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @HOST_S_IDLE, align 4
  %32 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %33 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %35 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %38 = call i32 @mmc_request_done(i32 %36, %struct.mmc_request* %37)
  ret void
}

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
