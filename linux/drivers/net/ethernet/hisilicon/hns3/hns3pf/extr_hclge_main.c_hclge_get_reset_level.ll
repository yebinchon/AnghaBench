; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_reset_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_reset_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_ae_dev = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i64, i32 }

@HNAE3_NONE_RESET = common dso_local global i64 0, align 8
@HNAE3_UNKNOWN_RESET = common dso_local global i32 0, align 4
@HNAE3_IMP_RESET = common dso_local global i32 0, align 4
@HNAE3_GLOBAL_RESET = common dso_local global i32 0, align 4
@HNAE3_FUNC_RESET = common dso_local global i32 0, align 4
@HNAE3_FLR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_ae_dev*, i64*)* @hclge_get_reset_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_reset_level(%struct.hnae3_ae_dev* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_ae_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hclge_dev*, align 8
  store %struct.hnae3_ae_dev* %0, %struct.hnae3_ae_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i64, i64* @HNAE3_NONE_RESET, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %6, align 4
  %10 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %11 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %10, i32 0, i32 0
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  store %struct.hclge_dev* %12, %struct.hclge_dev** %7, align 8
  %13 = load i32, i32* @HNAE3_UNKNOWN_RESET, align 4
  %14 = load i64*, i64** %5, align 8
  %15 = call i64 @test_bit(i32 %13, i64* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = call i32 @hclge_handle_hw_msix_error(%struct.hclge_dev* %18, i64* %19)
  %21 = load i32, i32* @HNAE3_UNKNOWN_RESET, align 4
  %22 = load i64*, i64** %5, align 8
  %23 = call i32 @clear_bit(i32 %21, i64* %22)
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %25 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %24, i32 0, i32 1
  %26 = call i32 @hclge_enable_vector(i32* %25, i32 1)
  br label %27

27:                                               ; preds = %17, %2
  %28 = load i32, i32* @HNAE3_IMP_RESET, align 4
  %29 = load i64*, i64** %5, align 8
  %30 = call i64 @test_bit(i32 %28, i64* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i32, i32* @HNAE3_IMP_RESET, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @HNAE3_IMP_RESET, align 4
  %35 = load i64*, i64** %5, align 8
  %36 = call i32 @clear_bit(i32 %34, i64* %35)
  %37 = load i32, i32* @HNAE3_GLOBAL_RESET, align 4
  %38 = load i64*, i64** %5, align 8
  %39 = call i32 @clear_bit(i32 %37, i64* %38)
  %40 = load i32, i32* @HNAE3_FUNC_RESET, align 4
  %41 = load i64*, i64** %5, align 8
  %42 = call i32 @clear_bit(i32 %40, i64* %41)
  br label %79

43:                                               ; preds = %27
  %44 = load i32, i32* @HNAE3_GLOBAL_RESET, align 4
  %45 = load i64*, i64** %5, align 8
  %46 = call i64 @test_bit(i32 %44, i64* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32, i32* @HNAE3_GLOBAL_RESET, align 4
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @HNAE3_GLOBAL_RESET, align 4
  %51 = load i64*, i64** %5, align 8
  %52 = call i32 @clear_bit(i32 %50, i64* %51)
  %53 = load i32, i32* @HNAE3_FUNC_RESET, align 4
  %54 = load i64*, i64** %5, align 8
  %55 = call i32 @clear_bit(i32 %53, i64* %54)
  br label %78

56:                                               ; preds = %43
  %57 = load i32, i32* @HNAE3_FUNC_RESET, align 4
  %58 = load i64*, i64** %5, align 8
  %59 = call i64 @test_bit(i32 %57, i64* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* @HNAE3_FUNC_RESET, align 4
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @HNAE3_FUNC_RESET, align 4
  %64 = load i64*, i64** %5, align 8
  %65 = call i32 @clear_bit(i32 %63, i64* %64)
  br label %77

66:                                               ; preds = %56
  %67 = load i32, i32* @HNAE3_FLR_RESET, align 4
  %68 = load i64*, i64** %5, align 8
  %69 = call i64 @test_bit(i32 %67, i64* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* @HNAE3_FLR_RESET, align 4
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* @HNAE3_FLR_RESET, align 4
  %74 = load i64*, i64** %5, align 8
  %75 = call i32 @clear_bit(i32 %73, i64* %74)
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %61
  br label %78

78:                                               ; preds = %77, %48
  br label %79

79:                                               ; preds = %78, %32
  %80 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %81 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @HNAE3_NONE_RESET, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load i32, i32* %6, align 4
  %87 = zext i32 %86 to i64
  %88 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %89 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i64, i64* @HNAE3_NONE_RESET, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %3, align 4
  br label %97

95:                                               ; preds = %85, %79
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @hclge_handle_hw_msix_error(%struct.hclge_dev*, i64*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @hclge_enable_vector(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
