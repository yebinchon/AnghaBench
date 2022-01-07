; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_copy_rx_addrs_to_phy_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_copy_rx_addrs_to_phy_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*, i32, i64)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.TYPE_4__ = type { i64 }

@E1000_RAH_AV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_copy_rx_addrs_to_phy_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %10, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = bitcast %struct.e1000_hw* %12 to %struct.e1000_hw.2*
  %14 = call i64 %11(%struct.e1000_hw.2* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %109

18:                                               ; preds = %1
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = call i64 @e1000_enable_phy_wakeup_reg_access_bm(%struct.e1000_hw* %19, i64* %5)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %100

24:                                               ; preds = %18
  store i64 0, i64* %4, align 8
  br label %25

25:                                               ; preds = %94, %24
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %32, label %97

32:                                               ; preds = %25
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @RAL(i64 %33)
  %35 = call i32 @er32(i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32 (%struct.e1000_hw.1*, i32, i64)*, i32 (%struct.e1000_hw.1*, i32, i64)** %39, align 8
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %42 = bitcast %struct.e1000_hw* %41 to %struct.e1000_hw.1*
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @BM_RAR_L(i64 %43)
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, 65535
  %47 = sext i32 %46 to i64
  %48 = call i32 %40(%struct.e1000_hw.1* %42, i32 %44, i64 %47)
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32 (%struct.e1000_hw.1*, i32, i64)*, i32 (%struct.e1000_hw.1*, i32, i64)** %52, align 8
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %55 = bitcast %struct.e1000_hw* %54 to %struct.e1000_hw.1*
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @BM_RAR_M(i64 %56)
  %58 = load i32, i32* %3, align 4
  %59 = ashr i32 %58, 16
  %60 = and i32 %59, 65535
  %61 = sext i32 %60 to i64
  %62 = call i32 %53(%struct.e1000_hw.1* %55, i32 %57, i64 %61)
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @RAH(i64 %63)
  %65 = call i32 @er32(i32 %64)
  store i32 %65, i32* %3, align 4
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32 (%struct.e1000_hw.1*, i32, i64)*, i32 (%struct.e1000_hw.1*, i32, i64)** %69, align 8
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %72 = bitcast %struct.e1000_hw* %71 to %struct.e1000_hw.1*
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @BM_RAR_H(i64 %73)
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, 65535
  %77 = sext i32 %76 to i64
  %78 = call i32 %70(%struct.e1000_hw.1* %72, i32 %74, i64 %77)
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32 (%struct.e1000_hw.1*, i32, i64)*, i32 (%struct.e1000_hw.1*, i32, i64)** %82, align 8
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %85 = bitcast %struct.e1000_hw* %84 to %struct.e1000_hw.1*
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @BM_RAR_CTRL(i64 %86)
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @E1000_RAH_AV, align 4
  %90 = and i32 %88, %89
  %91 = ashr i32 %90, 16
  %92 = sext i32 %91 to i64
  %93 = call i32 %83(%struct.e1000_hw.1* %85, i32 %87, i64 %92)
  br label %94

94:                                               ; preds = %32
  %95 = load i64, i64* %4, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %4, align 8
  br label %25

97:                                               ; preds = %25
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %99 = call i32 @e1000_disable_phy_wakeup_reg_access_bm(%struct.e1000_hw* %98, i64* %5)
  br label %100

100:                                              ; preds = %97, %23
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %102 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %104, align 8
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %107 = bitcast %struct.e1000_hw* %106 to %struct.e1000_hw.0*
  %108 = call i32 %105(%struct.e1000_hw.0* %107)
  br label %109

109:                                              ; preds = %100, %17
  ret void
}

declare dso_local i64 @e1000_enable_phy_wakeup_reg_access_bm(%struct.e1000_hw*, i64*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @RAL(i64) #1

declare dso_local i32 @BM_RAR_L(i64) #1

declare dso_local i32 @BM_RAR_M(i64) #1

declare dso_local i32 @RAH(i64) #1

declare dso_local i32 @BM_RAR_H(i64) #1

declare dso_local i32 @BM_RAR_CTRL(i64) #1

declare dso_local i32 @e1000_disable_phy_wakeup_reg_access_bm(%struct.e1000_hw*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
