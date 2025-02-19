; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_FLAG2_VLAN_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, i32, i32, i32)* @ixgbe_set_vf_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_vf_vlan(%struct.ixgbe_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ixgbe_hw*, align 8
  %11 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 2
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %19 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @test_bit(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %16
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %25 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32, i32)** %27, align 8
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %30 = bitcast %struct.ixgbe_hw* %29 to %struct.ixgbe_hw.0*
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @VMDQ_P(i32 0)
  %33 = call i32 %28(%struct.ixgbe_hw.0* %30, i32 %31, i32 %32, i32 1, i32 0)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %82

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %16, %4
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32, i32)** %43, align 8
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %10, align 8
  %46 = bitcast %struct.ixgbe_hw* %45 to %struct.ixgbe_hw.0*
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 %44(%struct.ixgbe_hw.0* %46, i32 %47, i32 %48, i32 %53, i32 0)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %39
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %5, align 4
  br label %82

62:                                               ; preds = %57, %39
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %65 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @test_bit(i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %71 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IXGBE_FLAG2_VLAN_PROMISC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69, %62
  %77 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ixgbe_update_pf_promisc_vlvf(%struct.ixgbe_adapter* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %69
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %60, %36
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @VMDQ_P(i32) #1

declare dso_local i32 @ixgbe_update_pf_promisc_vlvf(%struct.ixgbe_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
