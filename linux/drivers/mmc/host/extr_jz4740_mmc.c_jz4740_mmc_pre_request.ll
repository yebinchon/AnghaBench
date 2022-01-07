; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_pre_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_pre_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i8* }
%struct.jz4740_mmc_host = type { i32 }

@COOKIE_UNMAPPED = common dso_local global i8* null, align 8
@COOKIE_PREMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @jz4740_mmc_pre_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4740_mmc_pre_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.jz4740_mmc_host*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.jz4740_mmc_host* @mmc_priv(%struct.mmc_host* %7)
  store %struct.jz4740_mmc_host* %8, %struct.jz4740_mmc_host** %5, align 8
  %9 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 0
  %11 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  store %struct.mmc_data* %11, %struct.mmc_data** %6, align 8
  %12 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %13 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %30

17:                                               ; preds = %2
  %18 = load i8*, i8** @COOKIE_UNMAPPED, align 8
  %19 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %20 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %22 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %23 = load i32, i32* @COOKIE_PREMAPPED, align 4
  %24 = call i64 @jz4740_mmc_prepare_dma_data(%struct.jz4740_mmc_host* %21, %struct.mmc_data* %22, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i8*, i8** @COOKIE_UNMAPPED, align 8
  %28 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %29 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %16, %26, %17
  ret void
}

declare dso_local %struct.jz4740_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i64 @jz4740_mmc_prepare_dma_data(%struct.jz4740_mmc_host*, %struct.mmc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
