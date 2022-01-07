; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c___ath10k_sdio_write_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c___ath10k_sdio_write_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath10k_htc_ep* }
%struct.ath10k_htc_ep = type { i32 }
%struct.ath10k_sdio_bus_request = type { i64, i64, i64, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"failed to write skb to 0x%x asynchronously: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ath10k_sdio_bus_request*)* @__ath10k_sdio_write_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ath10k_sdio_write_async(%struct.ath10k* %0, %struct.ath10k_sdio_bus_request* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_sdio_bus_request*, align 8
  %5 = alloca %struct.ath10k_htc_ep*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.ath10k_sdio_bus_request* %1, %struct.ath10k_sdio_bus_request** %4, align 8
  %8 = load %struct.ath10k_sdio_bus_request*, %struct.ath10k_sdio_bus_request** %4, align 8
  %9 = getelementptr inbounds %struct.ath10k_sdio_bus_request, %struct.ath10k_sdio_bus_request* %8, i32 0, i32 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %10, %struct.sk_buff** %6, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %12 = load %struct.ath10k_sdio_bus_request*, %struct.ath10k_sdio_bus_request** %4, align 8
  %13 = getelementptr inbounds %struct.ath10k_sdio_bus_request, %struct.ath10k_sdio_bus_request* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ath10k_sdio_write(%struct.ath10k* %11, i32 %14, i32 %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %26 = load %struct.ath10k_sdio_bus_request*, %struct.ath10k_sdio_bus_request** %4, align 8
  %27 = getelementptr inbounds %struct.ath10k_sdio_bus_request, %struct.ath10k_sdio_bus_request* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ath10k_warn(%struct.ath10k* %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %2
  %32 = load %struct.ath10k_sdio_bus_request*, %struct.ath10k_sdio_bus_request** %4, align 8
  %33 = getelementptr inbounds %struct.ath10k_sdio_bus_request, %struct.ath10k_sdio_bus_request* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %38 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %39, align 8
  %41 = load %struct.ath10k_sdio_bus_request*, %struct.ath10k_sdio_bus_request** %4, align 8
  %42 = getelementptr inbounds %struct.ath10k_sdio_bus_request, %struct.ath10k_sdio_bus_request* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %40, i64 %43
  store %struct.ath10k_htc_ep* %44, %struct.ath10k_htc_ep** %5, align 8
  %45 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @ath10k_htc_notify_tx_completion(%struct.ath10k_htc_ep* %45, %struct.sk_buff* %46)
  br label %59

48:                                               ; preds = %31
  %49 = load %struct.ath10k_sdio_bus_request*, %struct.ath10k_sdio_bus_request** %4, align 8
  %50 = getelementptr inbounds %struct.ath10k_sdio_bus_request, %struct.ath10k_sdio_bus_request* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.ath10k_sdio_bus_request*, %struct.ath10k_sdio_bus_request** %4, align 8
  %55 = getelementptr inbounds %struct.ath10k_sdio_bus_request, %struct.ath10k_sdio_bus_request* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @complete(i64 %56)
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %58, %36
  %60 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %61 = load %struct.ath10k_sdio_bus_request*, %struct.ath10k_sdio_bus_request** %4, align 8
  %62 = call i32 @ath10k_sdio_free_bus_req(%struct.ath10k* %60, %struct.ath10k_sdio_bus_request* %61)
  ret void
}

declare dso_local i32 @ath10k_sdio_write(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_htc_notify_tx_completion(%struct.ath10k_htc_ep*, %struct.sk_buff*) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @ath10k_sdio_free_bus_req(%struct.ath10k*, %struct.ath10k_sdio_bus_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
