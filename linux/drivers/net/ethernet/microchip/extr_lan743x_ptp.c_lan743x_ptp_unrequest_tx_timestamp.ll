; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_unrequest_tx_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_unrequest_tx_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32, %struct.lan743x_ptp }
%struct.lan743x_ptp = type { i64, i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unrequest failed, pending_tx_timestamps==0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lan743x_ptp_unrequest_tx_timestamp(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca %struct.lan743x_adapter*, align 8
  %3 = alloca %struct.lan743x_ptp*, align 8
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %2, align 8
  %4 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %4, i32 0, i32 1
  store %struct.lan743x_ptp* %5, %struct.lan743x_ptp** %3, align 8
  %6 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %7 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %6, i32 0, i32 1
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %10 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %15 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %20 = load i32, i32* @drv, align 4
  %21 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @netif_err(%struct.lan743x_adapter* %19, i32 %20, i32 %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %18, %13
  %26 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %3, align 8
  %27 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock_bh(i32* %27)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @netif_err(%struct.lan743x_adapter*, i32, i32, i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
