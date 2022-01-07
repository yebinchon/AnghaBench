; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_valid_nvm_bank_detect_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_valid_nvm_bank_detect_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, %struct.e1000_nvm_info }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_nvm_info = type { i32 }

@E1000_ICH_NVM_SIG_WORD = common dso_local global i32 0, align 4
@E1000_ICH_NVM_VALID_SIG_MASK = common dso_local global i32 0, align 4
@E1000_ICH_NVM_SIG_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ERROR: No valid NVM bank present\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@EECD = common dso_local global i32 0, align 4
@E1000_EECD_SEC1VAL_VALID_MASK = common dso_local global i32 0, align 4
@E1000_EECD_SEC1VAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"Unable to determine valid NVM bank via EEC - reading flash signature\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i32*)* @e1000_valid_nvm_bank_detect_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_valid_nvm_bank_detect_ich8lan(%struct.e1000_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_nvm_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 1
  store %struct.e1000_nvm_info* %14, %struct.e1000_nvm_info** %7, align 8
  %15 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %7, align 8
  %16 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @E1000_ICH_NVM_SIG_WORD, align 4
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %97 [
    i32 128, label %28
    i32 129, label %28
    i32 131, label %77
    i32 130, label %77
  ]

28:                                               ; preds = %2, %2
  %29 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %7, align 8
  %30 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @E1000_ICH_NVM_SIG_WORD, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 0, i32* %33, align 4
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw* %34, i32 %35, i32* %10)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %3, align 4
  br label %136

41:                                               ; preds = %28
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, 65280
  %44 = ashr i32 %43, 8
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @E1000_ICH_NVM_VALID_SIG_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @E1000_ICH_NVM_SIG_VALUE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32*, i32** %5, align 8
  store i32 0, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %136

52:                                               ; preds = %41
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %54, %55
  %57 = call i32 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw* %53, i32 %56, i32* %10)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %3, align 4
  br label %136

62:                                               ; preds = %52
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, 65280
  %65 = ashr i32 %64, 8
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @E1000_ICH_NVM_VALID_SIG_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @E1000_ICH_NVM_SIG_VALUE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32*, i32** %5, align 8
  store i32 1, i32* %72, align 4
  store i32 0, i32* %3, align 4
  br label %136

73:                                               ; preds = %62
  %74 = call i32 @e_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @E1000_ERR_NVM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %136

77:                                               ; preds = %2, %2
  %78 = load i32, i32* @EECD, align 4
  %79 = call i32 @er32(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @E1000_EECD_SEC1VAL_VALID_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @E1000_EECD_SEC1VAL_VALID_MASK, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %77
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @E1000_EECD_SEC1VAL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32*, i32** %5, align 8
  store i32 1, i32* %91, align 4
  br label %94

92:                                               ; preds = %85
  %93 = load i32*, i32** %5, align 8
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %92, %90
  store i32 0, i32* %3, align 4
  br label %136

95:                                               ; preds = %77
  %96 = call i32 @e_dbg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %2, %95
  %98 = load i32*, i32** %5, align 8
  store i32 0, i32* %98, align 4
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @e1000_read_flash_byte_ich8lan(%struct.e1000_hw* %99, i32 %100, i32* %11)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %3, align 4
  br label %136

106:                                              ; preds = %97
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @E1000_ICH_NVM_VALID_SIG_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @E1000_ICH_NVM_SIG_VALUE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32*, i32** %5, align 8
  store i32 0, i32* %113, align 4
  store i32 0, i32* %3, align 4
  br label %136

114:                                              ; preds = %106
  %115 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %116, %117
  %119 = call i32 @e1000_read_flash_byte_ich8lan(%struct.e1000_hw* %115, i32 %118, i32* %11)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %3, align 4
  br label %136

124:                                              ; preds = %114
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @E1000_ICH_NVM_VALID_SIG_MASK, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @E1000_ICH_NVM_SIG_VALUE, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32*, i32** %5, align 8
  store i32 1, i32* %131, align 4
  store i32 0, i32* %3, align 4
  br label %136

132:                                              ; preds = %124
  %133 = call i32 @e_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %134 = load i32, i32* @E1000_ERR_NVM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %132, %130, %122, %112, %104, %94, %73, %71, %60, %50, %39
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @e1000_read_flash_dword_ich8lan(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000_read_flash_byte_ich8lan(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
