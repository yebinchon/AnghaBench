; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_async_rw_scatter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_async_rw_scatter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.hif_scatter_req = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ath6kl_sdio = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_SCATTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"hif-scatter: total len: %d scatter entries: %d\0A\00", align 1
@HIF_SYNCHRONOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, %struct.hif_scatter_req*)* @ath6kl_sdio_async_rw_scatter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_sdio_async_rw_scatter(%struct.ath6kl* %0, %struct.hif_scatter_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath6kl*, align 8
  %5 = alloca %struct.hif_scatter_req*, align 8
  %6 = alloca %struct.ath6kl_sdio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %4, align 8
  store %struct.hif_scatter_req* %1, %struct.hif_scatter_req** %5, align 8
  %9 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %10 = call %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl* %9)
  store %struct.ath6kl_sdio* %10, %struct.ath6kl_sdio** %6, align 8
  %11 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %5, align 8
  %12 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %5, align 8
  %15 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %62

21:                                               ; preds = %2
  %22 = load i32, i32* @ATH6KL_DBG_SCATTER, align 4
  %23 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %5, align 8
  %24 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %5, align 8
  %27 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ath6kl_dbg(i32 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @HIF_SYNCHRONOUS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %21
  %35 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %6, align 8
  %36 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %5, align 8
  %37 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 @ath6kl_sdio_scat_rw(%struct.ath6kl_sdio* %35, %struct.TYPE_2__* %38)
  store i32 %39, i32* %8, align 4
  br label %60

40:                                               ; preds = %21
  %41 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %6, align 8
  %42 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %41, i32 0, i32 1
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.hif_scatter_req*, %struct.hif_scatter_req** %5, align 8
  %45 = getelementptr inbounds %struct.hif_scatter_req, %struct.hif_scatter_req* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %6, align 8
  %49 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %48, i32 0, i32 2
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %6, align 8
  %52 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %55 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %6, align 8
  %58 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %57, i32 0, i32 0
  %59 = call i32 @queue_work(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %40, %34
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ath6kl_sdio_scat_rw(%struct.ath6kl_sdio*, %struct.TYPE_2__*) #1

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
