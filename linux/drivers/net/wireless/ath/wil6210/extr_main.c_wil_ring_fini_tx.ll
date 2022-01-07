; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_main.c_wil_ring_fini_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_main.c_wil_ring_fini_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.TYPE_2__, i32, i32, i32, %struct.wil_ring_tx_data*, %struct.wil_ring* }
%struct.TYPE_2__ = type { i32 (%struct.wil6210_priv.0*, %struct.wil_ring*)* }
%struct.wil6210_priv.0 = type opaque
%struct.wil_ring_tx_data = type { i32, i32, i64, i32 }
%struct.wil_ring = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"vring_fini_tx: id=%d\0A\00", align 1
@U8_MAX = common dso_local global i32 0, align 4
@wil_status_napi_en = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*, i32)* @wil_ring_fini_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_ring_fini_tx(%struct.wil6210_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wil_ring*, align 8
  %6 = alloca %struct.wil_ring_tx_data*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %8 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %7, i32 0, i32 5
  %9 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %9, i64 %11
  store %struct.wil_ring* %12, %struct.wil_ring** %5, align 8
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %14 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %13, i32 0, i32 4
  %15 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %15, i64 %17
  store %struct.wil_ring_tx_data* %18, %struct.wil_ring_tx_data** %6, align 8
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %20 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %19, i32 0, i32 3
  %21 = call i32 @lockdep_assert_held(i32* %20)
  %22 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %23 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %64

27:                                               ; preds = %2
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %6, align 8
  %32 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %31, i32 0, i32 1
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %6, align 8
  %35 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i32, i32* @U8_MAX, align 4
  %37 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %6, align 8
  %38 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %6, align 8
  %40 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %6, align 8
  %42 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock_bh(i32* %42)
  %44 = call i32 (...) @wmb()
  %45 = load i32, i32* @wil_status_napi_en, align 4
  %46 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %47 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @test_bit(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %27
  %52 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %53 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %52, i32 0, i32 1
  %54 = call i32 @napi_synchronize(i32* %53)
  br label %55

55:                                               ; preds = %51, %27
  %56 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %57 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.wil6210_priv.0*, %struct.wil_ring*)*, i32 (%struct.wil6210_priv.0*, %struct.wil_ring*)** %58, align 8
  %60 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %61 = bitcast %struct.wil6210_priv* %60 to %struct.wil6210_priv.0*
  %62 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %63 = call i32 %59(%struct.wil6210_priv.0* %61, %struct.wil_ring* %62)
  br label %64

64:                                               ; preds = %55, %26
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @napi_synchronize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
