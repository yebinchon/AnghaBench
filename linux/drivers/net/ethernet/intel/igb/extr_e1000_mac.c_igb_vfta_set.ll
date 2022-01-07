; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_mac.c_igb_vfta_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_mac.c_igb_vfta_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.igb_adapter* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*, i32, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.igb_adapter = type { i32*, i32 }

@E1000_ERR_PARAM = common dso_local global i64 0, align 8
@E1000_VLVF_POOLSEL_SHIFT = common dso_local global i32 0, align 4
@E1000_VLVF_POOLSEL_MASK = common dso_local global i32 0, align 4
@E1000_VLVF_VLANID_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_vfta_set(%struct.e1000_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.igb_adapter*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 1
  %20 = load %struct.igb_adapter*, %struct.igb_adapter** %19, align 8
  store %struct.igb_adapter* %20, %struct.igb_adapter** %12, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 4095
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 7
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %5
  %27 = load i64, i64* @E1000_ERR_PARAM, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %6, align 8
  br label %141

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = sdiv i32 %30, 32
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = srem i32 %32, 32
  %34 = call i32 @BIT(i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.igb_adapter*, %struct.igb_adapter** %12, align 8
  %36 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load i32, i32* %15, align 4
  %46 = xor i32 %45, -1
  br label %49

47:                                               ; preds = %29
  %48 = load i32, i32* %15, align 4
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi i32 [ %46, %44 ], [ %48, %47 ]
  %51 = load i32, i32* %14, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = xor i32 %54, %53
  store i32 %55, i32* %15, align 4
  %56 = load %struct.igb_adapter*, %struct.igb_adapter** %12, align 8
  %57 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %49
  br label %126

61:                                               ; preds = %49
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @igb_find_vlvf_slot(%struct.e1000_hw* %62, i32 %63, i32 %64)
  store i64 %65, i64* %17, align 8
  %66 = load i64, i64* %17, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %126

72:                                               ; preds = %68
  %73 = load i64, i64* %17, align 8
  store i64 %73, i64* %6, align 8
  br label %141

74:                                               ; preds = %61
  %75 = load i64, i64* %17, align 8
  %76 = call i32 @E1000_VLVF(i64 %75)
  %77 = call i32 @rd32(i32 %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* @E1000_VLVF_POOLSEL_SHIFT, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @BIT(i32 %80)
  %82 = load i32, i32* %16, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %117

87:                                               ; preds = %74
  %88 = load i32, i32* @E1000_VLVF_POOLSEL_SHIFT, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %88, %89
  %91 = call i32 @BIT(i32 %90)
  %92 = load i32, i32* %16, align 4
  %93 = xor i32 %92, %91
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @E1000_VLVF_POOLSEL_MASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %116, label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %103 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %105, align 8
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %108 = bitcast %struct.e1000_hw* %107 to %struct.e1000_hw.0*
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i32 %106(%struct.e1000_hw.0* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %101, %98
  %113 = load i64, i64* %17, align 8
  %114 = call i32 @E1000_VLVF(i64 %113)
  %115 = call i32 @wr32(i32 %114, i32 0)
  store i64 0, i64* %6, align 8
  br label %141

116:                                              ; preds = %87
  store i32 0, i32* %14, align 4
  br label %117

117:                                              ; preds = %116, %86
  %118 = load i64, i64* %17, align 8
  %119 = call i32 @E1000_VLVF(i64 %118)
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @E1000_VLVF_VLANID_ENABLE, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @wr32(i32 %119, i32 %124)
  br label %126

126:                                              ; preds = %117, %71, %60
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %131 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %133, align 8
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %136 = bitcast %struct.e1000_hw* %135 to %struct.e1000_hw.0*
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 %134(%struct.e1000_hw.0* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %129, %126
  store i64 0, i64* %6, align 8
  br label %141

141:                                              ; preds = %140, %112, %72, %26
  %142 = load i64, i64* %6, align 8
  ret i64 %142
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @igb_find_vlvf_slot(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @E1000_VLVF(i64) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
