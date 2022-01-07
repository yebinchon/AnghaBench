; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_tx_ts_enqueue_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_tx_ts_enqueue_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32, %struct.lan743x_ptp }
%struct.lan743x_ptp = type { i64, i32, i8**, i8**, i8** }

@LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"tx ts queue overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_adapter*, i8*, i8*, i8*)* @lan743x_ptp_tx_ts_enqueue_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_ptp_tx_ts_enqueue_ts(%struct.lan743x_adapter* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.lan743x_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lan743x_ptp*, align 8
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %10, i32 0, i32 1
  store %struct.lan743x_ptp* %11, %struct.lan743x_ptp** %9, align 8
  %12 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %9, align 8
  %13 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %9, align 8
  %16 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LAN743X_PTP_NUMBER_OF_TX_TIMESTAMPS, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %9, align 8
  %23 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %22, i32 0, i32 4
  %24 = load i8**, i8*** %23, align 8
  %25 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %9, align 8
  %26 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i8*, i8** %24, i64 %27
  store i8* %21, i8** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %9, align 8
  %31 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %30, i32 0, i32 3
  %32 = load i8**, i8*** %31, align 8
  %33 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %9, align 8
  %34 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8*, i8** %32, i64 %35
  store i8* %29, i8** %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %9, align 8
  %39 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %38, i32 0, i32 2
  %40 = load i8**, i8*** %39, align 8
  %41 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %9, align 8
  %42 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  store i8* %37, i8** %44, align 8
  %45 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %9, align 8
  %46 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %56

49:                                               ; preds = %4
  %50 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %5, align 8
  %51 = load i32, i32* @drv, align 4
  %52 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @netif_err(%struct.lan743x_adapter* %50, i32 %51, i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %49, %20
  %57 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %9, align 8
  %58 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock_bh(i32* %58)
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
