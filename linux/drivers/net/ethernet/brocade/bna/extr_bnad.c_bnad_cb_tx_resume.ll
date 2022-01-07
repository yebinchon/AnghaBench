; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_cb_tx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_cb_tx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bna_tx = type { i64 }
%struct.bnad_tx_info = type { %struct.bna_tcb** }
%struct.bna_tcb = type { i64*, i32, i32 }

@BNAD_MAX_TXQ_PER_TX = common dso_local global i32 0, align 4
@BNAD_TXQ_TX_STARTED = common dso_local global i32 0, align 4
@netif_queue_wakeup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*, %struct.bna_tx*)* @bnad_cb_tx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_cb_tx_resume(%struct.bnad* %0, %struct.bna_tx* %1) #0 {
  %3 = alloca %struct.bnad*, align 8
  %4 = alloca %struct.bna_tx*, align 8
  %5 = alloca %struct.bnad_tx_info*, align 8
  %6 = alloca %struct.bna_tcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %3, align 8
  store %struct.bna_tx* %1, %struct.bna_tx** %4, align 8
  %9 = load %struct.bna_tx*, %struct.bna_tx** %4, align 8
  %10 = getelementptr inbounds %struct.bna_tx, %struct.bna_tx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.bnad_tx_info*
  store %struct.bnad_tx_info* %12, %struct.bnad_tx_info** %5, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %63, %2
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @BNAD_MAX_TXQ_PER_TX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %13
  %18 = load %struct.bnad_tx_info*, %struct.bnad_tx_info** %5, align 8
  %19 = getelementptr inbounds %struct.bnad_tx_info, %struct.bnad_tx_info* %18, i32 0, i32 0
  %20 = load %struct.bna_tcb**, %struct.bna_tcb*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bna_tcb*, %struct.bna_tcb** %20, i64 %22
  %24 = load %struct.bna_tcb*, %struct.bna_tcb** %23, align 8
  store %struct.bna_tcb* %24, %struct.bna_tcb** %6, align 8
  %25 = load %struct.bna_tcb*, %struct.bna_tcb** %6, align 8
  %26 = icmp ne %struct.bna_tcb* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %63

28:                                               ; preds = %17
  %29 = load %struct.bna_tcb*, %struct.bna_tcb** %6, align 8
  %30 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @BNAD_TXQ_TX_STARTED, align 4
  %33 = load %struct.bna_tcb*, %struct.bna_tcb** %6, align 8
  %34 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %33, i32 0, i32 1
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i32, i32* @BNAD_TXQ_TX_STARTED, align 4
  %38 = load %struct.bna_tcb*, %struct.bna_tcb** %6, align 8
  %39 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %38, i32 0, i32 1
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load %struct.bna_tcb*, %struct.bna_tcb** %6, align 8
  %42 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.bnad*, %struct.bnad** %3, align 8
  %49 = getelementptr inbounds %struct.bnad, %struct.bnad* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @netif_carrier_ok(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %28
  %54 = load %struct.bnad*, %struct.bnad** %3, align 8
  %55 = getelementptr inbounds %struct.bnad, %struct.bnad* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @netif_wake_subqueue(i32 %56, i32 %57)
  %59 = load %struct.bnad*, %struct.bnad** %3, align 8
  %60 = load i32, i32* @netif_queue_wakeup, align 4
  %61 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %28
  br label %63

63:                                               ; preds = %62, %27
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %13

66:                                               ; preds = %13
  %67 = load %struct.bnad*, %struct.bnad** %3, align 8
  %68 = getelementptr inbounds %struct.bnad, %struct.bnad* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @is_zero_ether_addr(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load %struct.bnad*, %struct.bnad** %3, align 8
  %74 = getelementptr inbounds %struct.bnad, %struct.bnad* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.bnad*, %struct.bnad** %3, align 8
  %77 = getelementptr inbounds %struct.bnad, %struct.bnad* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bna_enet_perm_mac_get(i32* %75, i32 %78)
  %80 = load %struct.bnad*, %struct.bnad** %3, align 8
  %81 = call i32 @bnad_set_netdev_perm_addr(%struct.bnad* %80)
  br label %82

82:                                               ; preds = %72, %66
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_wake_subqueue(i32, i32) #1

declare dso_local i32 @BNAD_UPDATE_CTR(%struct.bnad*, i32) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @bna_enet_perm_mac_get(i32*, i32) #1

declare dso_local i32 @bnad_set_netdev_perm_addr(%struct.bnad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
