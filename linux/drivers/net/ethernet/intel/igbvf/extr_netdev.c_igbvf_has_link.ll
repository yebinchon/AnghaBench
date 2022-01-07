; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_has_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_has_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { i32, i64, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@__IGBVF_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igbvf_adapter*)* @igbvf_has_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_has_link(%struct.igbvf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igbvf_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %3, align 8
  %7 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %7, i32 0, i32 3
  store %struct.e1000_hw* %8, %struct.e1000_hw** %4, align 8
  %9 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* @__IGBVF_DOWN, align 4
  %11 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %11, i32 0, i32 2
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

16:                                               ; preds = %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %23, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %26 = bitcast %struct.e1000_hw* %25 to %struct.e1000_hw.0*
  %27 = call i64 %24(%struct.e1000_hw.0* %26)
  store i64 %27, i64* %5, align 8
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock_bh(i32* %29)
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %16
  %41 = load i32, i32* @jiffies, align 4
  %42 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @HZ, align 4
  %46 = mul nsw i32 10, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = call i64 @time_after(i32 %41, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %52, i32 0, i32 0
  %54 = call i32 @schedule_work(i32* %53)
  br label %55

55:                                               ; preds = %51, %40, %16
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %15
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
