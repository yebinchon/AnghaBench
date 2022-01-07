; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_pre_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_pre_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i8* }
%struct.dw_mci_slot = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@COOKIE_UNMAPPED = common dso_local global i8* null, align 8
@COOKIE_PRE_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @dw_mci_pre_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_pre_req(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.dw_mci_slot*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host* %7)
  store %struct.dw_mci_slot* %8, %struct.dw_mci_slot** %5, align 8
  %9 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 0
  %11 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  store %struct.mmc_data* %11, %struct.mmc_data** %6, align 8
  %12 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %13 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %20 = icmp ne %struct.mmc_data* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %2
  br label %39

22:                                               ; preds = %18
  %23 = load i8*, i8** @COOKIE_UNMAPPED, align 8
  %24 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %25 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %27 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %29, i32 0, i32 0
  %31 = load %struct.mmc_data*, %struct.mmc_data** %30, align 8
  %32 = load i32, i32* @COOKIE_PRE_MAPPED, align 4
  %33 = call i64 @dw_mci_pre_dma_transfer(%struct.TYPE_2__* %28, %struct.mmc_data* %31, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load i8*, i8** @COOKIE_UNMAPPED, align 8
  %37 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %38 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %21, %35, %22
  ret void
}

declare dso_local %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i64 @dw_mci_pre_dma_transfer(%struct.TYPE_2__*, %struct.mmc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
