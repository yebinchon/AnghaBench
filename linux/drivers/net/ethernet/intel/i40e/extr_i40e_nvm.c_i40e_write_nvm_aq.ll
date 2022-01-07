; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_write_nvm_aq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_write_nvm_aq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.i40e_asq_cmd_details = type { i32* }

@I40E_ERR_NVM = common dso_local global i32 0, align 4
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"NVM write error: offset %d beyond Shadow RAM limit %d\0A\00", align 1
@I40E_SR_SECTOR_SIZE_IN_WORDS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"NVM write fail error: tried to write %d words, limit is %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"NVM write error: cannot spread over two sectors in a single write offset=%d words=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, i32, i64, i64, i8*, i32)* @i40e_write_nvm_aq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_write_nvm_aq(%struct.i40e_hw* %0, i32 %1, i64 %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.i40e_asq_cmd_details, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @I40E_ERR_NVM, align 4
  store i32 %15, i32* %13, align 4
  %16 = call i32 @memset(%struct.i40e_asq_cmd_details* %14, i32 0, i32 8)
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %18 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.i40e_asq_cmd_details, %struct.i40e_asq_cmd_details* %14, i32 0, i32 0
  store i32* %18, i32** %19, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %24 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %22, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %6
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %30 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %35 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @i40e_debug(%struct.i40e_hw* %29, i32 %30, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %37)
  br label %80

39:                                               ; preds = %6
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %45 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 8
  %48 = call i32 @i40e_debug(%struct.i40e_hw* %44, i32 %45, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %46, i64 %47)
  br label %79

49:                                               ; preds = %39
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = sub nsw i64 %51, 1
  %53 = add nsw i64 %50, %52
  %54 = load i64, i64* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 8
  %55 = sdiv i64 %53, %54
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 8
  %58 = sdiv i64 %56, %57
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %62 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @i40e_debug(%struct.i40e_hw* %61, i32 %62, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i64 %63, i64 %64)
  br label %78

66:                                               ; preds = %49
  %67 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i64, i64* %9, align 8
  %70 = mul nsw i64 2, %69
  %71 = trunc i64 %70 to i32
  %72 = load i64, i64* %10, align 8
  %73 = mul nsw i64 2, %72
  %74 = trunc i64 %73 to i32
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @i40e_aq_update_nvm(%struct.i40e_hw* %67, i32 %68, i32 %71, i32 %74, i8* %75, i32 %76, i32 0, %struct.i40e_asq_cmd_details* %14)
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %66, %60
  br label %79

79:                                               ; preds = %78, %43
  br label %80

80:                                               ; preds = %79, %28
  %81 = load i32, i32* %13, align 4
  ret i32 %81
}

declare dso_local i32 @memset(%struct.i40e_asq_cmd_details*, i32, i32) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i64, i64) #1

declare dso_local i32 @i40e_aq_update_nvm(%struct.i40e_hw*, i32, i32, i32, i8*, i32, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
