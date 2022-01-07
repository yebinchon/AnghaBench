; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_rar_set_pch2lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_rar_set_pch2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@E1000_RAH_AV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"SHRA[%d] might be locked by ME - FWSM=0x%8.8x\0A\00", align 1
@FWSM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to write receive address at index %d\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64*, i32)* @e1000_rar_set_pch2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_rar_set_pch2lan(%struct.e1000_hw* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64*, i64** %6, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i64*, i64** %6, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 8
  %20 = or i32 %14, %19
  %21 = load i64*, i64** %6, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 2
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 16
  %26 = or i32 %20, %25
  %27 = load i64*, i64** %6, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 3
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = shl i32 %30, 24
  %32 = or i32 %26, %31
  store i32 %32, i32* %8, align 4
  %33 = load i64*, i64** %6, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 4
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64*, i64** %6, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 5
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 8
  %42 = or i32 %36, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %3
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45, %3
  %49 = load i32, i32* @E1000_RAH_AV, align 4
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @RAL(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @ew32(i32 %57, i32 %58)
  %60 = call i32 (...) @e1e_flush()
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @RAH(i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @ew32(i32 %62, i32 %63)
  %65 = call i32 (...) @e1e_flush()
  store i32 0, i32* %4, align 4
  br label %121

66:                                               ; preds = %52
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %69 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = icmp slt i32 %67, %72
  br i1 %73, label %74, label %115

74:                                               ; preds = %66
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %76 = call i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw* %75)
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %116

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %81, 1
  %83 = call i32 @SHRAL(i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @ew32(i32 %83, i32 %84)
  %86 = call i32 (...) @e1e_flush()
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 %87, 1
  %89 = call i32 @SHRAH(i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @ew32(i32 %89, i32 %90)
  %92 = call i32 (...) @e1e_flush()
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %94 = call i32 @e1000_release_swflag_ich8lan(%struct.e1000_hw* %93)
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %95, 1
  %97 = call i32 @SHRAL(i32 %96)
  %98 = call i32 @er32(i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %80
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %102, 1
  %104 = call i32 @SHRAH(i32 %103)
  %105 = call i32 @er32(i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %121

109:                                              ; preds = %101, %80
  %110 = load i32, i32* %7, align 4
  %111 = sub nsw i32 %110, 1
  %112 = load i32, i32* @FWSM, align 4
  %113 = call i32 @er32(i32 %112)
  %114 = call i32 (i8*, i32, ...) @e_dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %113)
  br label %115

115:                                              ; preds = %109, %66
  br label %116

116:                                              ; preds = %115, %79
  %117 = load i32, i32* %7, align 4
  %118 = call i32 (i8*, i32, ...) @e_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %116, %108, %55
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @RAL(i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @RAH(i32) #1

declare dso_local i64 @e1000_acquire_swflag_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @SHRAL(i32) #1

declare dso_local i32 @SHRAH(i32) #1

declare dso_local i32 @e1000_release_swflag_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e_dbg(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
