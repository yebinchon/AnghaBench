; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.alcor_sdmmc_host = type { i32, %struct.mmc_request* }

@ENOMEDIUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @alcor_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.alcor_sdmmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.alcor_sdmmc_host* %7, %struct.alcor_sdmmc_host** %5, align 8
  %8 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %9 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %12 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %13 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %12, i32 0, i32 1
  store %struct.mmc_request* %11, %struct.mmc_request** %13, align 8
  %14 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %15 = call i64 @alcor_get_cd(%struct.mmc_host* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %19 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i32 @alcor_send_cmd(%struct.alcor_sdmmc_host* %18, %struct.TYPE_2__* %21, i32 1)
  br label %32

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEDIUM, align 4
  %25 = sub nsw i32 0, %24
  %26 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %31 = call i32 @alcor_request_complete(%struct.alcor_sdmmc_host* %30, i32 1)
  br label %32

32:                                               ; preds = %23, %17
  %33 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %5, align 8
  %34 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  ret void
}

declare dso_local %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @alcor_get_cd(%struct.mmc_host*) #1

declare dso_local i32 @alcor_send_cmd(%struct.alcor_sdmmc_host*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @alcor_request_complete(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
