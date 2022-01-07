; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_selftest.c_efx_end_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_selftest.c_efx_end_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i64, %struct.efx_nic* }
%struct.efx_nic = type { i32, %struct.efx_loopback_state* }
%struct.efx_loopback_state = type { i32, i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.efx_loopback_self_tests = type { i32*, i32*, i32, i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"TX queue %d saw only %d out of an expected %d TX completion events in %s loopback test\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [84 x i8] c"TX queue %d saw only %d out of an expected %d received packets in %s loopback test\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_tx_queue*, %struct.efx_loopback_self_tests*)* @efx_end_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_end_loopback(%struct.efx_tx_queue* %0, %struct.efx_loopback_self_tests* %1) #0 {
  %3 = alloca %struct.efx_tx_queue*, align 8
  %4 = alloca %struct.efx_loopback_self_tests*, align 8
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.efx_loopback_state*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %3, align 8
  store %struct.efx_loopback_self_tests* %1, %struct.efx_loopback_self_tests** %4, align 8
  %13 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %14 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %13, i32 0, i32 1
  %15 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  store %struct.efx_nic* %15, %struct.efx_nic** %5, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 1
  %18 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %17, align 8
  store %struct.efx_loopback_state* %18, %struct.efx_loopback_state** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %20 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @netif_tx_lock_bh(i32 %21)
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %49, %2
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %6, align 8
  %26 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %23
  %30 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %6, align 8
  %31 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %30, i32 0, i32 3
  %32 = load %struct.sk_buff**, %struct.sk_buff*** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %32, i64 %34
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %7, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = call i32 @skb_shared(%struct.sk_buff* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %39, %29
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = call i32 @dev_kfree_skb(%struct.sk_buff* %47)
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %23

52:                                               ; preds = %23
  %53 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %54 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @netif_tx_unlock_bh(i32 %55)
  %57 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %6, align 8
  %58 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %57, i32 0, i32 2
  %59 = call i32 @atomic_read(i32* %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %6, align 8
  %61 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %60, i32 0, i32 1
  %62 = call i32 @atomic_read(i32* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %6, align 8
  %65 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %52
  %69 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %70 = load i32, i32* @drv, align 4
  %71 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %72 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %75 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %6, align 8
  %79 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %82 = call i32 @LOOPBACK_MODE(%struct.efx_nic* %81)
  %83 = call i32 @netif_err(%struct.efx_nic* %69, i32 %70, i32 %73, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %76, i32 %77, i32 %80, i32 %82)
  %84 = load i32, i32* @ETIMEDOUT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %68, %52
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %6, align 8
  %89 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %87, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %86
  %93 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %94 = load i32, i32* @drv, align 4
  %95 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %96 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %99 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %6, align 8
  %103 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %106 = call i32 @LOOPBACK_MODE(%struct.efx_nic* %105)
  %107 = call i32 @netif_dbg(%struct.efx_nic* %93, i32 %94, i32 %97, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i64 %100, i32 %101, i32 %104, i32 %106)
  %108 = load i32, i32* @ETIMEDOUT, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %92, %86
  %111 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %6, align 8
  %112 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.efx_loopback_self_tests*, %struct.efx_loopback_self_tests** %4, align 8
  %115 = getelementptr inbounds %struct.efx_loopback_self_tests, %struct.efx_loopback_self_tests* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %118 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %113
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.efx_loopback_self_tests*, %struct.efx_loopback_self_tests** %4, align 8
  %125 = getelementptr inbounds %struct.efx_loopback_self_tests, %struct.efx_loopback_self_tests* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %128 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %123
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.efx_loopback_self_tests*, %struct.efx_loopback_self_tests** %4, align 8
  %135 = getelementptr inbounds %struct.efx_loopback_self_tests, %struct.efx_loopback_self_tests* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.efx_loopback_self_tests*, %struct.efx_loopback_self_tests** %4, align 8
  %140 = getelementptr inbounds %struct.efx_loopback_self_tests, %struct.efx_loopback_self_tests* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* %12, align 4
  ret i32 %143
}

declare dso_local i32 @netif_tx_lock_bh(i32) #1

declare dso_local i32 @skb_shared(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netif_tx_unlock_bh(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @LOOPBACK_MODE(%struct.efx_nic*) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
