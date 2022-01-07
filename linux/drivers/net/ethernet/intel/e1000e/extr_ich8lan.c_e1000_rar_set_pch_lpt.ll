; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_rar_set_pch_lpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_rar_set_pch_lpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_RAH_AV = common dso_local global i32 0, align 4
@FWSM = common dso_local global i32 0, align 4
@E1000_FWSM_WLOCK_MAC_MASK = common dso_local global i32 0, align 4
@E1000_FWSM_WLOCK_MAC_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to write receive address at index %d\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64*, i32)* @e1000_rar_set_pch_lpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_rar_set_pch_lpt(%struct.e1000_hw* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64*, i64** %6, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i64*, i64** %6, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 8
  %21 = or i32 %15, %20
  %22 = load i64*, i64** %6, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 2
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 16
  %27 = or i32 %21, %26
  %28 = load i64*, i64** %6, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 3
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 %31, 24
  %33 = or i32 %27, %32
  store i32 %33, i32* %8, align 4
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 4
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64*, i64** %6, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 5
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = shl i32 %41, 8
  %43 = or i32 %37, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %3
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %3
  %50 = load i32, i32* @E1000_RAH_AV, align 4
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @RAL(i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @ew32(i32 %58, i32 %59)
  %61 = call i32 (...) @e1e_flush()
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @RAH(i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @ew32(i32 %63, i32 %64)
  %66 = call i32 (...) @e1e_flush()
  store i32 0, i32* %4, align 4
  br label %135

67:                                               ; preds = %53
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %129

74:                                               ; preds = %67
  %75 = load i32, i32* @FWSM, align 4
  %76 = call i32 @er32(i32 %75)
  %77 = load i32, i32* @E1000_FWSM_WLOCK_MAC_MASK, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @E1000_FWSM_WLOCK_MAC_SHIFT, align 4
  %80 = load i32, i32* %10, align 4
  %81 = ashr i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %130

85:                                               ; preds = %74
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %128

92:                                               ; preds = %88, %85
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %94 = call i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw* %93)
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %11, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %130

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @SHRAL_PCH_LPT(i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @ew32(i32 %101, i32 %102)
  %104 = call i32 (...) @e1e_flush()
  %105 = load i32, i32* %7, align 4
  %106 = sub nsw i32 %105, 1
  %107 = call i32 @SHRAH_PCH_LPT(i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @ew32(i32 %107, i32 %108)
  %110 = call i32 (...) @e1e_flush()
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %112 = call i32 @e1000_release_swflag_ich8lan(%struct.e1000_hw* %111)
  %113 = load i32, i32* %7, align 4
  %114 = sub nsw i32 %113, 1
  %115 = call i32 @SHRAL_PCH_LPT(i32 %114)
  %116 = call i32 @er32(i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %98
  %120 = load i32, i32* %7, align 4
  %121 = sub nsw i32 %120, 1
  %122 = call i32 @SHRAH_PCH_LPT(i32 %121)
  %123 = call i32 @er32(i32 %122)
  %124 = load i32, i32* %9, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %135

127:                                              ; preds = %119, %98
  br label %128

128:                                              ; preds = %127, %88
  br label %129

129:                                              ; preds = %128, %67
  br label %130

130:                                              ; preds = %129, %97, %84
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @e_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %130, %126, %56
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @RAL(i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @RAH(i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @SHRAL_PCH_LPT(i32) #1

declare dso_local i32 @SHRAH_PCH_LPT(i32) #1

declare dso_local i32 @e1000_release_swflag_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
