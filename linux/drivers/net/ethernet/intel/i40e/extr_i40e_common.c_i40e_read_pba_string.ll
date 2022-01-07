; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_read_pba_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_read_pba_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_SR_PBA_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to read PBA flags or flag is invalid.\0A\00", align 1
@I40E_SR_PBA_BLOCK_PTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to read PBA Block pointer.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to read PBA Block size.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Buffer to small for PBA data.\0A\00", align 1
@I40E_ERR_PARAM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to read PBA Block word %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_read_pba_string(%struct.i40e_hw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %14 = load i32, i32* @I40E_SR_PBA_FLAGS, align 4
  %15 = call i64 @i40e_read_nvm_word(%struct.i40e_hw* %13, i32 %14, i32* %9)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 64250
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %3
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %23 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %4, align 8
  br label %105

25:                                               ; preds = %18
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %27 = load i32, i32* @I40E_SR_PBA_BLOCK_PTR, align 4
  %28 = call i64 @i40e_read_nvm_word(%struct.i40e_hw* %26, i32 %27, i32* %11)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %33 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %4, align 8
  br label %105

35:                                               ; preds = %25
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @i40e_read_nvm_word(%struct.i40e_hw* %36, i32 %37, i32* %10)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %43 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %4, align 8
  br label %105

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 %49, 2
  %51 = add nsw i32 %50, 1
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %55 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i64, i64* @I40E_ERR_PARAM, align 8
  store i64 %56, i64* %4, align 8
  br label %105

57:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %95, %57
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %98

62:                                               ; preds = %58
  %63 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %65, %66
  %68 = call i64 @i40e_read_nvm_word(%struct.i40e_hw* %63, i32 %67, i32* %9)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i64, i64* %8, align 8
  store i64 %75, i64* %4, align 8
  br label %105

76:                                               ; preds = %62
  %77 = load i32, i32* %9, align 4
  %78 = ashr i32 %77, 8
  %79 = and i32 %78, 255
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %12, align 4
  %83 = mul nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  store i8 %80, i8* %85, align 1
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, 255
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %12, align 4
  %91 = mul nsw i32 %90, 2
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  store i8 %88, i8* %94, align 1
  br label %95

95:                                               ; preds = %76
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %58

98:                                               ; preds = %58
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = mul nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8 0, i8* %103, align 1
  %104 = load i64, i64* %8, align 8
  store i64 %104, i64* %4, align 8
  br label %105

105:                                              ; preds = %98, %71, %53, %41, %31, %21
  %106 = load i64, i64* %4, align 8
  ret i64 %106
}

declare dso_local i64 @i40e_read_nvm_word(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @hw_dbg(%struct.i40e_hw*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
