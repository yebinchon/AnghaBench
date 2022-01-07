; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-trans.h_iwl_trans_get_rxq_dma_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-trans.h_iwl_trans_get_rxq_dma_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.iwl_trans_rxq_dma_data = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32, %struct.iwl_trans_rxq_dma_data*)* @iwl_trans_get_rxq_dma_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_get_rxq_dma_data(%struct.iwl_trans* %0, i32 %1, %struct.iwl_trans_rxq_dma_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_trans_rxq_dma_data*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.iwl_trans_rxq_dma_data* %2, %struct.iwl_trans_rxq_dma_data** %7, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.iwl_trans*, i32, %struct.iwl_trans_rxq_dma_data*)**
  %13 = load i32 (%struct.iwl_trans*, i32, %struct.iwl_trans_rxq_dma_data*)*, i32 (%struct.iwl_trans*, i32, %struct.iwl_trans_rxq_dma_data*)** %12, align 8
  %14 = icmp ne i32 (%struct.iwl_trans*, i32, %struct.iwl_trans_rxq_dma_data*)* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON_ONCE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %33

22:                                               ; preds = %3
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %24 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.iwl_trans*, i32, %struct.iwl_trans_rxq_dma_data*)**
  %28 = load i32 (%struct.iwl_trans*, i32, %struct.iwl_trans_rxq_dma_data*)*, i32 (%struct.iwl_trans*, i32, %struct.iwl_trans_rxq_dma_data*)** %27, align 8
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.iwl_trans_rxq_dma_data*, %struct.iwl_trans_rxq_dma_data** %7, align 8
  %32 = call i32 %28(%struct.iwl_trans* %29, i32 %30, %struct.iwl_trans_rxq_dma_data* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %22, %19
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
