; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rxf_allmulti_cfg_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rxf_allmulti_cfg_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32, i32, i32 }

@BNA_RXMODE_ALLMULTI = common dso_local global i32 0, align 4
@BNA_STATUS_T_DISABLED = common dso_local global i32 0, align 4
@BNA_STATUS_T_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*)* @bna_rxf_allmulti_cfg_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_allmulti_cfg_apply(%struct.bna_rxf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bna_rxf*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  %4 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %5 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %8 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @is_allmulti_enable(i32 %6, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %14 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %17 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @allmulti_inactive(i32 %15, i32 %18)
  %20 = load i32, i32* @BNA_RXMODE_ALLMULTI, align 4
  %21 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %22 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %26 = load i32, i32* @BNA_STATUS_T_DISABLED, align 4
  %27 = call i32 @bna_bfi_mcast_filter_req(%struct.bna_rxf* %25, i32 %26)
  store i32 1, i32* %2, align 4
  br label %56

28:                                               ; preds = %1
  %29 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %30 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %33 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @is_allmulti_disable(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %28
  %38 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %39 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %42 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @allmulti_inactive(i32 %40, i32 %43)
  %45 = load i32, i32* @BNA_RXMODE_ALLMULTI, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %48 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %52 = load i32, i32* @BNA_STATUS_T_ENABLED, align 4
  %53 = call i32 @bna_bfi_mcast_filter_req(%struct.bna_rxf* %51, i32 %52)
  store i32 1, i32* %2, align 4
  br label %56

54:                                               ; preds = %28
  br label %55

55:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %37, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @is_allmulti_enable(i32, i32) #1

declare dso_local i32 @allmulti_inactive(i32, i32) #1

declare dso_local i32 @bna_bfi_mcast_filter_req(%struct.bna_rxf*, i32) #1

declare dso_local i64 @is_allmulti_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
