; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_check_tx_hang.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_check_tx_hang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@__IXGBEVF_HANG_CHECK_ARMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_ring*)* @ixgbevf_check_tx_hang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_check_tx_hang(%struct.ixgbevf_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbevf_ring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %3, align 8
  %7 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %8 = call i64 @ixgbevf_get_tx_completed(%struct.ixgbevf_ring* %7)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %14 = call i64 @ixgbevf_get_tx_pending(%struct.ixgbevf_ring* %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %16 = call i32 @clear_check_for_tx_hang(%struct.ixgbevf_ring* %15)
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* @__IXGBEVF_HANG_CHECK_ARMED, align 4
  %25 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %25, i32 0, i32 1
  %27 = call i32 @test_and_set_bit(i32 %24, i32* %26)
  store i32 %27, i32* %2, align 4
  br label %37

28:                                               ; preds = %20, %1
  %29 = load i32, i32* @__IXGBEVF_HANG_CHECK_ARMED, align 4
  %30 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %30, i32 0, i32 1
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %28, %23
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @ixgbevf_get_tx_completed(%struct.ixgbevf_ring*) #1

declare dso_local i64 @ixgbevf_get_tx_pending(%struct.ixgbevf_ring*) #1

declare dso_local i32 @clear_check_for_tx_hang(%struct.ixgbevf_ring*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
