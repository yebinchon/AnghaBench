; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_has_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_has_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@e1000_i210 = common dso_local global i64 0, align 8
@e1000_i211 = common dso_local global i64 0, align 8
@I210_I_PHY_ID = common dso_local global i64 0, align 8
@IGB_FLAG_NEED_LINK_UPDATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_has_link(%struct.igb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 3
  store %struct.e1000_hw* %7, %struct.e1000_hw** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %36 [
    i32 130, label %12
    i32 129, label %20
    i32 128, label %37
  ]

12:                                               ; preds = %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %92

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %1, %19
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %24, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %27 = bitcast %struct.e1000_hw* %26 to %struct.e1000_hw.0*
  %28 = call i32 %25(%struct.e1000_hw.0* %27)
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %38

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %1, %36
  br label %38

38:                                               ; preds = %37, %20
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @e1000_i210, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @e1000_i211, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %45, %38
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %54 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @I210_I_PHY_ID, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %52
  %60 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @netif_carrier_ok(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @IGB_FLAG_NEED_LINK_UPDATE, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %89

72:                                               ; preds = %59
  %73 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IGB_FLAG_NEED_LINK_UPDATE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @IGB_FLAG_NEED_LINK_UPDATE, align 4
  %81 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* @jiffies, align 4
  %86 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %79, %72
  br label %89

89:                                               ; preds = %88, %65
  br label %90

90:                                               ; preds = %89, %52, %45
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %18
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @netif_carrier_ok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
