; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_netif_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_netif_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*, i32)* @bnx2_netif_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_netif_start(%struct.bnx2* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %6 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %5, i32 0, i32 3
  %7 = call i64 @atomic_dec_and_test(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %2
  %10 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @netif_running(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %9
  %16 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @netif_tx_wake_all_queues(i32 %18)
  %20 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %21 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %24 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %29 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @netif_carrier_on(i32 %30)
  br label %32

32:                                               ; preds = %27, %15
  %33 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %34 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_bh(i32* %34)
  %36 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %37 = call i32 @bnx2_napi_enable(%struct.bnx2* %36)
  %38 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %39 = call i32 @bnx2_enable_int(%struct.bnx2* %38)
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %44 = call i32 @bnx2_cnic_start(%struct.bnx2* %43)
  br label %45

45:                                               ; preds = %42, %32
  br label %46

46:                                               ; preds = %45, %9
  br label %47

47:                                               ; preds = %46, %2
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @netif_tx_wake_all_queues(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @bnx2_napi_enable(%struct.bnx2*) #1

declare dso_local i32 @bnx2_enable_int(%struct.bnx2*) #1

declare dso_local i32 @bnx2_cnic_start(%struct.bnx2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
