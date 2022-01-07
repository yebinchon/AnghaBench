; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_vlan_promisc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_vlan_promisc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i64, %struct.TYPE_4__*, %struct.e1000_hw }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*, i64, i32)* }
%struct.e1000_hw.0 = type opaque

@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@IGB_FLAG_VLAN_PROMISC = common dso_local global i32 0, align 4
@E1000_VLVF_POOLSEL_SHIFT = common dso_local global i64 0, align 8
@E1000_VLVF_ARRAY_SIZE = common dso_local global i64 0, align 8
@E1000_VLAN_FILTER_TBL_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*)* @igb_vlan_promisc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_vlan_promisc_enable(%struct.igb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 3
  store %struct.e1000_hw* %9, %struct.e1000_hw** %4, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %32 [
    i32 131, label %14
    i32 130, label %14
    i32 129, label %14
    i32 133, label %25
    i32 132, label %25
    i32 128, label %25
  ]

14:                                               ; preds = %1, %1, %1
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %33

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %1, %1, %1, %24
  %26 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %33

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %1, %31
  store i32 1, i32* %2, align 4
  br label %93

33:                                               ; preds = %30, %23
  %34 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IGB_FLAG_VLAN_PROMISC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %93

41:                                               ; preds = %33
  %42 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %71

47:                                               ; preds = %41
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @E1000_VLVF_POOLSEL_SHIFT, align 8
  %52 = add nsw i64 %50, %51
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* @E1000_VLVF_ARRAY_SIZE, align 8
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %58, %47
  %55 = load i64, i64* %5, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %5, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @E1000_VLVF(i64 %59)
  %61 = call i64 @rd32(i32 %60)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @BIT(i64 %62)
  %64 = load i64, i64* %7, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @E1000_VLVF(i64 %66)
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @wr32(i32 %67, i64 %68)
  br label %54

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70, %46
  %72 = load i64, i64* @E1000_VLAN_FILTER_TBL_SIZE, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %77, %71
  %74 = load i64, i64* %5, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* %5, align 8
  %76 = icmp ne i64 %74, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %79 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32 (%struct.e1000_hw.0*, i64, i32)*, i32 (%struct.e1000_hw.0*, i64, i32)** %81, align 8
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %84 = bitcast %struct.e1000_hw* %83 to %struct.e1000_hw.0*
  %85 = load i64, i64* %5, align 8
  %86 = call i32 %82(%struct.e1000_hw.0* %84, i64 %85, i32 -1)
  br label %73

87:                                               ; preds = %73
  %88 = load i32, i32* @IGB_FLAG_VLAN_PROMISC, align 4
  %89 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %87, %40, %32
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @rd32(i32) #1

declare dso_local i32 @E1000_VLVF(i64) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @wr32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
