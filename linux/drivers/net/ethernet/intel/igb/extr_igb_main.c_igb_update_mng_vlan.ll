; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_update_mng_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_update_mng_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i64, i64, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@E1000_MNG_DHCP_COOKIE_STATUS_VLAN = common dso_local global i32 0, align 4
@IGB_MNG_VLAN_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_update_mng_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_update_mng_vlan(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %7 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %7, i32 0, i32 3
  store %struct.e1000_hw* %8, %struct.e1000_hw** %3, align 8
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @E1000_MNG_DHCP_COOKIE_STATUS_VLAN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @igb_vfta_set(%struct.e1000_hw* %28, i64 %29, i64 %30, i32 1, i32 1)
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %39

35:                                               ; preds = %1
  %36 = load i64, i64* @IGB_MNG_VLAN_NONE, align 8
  %37 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %27
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @IGB_MNG_VLAN_NONE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @test_bit(i64 %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @igb_vfta_set(%struct.e1000_hw* %55, i64 %56, i64 %57, i32 0, i32 1)
  br label %59

59:                                               ; preds = %54, %47, %43, %39
  ret void
}

declare dso_local i32 @igb_vfta_set(%struct.e1000_hw*, i64, i64, i32, i32) #1

declare dso_local i32 @test_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
