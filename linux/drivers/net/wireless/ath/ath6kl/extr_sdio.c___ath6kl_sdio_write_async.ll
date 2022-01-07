; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c___ath6kl_sdio_write_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c___ath6kl_sdio_write_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_sdio = type { i32 }
%struct.bus_request = type { i8*, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl_sdio*, %struct.bus_request*)* @__ath6kl_sdio_write_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ath6kl_sdio_write_async(%struct.ath6kl_sdio* %0, %struct.bus_request* %1) #0 {
  %3 = alloca %struct.ath6kl_sdio*, align 8
  %4 = alloca %struct.bus_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ath6kl_sdio* %0, %struct.ath6kl_sdio** %3, align 8
  store %struct.bus_request* %1, %struct.bus_request** %4, align 8
  %7 = load %struct.bus_request*, %struct.bus_request** %4, align 8
  %8 = getelementptr inbounds %struct.bus_request, %struct.bus_request* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %13 = load %struct.bus_request*, %struct.bus_request** %4, align 8
  %14 = call i32 @ath6kl_sdio_scat_rw(%struct.ath6kl_sdio* %12, %struct.bus_request* %13)
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %17 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bus_request*, %struct.bus_request** %4, align 8
  %20 = getelementptr inbounds %struct.bus_request, %struct.bus_request* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bus_request*, %struct.bus_request** %4, align 8
  %23 = getelementptr inbounds %struct.bus_request, %struct.bus_request* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.bus_request*, %struct.bus_request** %4, align 8
  %26 = getelementptr inbounds %struct.bus_request, %struct.bus_request* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bus_request*, %struct.bus_request** %4, align 8
  %29 = getelementptr inbounds %struct.bus_request, %struct.bus_request* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ath6kl_sdio_read_write_sync(i32 %18, i32 %21, i32 %24, i32 %27, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.bus_request*, %struct.bus_request** %4, align 8
  %33 = getelementptr inbounds %struct.bus_request, %struct.bus_request* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %5, align 8
  %35 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %3, align 8
  %36 = load %struct.bus_request*, %struct.bus_request** %4, align 8
  %37 = call i32 @ath6kl_sdio_free_bus_req(%struct.ath6kl_sdio* %35, %struct.bus_request* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ath6kl_hif_rw_comp_handler(i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @ath6kl_sdio_scat_rw(%struct.ath6kl_sdio*, %struct.bus_request*) #1

declare dso_local i32 @ath6kl_sdio_read_write_sync(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath6kl_sdio_free_bus_req(%struct.ath6kl_sdio*, %struct.bus_request*) #1

declare dso_local i32 @ath6kl_hif_rw_comp_handler(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
