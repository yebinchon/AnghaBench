; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_request_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_request_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_sdmmc_host = type { i64, i32*, i32*, %struct.mmc_request*, i32 }
%struct.mmc_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alcor_sdmmc_host*, i32)* @alcor_request_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_request_complete(%struct.alcor_sdmmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.alcor_sdmmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_request*, align 8
  store %struct.alcor_sdmmc_host* %0, %struct.alcor_sdmmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %6, i32 0, i32 3
  %8 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %9 = icmp ne %struct.mmc_request* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %34

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %15, i32 0, i32 4
  %17 = call i32 @cancel_delayed_work(i32* %16)
  br label %18

18:                                               ; preds = %14, %11
  %19 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %20 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %19, i32 0, i32 3
  %21 = load %struct.mmc_request*, %struct.mmc_request** %20, align 8
  store %struct.mmc_request* %21, %struct.mmc_request** %5, align 8
  %22 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %22, i32 0, i32 3
  store %struct.mmc_request* null, %struct.mmc_request** %23, align 8
  %24 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %25 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %27 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %29 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %31 = call i32 @mmc_from_priv(%struct.alcor_sdmmc_host* %30)
  %32 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %33 = call i32 @mmc_request_done(i32 %31, %struct.mmc_request* %32)
  br label %34

34:                                               ; preds = %18, %10
  ret void
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

declare dso_local i32 @mmc_from_priv(%struct.alcor_sdmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
