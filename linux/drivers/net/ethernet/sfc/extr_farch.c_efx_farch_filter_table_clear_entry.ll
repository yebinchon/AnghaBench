; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_table_clear_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_table_clear_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_farch_filter_table = type { i64, i64, i32, i64, i32*, i32*, i32 }

@efx_farch_filter_table_clear_entry.filter = internal global i32 0, align 4
@EFX_FARCH_FILTER_TABLE_TX_MAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, %struct.efx_farch_filter_table*, i32)* @efx_farch_filter_table_clear_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_farch_filter_table_clear_entry(%struct.efx_nic* %0, %struct.efx_farch_filter_table* %1, i32 %2) #0 {
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.efx_farch_filter_table*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.efx_farch_filter_table* %1, %struct.efx_farch_filter_table** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %9 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @test_bit(i32 %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @EFX_WARN_ON_PARANOID(i32 %14)
  %16 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %17 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %24 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @__clear_bit(i32 %22, i32 %25)
  %27 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %28 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %32 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @memset(i32* %36, i32 0, i32 4)
  %38 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %39 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %40 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %43 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = mul i32 %44, %45
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %41, %47
  %49 = call i32 @efx_writeo(%struct.efx_nic* %38, i32* @efx_farch_filter_table_clear_entry.filter, i64 %48)
  %50 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %51 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %3
  %58 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %59 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @memset(i32* %60, i32 0, i32 8)
  %62 = load %struct.efx_farch_filter_table*, %struct.efx_farch_filter_table** %5, align 8
  %63 = getelementptr inbounds %struct.efx_farch_filter_table, %struct.efx_farch_filter_table* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @EFX_FARCH_FILTER_TABLE_TX_MAC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %69 = call i32 @efx_farch_filter_push_tx_limits(%struct.efx_nic* %68)
  br label %73

70:                                               ; preds = %57
  %71 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %72 = call i32 @efx_farch_filter_push_rx_config(%struct.efx_nic* %71)
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %3
  ret void
}

declare dso_local i32 @EFX_WARN_ON_PARANOID(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @efx_farch_filter_push_tx_limits(%struct.efx_nic*) #1

declare dso_local i32 @efx_farch_filter_push_rx_config(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
