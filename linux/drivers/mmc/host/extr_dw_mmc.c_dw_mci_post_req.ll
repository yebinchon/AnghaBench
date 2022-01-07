; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_post_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_post_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i64, i32, i32 }
%struct.dw_mci_slot = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@COOKIE_UNMAPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*, i32)* @dw_mci_post_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_post_req(%struct.mmc_host* %0, %struct.mmc_request* %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dw_mci_slot*, align 8
  %8 = alloca %struct.mmc_data*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %10 = call %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host* %9)
  store %struct.dw_mci_slot* %10, %struct.dw_mci_slot** %7, align 8
  %11 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %11, i32 0, i32 0
  %13 = load %struct.mmc_data*, %struct.mmc_data** %12, align 8
  store %struct.mmc_data* %13, %struct.mmc_data** %8, align 8
  %14 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %7, align 8
  %15 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %22 = icmp ne %struct.mmc_data* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %3
  br label %49

24:                                               ; preds = %20
  %25 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %26 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @COOKIE_UNMAPPED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %7, align 8
  %32 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %37 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %40 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %43 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %42)
  %44 = call i32 @dma_unmap_sg(i32 %35, i32 %38, i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %30, %24
  %46 = load i64, i64* @COOKIE_UNMAPPED, align 8
  %47 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %48 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %23
  ret void
}

declare dso_local %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
