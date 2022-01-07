; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_erase_flash_bank_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_erase_flash_bank_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_5__, %struct.e1000_nvm_info }
%struct.TYPE_5__ = type { i64 }
%struct.e1000_nvm_info = type { i32, i64 }
%union.ich8_hws_flash_status = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64 }
%union.ich8_hws_flash_ctrl = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ICH_FLASH_HSFSTS = common dso_local global i32 0, align 4
@ICH_FLASH_SEG_SIZE_256 = common dso_local global i64 0, align 8
@ICH_FLASH_SEG_SIZE_4K = common dso_local global i64 0, align 8
@ICH_FLASH_SEG_SIZE_8K = common dso_local global i64 0, align 8
@ICH_FLASH_SEG_SIZE_64K = common dso_local global i64 0, align 8
@E1000_ERR_NVM = common dso_local global i64 0, align 8
@ICH_FLASH_ERASE_COMMAND_TIMEOUT = common dso_local global i64 0, align 8
@e1000_pch_spt = common dso_local global i64 0, align 8
@ICH_FLASH_HSFCTL = common dso_local global i32 0, align 4
@ICH_CYCLE_ERASE = common dso_local global i32 0, align 4
@ICH_FLASH_FADDR = common dso_local global i32 0, align 4
@ICH_FLASH_CYCLE_REPEAT_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i64)* @e1000_erase_flash_bank_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_erase_flash_bank_ich8lan(%struct.e1000_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_nvm_info*, align 8
  %7 = alloca %union.ich8_hws_flash_status, align 8
  %8 = alloca %union.ich8_hws_flash_ctrl, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 1
  store %struct.e1000_nvm_info* %18, %struct.e1000_nvm_info** %6, align 8
  %19 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %6, align 8
  %20 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %24 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %25 = call i8* @er16flash(i32 %24)
  %26 = bitcast %union.ich8_hws_flash_status* %7 to i8**
  store i8* %25, i8** %26, align 8
  %27 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_6__*
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %41 [
    i32 0, label %30
    i32 1, label %35
    i32 2, label %37
    i32 3, label %39
  ]

30:                                               ; preds = %2
  %31 = load i64, i64* @ICH_FLASH_SEG_SIZE_256, align 8
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @ICH_FLASH_SEG_SIZE_256, align 8
  %34 = sdiv i64 %32, %33
  store i64 %34, i64* %14, align 8
  br label %44

35:                                               ; preds = %2
  %36 = load i64, i64* @ICH_FLASH_SEG_SIZE_4K, align 8
  store i64 %36, i64* %15, align 8
  store i64 1, i64* %14, align 8
  br label %44

37:                                               ; preds = %2
  %38 = load i64, i64* @ICH_FLASH_SEG_SIZE_8K, align 8
  store i64 %38, i64* %15, align 8
  store i64 1, i64* %14, align 8
  br label %44

39:                                               ; preds = %2
  %40 = load i64, i64* @ICH_FLASH_SEG_SIZE_64K, align 8
  store i64 %40, i64* %15, align 8
  store i64 1, i64* %14, align 8
  br label %44

41:                                               ; preds = %2
  %42 = load i64, i64* @E1000_ERR_NVM, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %3, align 8
  br label %153

44:                                               ; preds = %39, %37, %35, %30
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i64, i64* %10, align 8
  br label %54

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i64 [ %52, %51 ], [ 0, %53 ]
  %56 = load i64, i64* %9, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %9, align 8
  store i64 0, i64* %13, align 8
  br label %58

58:                                               ; preds = %149, %54
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %152

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %143, %62
  %64 = load i64, i64* @ICH_FLASH_ERASE_COMMAND_TIMEOUT, align 8
  store i64 %64, i64* %16, align 8
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %66 = call i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw* %65)
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i64, i64* %11, align 8
  store i64 %70, i64* %3, align 8
  br label %153

71:                                               ; preds = %63
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @e1000_pch_spt, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %80 = call i32 @er32flash(i32 %79)
  %81 = ashr i32 %80, 16
  %82 = bitcast %union.ich8_hws_flash_ctrl* %8 to i32*
  store i32 %81, i32* %82, align 4
  br label %88

83:                                               ; preds = %71
  %84 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %85 = call i8* @er16flash(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = bitcast %union.ich8_hws_flash_ctrl* %8 to i32*
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* @ICH_CYCLE_ERASE, align 4
  %90 = bitcast %union.ich8_hws_flash_ctrl* %8 to %struct.TYPE_4__*
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @e1000_pch_spt, align 8
  %97 = icmp sge i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %88
  %99 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %100 = bitcast %union.ich8_hws_flash_ctrl* %8 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 16
  %103 = sext i32 %102 to i64
  %104 = call i32 @ew32flash(i32 %99, i64 %103)
  br label %110

105:                                              ; preds = %88
  %106 = load i32, i32* @ICH_FLASH_HSFCTL, align 4
  %107 = bitcast %union.ich8_hws_flash_ctrl* %8 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ew16flash(i32 %106, i32 %108)
  br label %110

110:                                              ; preds = %105, %98
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %15, align 8
  %113 = mul nsw i64 %111, %112
  %114 = load i64, i64* %9, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %9, align 8
  %116 = load i32, i32* @ICH_FLASH_FADDR, align 4
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @ew32flash(i32 %116, i64 %117)
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %120 = load i64, i64* %16, align 8
  %121 = call i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw* %119, i64 %120)
  store i64 %121, i64* %11, align 8
  %122 = load i64, i64* %11, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %110
  br label %148

125:                                              ; preds = %110
  %126 = load i32, i32* @ICH_FLASH_HSFSTS, align 4
  %127 = call i8* @er16flash(i32 %126)
  %128 = bitcast %union.ich8_hws_flash_status* %7 to i8**
  store i8* %127, i8** %128, align 8
  %129 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_6__*
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %143

134:                                              ; preds = %125
  %135 = bitcast %union.ich8_hws_flash_status* %7 to %struct.TYPE_6__*
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %134
  %140 = load i64, i64* %11, align 8
  store i64 %140, i64* %3, align 8
  br label %153

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142, %133
  %144 = load i64, i64* %12, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %12, align 8
  %146 = load i64, i64* @ICH_FLASH_CYCLE_REPEAT_COUNT, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %63, label %148

148:                                              ; preds = %143, %124
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %13, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %13, align 8
  br label %58

152:                                              ; preds = %58
  store i64 0, i64* %3, align 8
  br label %153

153:                                              ; preds = %152, %139, %69, %41
  %154 = load i64, i64* %3, align 8
  ret i64 %154
}

declare dso_local i8* @er16flash(i32) #1

declare dso_local i64 @e1000_flash_cycle_init_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @er32flash(i32) #1

declare dso_local i32 @ew32flash(i32, i64) #1

declare dso_local i32 @ew16flash(i32, i32) #1

declare dso_local i64 @e1000_flash_cycle_ich8lan(%struct.e1000_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
