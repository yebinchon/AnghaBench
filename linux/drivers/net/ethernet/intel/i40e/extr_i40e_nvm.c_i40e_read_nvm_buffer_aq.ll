; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_read_nvm_buffer_aq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_nvm.c_i40e_read_nvm_buffer_aq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }

@I40E_SR_SECTOR_SIZE_IN_WORDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_hw*, i64, i64*, i64*)* @i40e_read_nvm_buffer_aq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_read_nvm_buffer_aq(%struct.i40e_hw* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %62, %4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 8
  %17 = srem i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i64*, i64** %7, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 8
  %25 = srem i64 %23, %24
  %26 = sub nsw i64 %22, %25
  %27 = call i64 @min(i64 %21, i64 %26)
  store i64 %27, i64* %10, align 8
  br label %35

28:                                               ; preds = %14
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %12, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load i64, i64* @I40E_SR_SECTOR_SIZE_IN_WORDS, align 8
  %34 = call i64 @min(i64 %32, i64 %33)
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %28, %19
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %10, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %42, %35
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @i40e_read_nvm_aq(%struct.i40e_hw* %44, i32 0, i64 %45, i64 %46, i64* %49, i32 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %87

55:                                               ; preds = %43
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %6, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %55
  %63 = load i64, i64* %12, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %14, label %67

67:                                               ; preds = %62
  store i64 0, i64* %13, align 8
  br label %68

68:                                               ; preds = %83, %67
  %69 = load i64, i64* %13, align 8
  %70 = load i64*, i64** %7, align 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load i64*, i64** %8, align 8
  %75 = bitcast i64* %74 to i32*
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @le16_to_cpu(i32 %78)
  %80 = load i64*, i64** %8, align 8
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 %79, i64* %82, align 8
  br label %83

83:                                               ; preds = %73
  %84 = load i64, i64* %13, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %13, align 8
  br label %68

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86, %54
  %88 = load i64, i64* %12, align 8
  %89 = load i64*, i64** %7, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i64, i64* %9, align 8
  ret i64 %90
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @i40e_read_nvm_aq(%struct.i40e_hw*, i32, i64, i64, i64*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
