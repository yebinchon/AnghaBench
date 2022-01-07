; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_request_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_request_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_mmc_host = type { i32, %struct.mmc_request* }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i64 }

@COOKIE_MAPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4740_mmc_host*)* @jz4740_mmc_request_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4740_mmc_request_done(%struct.jz4740_mmc_host* %0) #0 {
  %2 = alloca %struct.jz4740_mmc_host*, align 8
  %3 = alloca %struct.mmc_request*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  store %struct.jz4740_mmc_host* %0, %struct.jz4740_mmc_host** %2, align 8
  %5 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %5, i32 0, i32 1
  %7 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  store %struct.mmc_request* %7, %struct.mmc_request** %3, align 8
  %8 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %8, i32 0, i32 0
  %10 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  store %struct.mmc_data* %10, %struct.mmc_data** %4, align 8
  %11 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %2, align 8
  %12 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %11, i32 0, i32 1
  store %struct.mmc_request* null, %struct.mmc_request** %12, align 8
  %13 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %14 = icmp ne %struct.mmc_data* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @COOKIE_MAPPED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %2, align 8
  %23 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %24 = call i32 @jz4740_mmc_dma_unmap(%struct.jz4740_mmc_host* %22, %struct.mmc_data* %23)
  br label %25

25:                                               ; preds = %21, %15, %1
  %26 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %2, align 8
  %27 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %30 = call i32 @mmc_request_done(i32 %28, %struct.mmc_request* %29)
  ret void
}

declare dso_local i32 @jz4740_mmc_dma_unmap(%struct.jz4740_mmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
