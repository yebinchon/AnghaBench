; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_tx_hang.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_tx_hang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, i32, %struct.sk_buff*, i64, i32 }
%struct.sk_buff = type { i32 }

@I40E_FLAG_PTP = common dso_local global i32 0, align 4
@__I40E_PTP_TX_IN_PROGRESS = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_ptp_tx_hang(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %4 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %5 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @I40E_FLAG_PTP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  br label %49

16:                                               ; preds = %10
  %17 = load i32, i32* @__I40E_PTP_TX_IN_PROGRESS, align 4
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @test_bit(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %49

24:                                               ; preds = %16
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %26 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HZ, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @time_is_before_jiffies(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %24
  %33 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %34 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %33, i32 0, i32 3
  %35 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  store %struct.sk_buff* %35, %struct.sk_buff** %3, align 8
  %36 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %37 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %36, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %37, align 8
  %38 = load i32, i32* @__I40E_PTP_TX_IN_PROGRESS, align 4
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %40 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @clear_bit_unlock(i32 %38, i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %43)
  %45 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %46 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %15, %23, %32, %24
  ret void
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @clear_bit_unlock(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
