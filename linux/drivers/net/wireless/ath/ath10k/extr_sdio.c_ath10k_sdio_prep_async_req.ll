; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_prep_async_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_prep_async_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32 }
%struct.completion = type { i32 }
%struct.ath10k_sdio = type { i32, i32 }
%struct.ath10k_sdio_bus_request = type { i32, i32, i32, %struct.completion*, i32, %struct.sk_buff* }

@.str = private unnamed_addr constant [50 x i8] c"unable to allocate bus request for async request\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, %struct.sk_buff*, %struct.completion*, i32, i32)* @ath10k_sdio_prep_async_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_prep_async_req(%struct.ath10k* %0, i32 %1, %struct.sk_buff* %2, %struct.completion* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.completion*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ath10k_sdio*, align 8
  %15 = alloca %struct.ath10k_sdio_bus_request*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.completion* %3, %struct.completion** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %17 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %16)
  store %struct.ath10k_sdio* %17, %struct.ath10k_sdio** %14, align 8
  %18 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %19 = call %struct.ath10k_sdio_bus_request* @ath10k_sdio_alloc_busreq(%struct.ath10k* %18)
  store %struct.ath10k_sdio_bus_request* %19, %struct.ath10k_sdio_bus_request** %15, align 8
  %20 = load %struct.ath10k_sdio_bus_request*, %struct.ath10k_sdio_bus_request** %15, align 8
  %21 = icmp ne %struct.ath10k_sdio_bus_request* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %6
  %23 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %24 = call i32 @ath10k_warn(%struct.ath10k* %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %54

27:                                               ; preds = %6
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = load %struct.ath10k_sdio_bus_request*, %struct.ath10k_sdio_bus_request** %15, align 8
  %30 = getelementptr inbounds %struct.ath10k_sdio_bus_request, %struct.ath10k_sdio_bus_request* %29, i32 0, i32 5
  store %struct.sk_buff* %28, %struct.sk_buff** %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.ath10k_sdio_bus_request*, %struct.ath10k_sdio_bus_request** %15, align 8
  %33 = getelementptr inbounds %struct.ath10k_sdio_bus_request, %struct.ath10k_sdio_bus_request* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.ath10k_sdio_bus_request*, %struct.ath10k_sdio_bus_request** %15, align 8
  %36 = getelementptr inbounds %struct.ath10k_sdio_bus_request, %struct.ath10k_sdio_bus_request* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.ath10k_sdio_bus_request*, %struct.ath10k_sdio_bus_request** %15, align 8
  %39 = getelementptr inbounds %struct.ath10k_sdio_bus_request, %struct.ath10k_sdio_bus_request* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.completion*, %struct.completion** %11, align 8
  %41 = load %struct.ath10k_sdio_bus_request*, %struct.ath10k_sdio_bus_request** %15, align 8
  %42 = getelementptr inbounds %struct.ath10k_sdio_bus_request, %struct.ath10k_sdio_bus_request* %41, i32 0, i32 3
  store %struct.completion* %40, %struct.completion** %42, align 8
  %43 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %14, align 8
  %44 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_bh(i32* %44)
  %46 = load %struct.ath10k_sdio_bus_request*, %struct.ath10k_sdio_bus_request** %15, align 8
  %47 = getelementptr inbounds %struct.ath10k_sdio_bus_request, %struct.ath10k_sdio_bus_request* %46, i32 0, i32 2
  %48 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %14, align 8
  %49 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %48, i32 0, i32 1
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %14, align 8
  %52 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_bh(i32* %52)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %27, %22
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local %struct.ath10k_sdio_bus_request* @ath10k_sdio_alloc_busreq(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
