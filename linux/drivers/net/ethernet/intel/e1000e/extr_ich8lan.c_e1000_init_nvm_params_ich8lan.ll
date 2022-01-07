; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_init_nvm_params_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_init_nvm_params_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, %struct.TYPE_5__, %struct.TYPE_4__, %struct.e1000_nvm_info }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.e1000_nvm_info = type { i32, i32, i64, i32 }

@e1000_nvm_flash_sw = common dso_local global i32 0, align 4
@e1000_pch_spt = common dso_local global i64 0, align 8
@STRAP = common dso_local global i32 0, align 4
@NVM_SIZE_MULTIPLIER = common dso_local global i32 0, align 4
@E1000_FLASH_BASE_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"ERROR: Flash registers not mapped\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@ICH_FLASH_GFPREG = common dso_local global i32 0, align 4
@FLASH_GFPREG_BASE_MASK = common dso_local global i32 0, align 4
@FLASH_SECTOR_ADDR_SHIFT = common dso_local global i32 0, align 4
@E1000_ICH8_SHADOW_RAM_WORDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_nvm_params_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_nvm_params_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_nvm_info*, align 8
  %5 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 4
  store %struct.e1000_nvm_info* %12, %struct.e1000_nvm_info** %4, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %15, %struct.e1000_dev_spec_ich8lan** %5, align 8
  %16 = load i32, i32* @e1000_nvm_flash_sw, align 4
  %17 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @e1000_pch_spt, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %1
  %26 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load i32, i32* @STRAP, align 4
  %29 = call i32 @er32(i32 %28)
  %30 = ashr i32 %29, 1
  %31 = and i32 %30, 31
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* @NVM_SIZE_MULTIPLIER, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sdiv i32 %35, 2
  %37 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %40 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @E1000_FLASH_BASE_ADDR, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %94

52:                                               ; preds = %1
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = call i32 @e_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %121

61:                                               ; preds = %52
  %62 = load i32, i32* @ICH_FLASH_GFPREG, align 4
  %63 = call i32 @er32flash(i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @FLASH_GFPREG_BASE_MASK, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = ashr i32 %67, 16
  %69 = load i32, i32* @FLASH_GFPREG_BASE_MASK, align 4
  %70 = and i32 %68, %69
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @FLASH_SECTOR_ADDR_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %76 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* @FLASH_SECTOR_ADDR_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %83 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %85 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %86, 2
  store i32 %87, i32* %85, align 4
  %88 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %89 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = udiv i64 %91, 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 4
  br label %94

94:                                               ; preds = %61, %25
  %95 = load i64, i64* @E1000_ICH8_SHADOW_RAM_WORDS, align 8
  %96 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %97 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  store i64 0, i64* %9, align 8
  br label %98

98:                                               ; preds = %117, %94
  %99 = load i64, i64* %9, align 8
  %100 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %4, align 8
  %101 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ult i64 %99, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %98
  %105 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %5, align 8
  %106 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  %111 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %5, align 8
  %112 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  store i32 65535, i32* %116, align 4
  br label %117

117:                                              ; preds = %104
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %9, align 8
  br label %98

120:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %57
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32flash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
