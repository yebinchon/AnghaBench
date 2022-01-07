; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_reset_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_reset_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32 }

@HNAE3_NONE_RESET = common dso_local global i32 0, align 4
@HNAE3_VF_RESET = common dso_local global i32 0, align 4
@HNAE3_VF_PF_FUNC_RESET = common dso_local global i32 0, align 4
@HNAE3_VF_FUNC_RESET = common dso_local global i32 0, align 4
@HNAE3_VF_FULL_RESET = common dso_local global i32 0, align 4
@HNAE3_FLR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*, i64*)* @hclgevf_get_reset_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_get_reset_level(%struct.hclgevf_dev* %0, i64* %1) #0 {
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i32, i32* @HNAE3_NONE_RESET, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @HNAE3_VF_RESET, align 4
  %8 = load i64*, i64** %4, align 8
  %9 = call i64 @test_bit(i32 %7, i64* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32, i32* @HNAE3_VF_RESET, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @HNAE3_VF_RESET, align 4
  %14 = load i64*, i64** %4, align 8
  %15 = call i32 @clear_bit(i32 %13, i64* %14)
  %16 = load i32, i32* @HNAE3_VF_PF_FUNC_RESET, align 4
  %17 = load i64*, i64** %4, align 8
  %18 = call i32 @clear_bit(i32 %16, i64* %17)
  %19 = load i32, i32* @HNAE3_VF_FUNC_RESET, align 4
  %20 = load i64*, i64** %4, align 8
  %21 = call i32 @clear_bit(i32 %19, i64* %20)
  br label %72

22:                                               ; preds = %2
  %23 = load i32, i32* @HNAE3_VF_FULL_RESET, align 4
  %24 = load i64*, i64** %4, align 8
  %25 = call i64 @test_bit(i32 %23, i64* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* @HNAE3_VF_FULL_RESET, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @HNAE3_VF_FULL_RESET, align 4
  %30 = load i64*, i64** %4, align 8
  %31 = call i32 @clear_bit(i32 %29, i64* %30)
  %32 = load i32, i32* @HNAE3_VF_FUNC_RESET, align 4
  %33 = load i64*, i64** %4, align 8
  %34 = call i32 @clear_bit(i32 %32, i64* %33)
  br label %71

35:                                               ; preds = %22
  %36 = load i32, i32* @HNAE3_VF_PF_FUNC_RESET, align 4
  %37 = load i64*, i64** %4, align 8
  %38 = call i64 @test_bit(i32 %36, i64* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* @HNAE3_VF_PF_FUNC_RESET, align 4
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @HNAE3_VF_PF_FUNC_RESET, align 4
  %43 = load i64*, i64** %4, align 8
  %44 = call i32 @clear_bit(i32 %42, i64* %43)
  %45 = load i32, i32* @HNAE3_VF_FUNC_RESET, align 4
  %46 = load i64*, i64** %4, align 8
  %47 = call i32 @clear_bit(i32 %45, i64* %46)
  br label %70

48:                                               ; preds = %35
  %49 = load i32, i32* @HNAE3_VF_FUNC_RESET, align 4
  %50 = load i64*, i64** %4, align 8
  %51 = call i64 @test_bit(i32 %49, i64* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* @HNAE3_VF_FUNC_RESET, align 4
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @HNAE3_VF_FUNC_RESET, align 4
  %56 = load i64*, i64** %4, align 8
  %57 = call i32 @clear_bit(i32 %55, i64* %56)
  br label %69

58:                                               ; preds = %48
  %59 = load i32, i32* @HNAE3_FLR_RESET, align 4
  %60 = load i64*, i64** %4, align 8
  %61 = call i64 @test_bit(i32 %59, i64* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* @HNAE3_FLR_RESET, align 4
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @HNAE3_FLR_RESET, align 4
  %66 = load i64*, i64** %4, align 8
  %67 = call i32 @clear_bit(i32 %65, i64* %66)
  br label %68

68:                                               ; preds = %63, %58
  br label %69

69:                                               ; preds = %68, %53
  br label %70

70:                                               ; preds = %69, %40
  br label %71

71:                                               ; preds = %70, %27
  br label %72

72:                                               ; preds = %71, %11
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
