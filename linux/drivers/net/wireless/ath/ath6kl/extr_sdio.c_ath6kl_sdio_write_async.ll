; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_write_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_write_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.htc_packet = type { i32 }
%struct.ath6kl_sdio = type { i32, i32, i32 }
%struct.bus_request = type { i32, %struct.htc_packet*, i8*, i8*, i32*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, i8*, i32*, i8*, i8*, %struct.htc_packet*)* @ath6kl_sdio_write_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_sdio_write_async(%struct.ath6kl* %0, i8* %1, i32* %2, i8* %3, i8* %4, %struct.htc_packet* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath6kl*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.htc_packet*, align 8
  %14 = alloca %struct.ath6kl_sdio*, align 8
  %15 = alloca %struct.bus_request*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.htc_packet* %5, %struct.htc_packet** %13, align 8
  %16 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %17 = call %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl* %16)
  store %struct.ath6kl_sdio* %17, %struct.ath6kl_sdio** %14, align 8
  %18 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %14, align 8
  %19 = call %struct.bus_request* @ath6kl_sdio_alloc_busreq(%struct.ath6kl_sdio* %18)
  store %struct.bus_request* %19, %struct.bus_request** %15, align 8
  %20 = load %struct.bus_request*, %struct.bus_request** %15, align 8
  %21 = icmp ne %struct.bus_request* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %62

29:                                               ; preds = %6
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.bus_request*, %struct.bus_request** %15, align 8
  %32 = getelementptr inbounds %struct.bus_request, %struct.bus_request* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load %struct.bus_request*, %struct.bus_request** %15, align 8
  %35 = getelementptr inbounds %struct.bus_request, %struct.bus_request* %34, i32 0, i32 4
  store i32* %33, i32** %35, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load %struct.bus_request*, %struct.bus_request** %15, align 8
  %38 = getelementptr inbounds %struct.bus_request, %struct.bus_request* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load %struct.bus_request*, %struct.bus_request** %15, align 8
  %41 = getelementptr inbounds %struct.bus_request, %struct.bus_request* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.htc_packet*, %struct.htc_packet** %13, align 8
  %43 = load %struct.bus_request*, %struct.bus_request** %15, align 8
  %44 = getelementptr inbounds %struct.bus_request, %struct.bus_request* %43, i32 0, i32 1
  store %struct.htc_packet* %42, %struct.htc_packet** %44, align 8
  %45 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %14, align 8
  %46 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %45, i32 0, i32 1
  %47 = call i32 @spin_lock_bh(i32* %46)
  %48 = load %struct.bus_request*, %struct.bus_request** %15, align 8
  %49 = getelementptr inbounds %struct.bus_request, %struct.bus_request* %48, i32 0, i32 0
  %50 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %14, align 8
  %51 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %50, i32 0, i32 2
  %52 = call i32 @list_add_tail(i32* %49, i32* %51)
  %53 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %14, align 8
  %54 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock_bh(i32* %54)
  %56 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %57 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %14, align 8
  %60 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %59, i32 0, i32 0
  %61 = call i32 @queue_work(i32 %58, i32* %60)
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %29, %26
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl*) #1

declare dso_local %struct.bus_request* @ath6kl_sdio_alloc_busreq(%struct.ath6kl_sdio*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
