; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rxf_rss_cfg_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rxf_rss_cfg_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32 }

@BNA_RSS_F_RIT_PENDING = common dso_local global i32 0, align 4
@BNA_RSS_F_CFG_PENDING = common dso_local global i32 0, align 4
@BNA_RSS_F_STATUS_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*)* @bna_rxf_rss_cfg_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_rss_cfg_apply(%struct.bna_rxf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bna_rxf*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  %4 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %5 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %57

8:                                                ; preds = %1
  %9 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %10 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BNA_RSS_F_RIT_PENDING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = load i32, i32* @BNA_RSS_F_RIT_PENDING, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %19 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %23 = call i32 @bna_bfi_rit_cfg(%struct.bna_rxf* %22)
  store i32 1, i32* %2, align 4
  br label %58

24:                                               ; preds = %8
  %25 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %26 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BNA_RSS_F_CFG_PENDING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load i32, i32* @BNA_RSS_F_CFG_PENDING, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %35 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %39 = call i32 @bna_bfi_rss_cfg(%struct.bna_rxf* %38)
  store i32 1, i32* %2, align 4
  br label %58

40:                                               ; preds = %24
  %41 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %42 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BNA_RSS_F_STATUS_PENDING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i32, i32* @BNA_RSS_F_STATUS_PENDING, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %51 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %55 = call i32 @bna_bfi_rss_enable(%struct.bna_rxf* %54)
  store i32 1, i32* %2, align 4
  br label %58

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %1
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %47, %31, %15
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @bna_bfi_rit_cfg(%struct.bna_rxf*) #1

declare dso_local i32 @bna_bfi_rss_cfg(%struct.bna_rxf*) #1

declare dso_local i32 @bna_bfi_rss_enable(%struct.bna_rxf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
