; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_i225.c_igc_write_nvm_srwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_i225.c_igc_write_nvm_srwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_hw = type { %struct.igc_nvm_info }
%struct.igc_nvm_info = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@IGC_ERR_NVM = common dso_local global i32 0, align 4
@IGC_NVM_RW_ADDR_SHIFT = common dso_local global i64 0, align 8
@IGC_NVM_RW_REG_DATA = common dso_local global i64 0, align 8
@IGC_NVM_RW_REG_START = common dso_local global i64 0, align 8
@IGC_SRWR = common dso_local global i32 0, align 4
@IGC_NVM_RW_REG_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Shadow RAM write EEWR timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igc_hw*, i64, i64, i64*)* @igc_write_nvm_srwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_write_nvm_srwr(%struct.igc_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.igc_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.igc_nvm_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.igc_hw* %0, %struct.igc_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load %struct.igc_hw*, %struct.igc_hw** %5, align 8
  %16 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %15, i32 0, i32 0
  store %struct.igc_nvm_info* %16, %struct.igc_nvm_info** %9, align 8
  store i64 100000, i64* %10, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %9, align 8
  %19 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.igc_nvm_info*, %struct.igc_nvm_info** %9, align 8
  %25 = getelementptr inbounds %struct.igc_nvm_info, %struct.igc_nvm_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub nsw i64 %26, %27
  %29 = icmp sgt i64 %23, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30, %22, %4
  %34 = call i32 @hw_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @IGC_ERR_NVM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %14, align 4
  br label %86

37:                                               ; preds = %30
  store i64 0, i64* %11, align 8
  br label %38

38:                                               ; preds = %82, %37
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %85

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* @IGC_NVM_RW_ADDR_SHIFT, align 8
  %47 = shl i64 %45, %46
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IGC_NVM_RW_REG_DATA, align 8
  %53 = shl i64 %51, %52
  %54 = or i64 %47, %53
  %55 = load i64, i64* @IGC_NVM_RW_REG_START, align 8
  %56 = or i64 %54, %55
  store i64 %56, i64* %13, align 8
  %57 = load i32, i32* @IGC_SRWR, align 4
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @wr32(i32 %57, i64 %58)
  store i64 0, i64* %12, align 8
  br label %60

60:                                               ; preds = %73, %42
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32, i32* @IGC_NVM_RW_REG_DONE, align 4
  %66 = load i32, i32* @IGC_SRWR, align 4
  %67 = call i32 @rd32(i32 %66)
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  br label %76

71:                                               ; preds = %64
  %72 = call i32 @udelay(i32 5)
  br label %73

73:                                               ; preds = %71
  %74 = load i64, i64* %12, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %12, align 8
  br label %60

76:                                               ; preds = %70, %60
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @hw_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %85

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %11, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %11, align 8
  br label %38

85:                                               ; preds = %79, %38
  br label %86

86:                                               ; preds = %85, %33
  %87 = load i32, i32* %14, align 4
  ret i32 %87
}

declare dso_local i32 @hw_dbg(i8*) #1

declare dso_local i32 @wr32(i32, i64) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
