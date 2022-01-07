; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_read_nvm_module_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_read_nvm_module_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_DEBUG_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Reading nvm word failed.Error code: %d.\0A\00", align 1
@I40E_ERR_NVM = common dso_local global i64 0, align 8
@I40E_ERR_BAD_PTR = common dso_local global i64 0, align 8
@I40E_PTR_TYPE = common dso_local global i32 0, align 4
@I40E_RESOURCE_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Reading nvm aq failed.Error code: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Reading nvm buffer failed.Error code: %d.\0A\00", align 1
@I40E_NVM_INVALID_PTR_VAL = common dso_local global i32 0, align 4
@I40E_NVM_INVALID_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_read_nvm_module_data(%struct.i40e_hw* %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %5
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @i40e_read_nvm_word(%struct.i40e_hw* %18, i64 %19, i32* %13)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %25 = load i32, i32* @I40E_DEBUG_ALL, align 4
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @i40e_debug(%struct.i40e_hw* %24, i32 %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i64, i64* @I40E_ERR_NVM, align 8
  store i64 %28, i64* %6, align 8
  br label %98

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %5
  %31 = load i32, i32* %13, align 4
  %32 = icmp eq i32 %31, 32767
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 65535
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %30
  %37 = load i64, i64* @I40E_ERR_BAD_PTR, align 8
  store i64 %37, i64* %6, align 8
  br label %98

38:                                               ; preds = %33
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @I40E_PTR_TYPE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %38
  %44 = load i32, i32* @I40E_PTR_TYPE, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %13, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = sdiv i32 %48, 2
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = mul nsw i32 %50, 4096
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %14, align 4
  %54 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %55 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %56 = call i64 @i40e_acquire_nvm(%struct.i40e_hw* %54, i32 %55)
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %43
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = mul nsw i32 2, %61
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 2, %63
  %65 = load i32*, i32** %11, align 8
  %66 = call i64 @i40e_aq_read_nvm(%struct.i40e_hw* %60, i32 0, i32 %62, i32 %64, i32* %65, i32 1, i32* null)
  store i64 %66, i64* %12, align 8
  %67 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %68 = call i32 @i40e_release_nvm(%struct.i40e_hw* %67)
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %59
  %72 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %73 = load i32, i32* @I40E_DEBUG_ALL, align 4
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @i40e_debug(%struct.i40e_hw* %72, i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = load i64, i64* @I40E_ERR_NVM, align 8
  store i64 %76, i64* %6, align 8
  br label %98

77:                                               ; preds = %59
  br label %80

78:                                               ; preds = %43
  %79 = load i64, i64* @I40E_ERR_NVM, align 8
  store i64 %79, i64* %6, align 8
  br label %98

80:                                               ; preds = %77
  br label %96

81:                                               ; preds = %38
  %82 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32*, i32** %11, align 8
  %87 = call i64 @i40e_read_nvm_buffer(%struct.i40e_hw* %82, i32 %85, i32* %10, i32* %86)
  store i64 %87, i64* %12, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %92 = load i32, i32* @I40E_DEBUG_ALL, align 4
  %93 = load i64, i64* %12, align 8
  %94 = call i32 @i40e_debug(%struct.i40e_hw* %91, i32 %92, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %90, %81
  br label %96

96:                                               ; preds = %95, %80
  %97 = load i64, i64* %12, align 8
  store i64 %97, i64* %6, align 8
  br label %98

98:                                               ; preds = %96, %78, %71, %36, %23
  %99 = load i64, i64* %6, align 8
  ret i64 %99
}

declare dso_local i64 @i40e_read_nvm_word(%struct.i40e_hw*, i64, i32*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i64) #1

declare dso_local i64 @i40e_acquire_nvm(%struct.i40e_hw*, i32) #1

declare dso_local i64 @i40e_aq_read_nvm(%struct.i40e_hw*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @i40e_release_nvm(%struct.i40e_hw*) #1

declare dso_local i64 @i40e_read_nvm_buffer(%struct.i40e_hw*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
