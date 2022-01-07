; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_has_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_has_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32, i32, i32, %struct.igc_hw }
%struct.igc_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.igc_hw.0*)* }
%struct.igc_hw.0 = type opaque

@igc_i225 = common dso_local global i64 0, align 8
@I225_I_PHY_ID = common dso_local global i64 0, align 8
@IGC_FLAG_NEED_LINK_UPDATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igc_has_link(%struct.igc_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igc_adapter*, align 8
  %4 = alloca %struct.igc_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %3, align 8
  %6 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %6, i32 0, i32 3
  store %struct.igc_hw* %7, %struct.igc_hw** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.igc_hw*, %struct.igc_hw** %4, align 8
  %9 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %35 [
    i32 129, label %12
    i32 128, label %36
  ]

12:                                               ; preds = %1
  %13 = load %struct.igc_hw*, %struct.igc_hw** %4, align 8
  %14 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %84

19:                                               ; preds = %12
  %20 = load %struct.igc_hw*, %struct.igc_hw** %4, align 8
  %21 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.igc_hw.0*)*, i32 (%struct.igc_hw.0*)** %23, align 8
  %25 = load %struct.igc_hw*, %struct.igc_hw** %4, align 8
  %26 = bitcast %struct.igc_hw* %25 to %struct.igc_hw.0*
  %27 = call i32 %24(%struct.igc_hw.0* %26)
  %28 = load %struct.igc_hw*, %struct.igc_hw** %4, align 8
  %29 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %37

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %1, %35
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.igc_hw*, %struct.igc_hw** %4, align 8
  %39 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @igc_i225, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %82

44:                                               ; preds = %37
  %45 = load %struct.igc_hw*, %struct.igc_hw** %4, align 8
  %46 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @I225_I_PHY_ID, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %44
  %52 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @netif_carrier_ok(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @IGC_FLAG_NEED_LINK_UPDATE, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %81

64:                                               ; preds = %51
  %65 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IGC_FLAG_NEED_LINK_UPDATE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @IGC_FLAG_NEED_LINK_UPDATE, align 4
  %73 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* @jiffies, align 4
  %78 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %71, %64
  br label %81

81:                                               ; preds = %80, %57
  br label %82

82:                                               ; preds = %81, %44, %37
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %18
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @netif_carrier_ok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
