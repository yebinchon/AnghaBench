; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_log_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_log_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hclge_hw_error = type { i32, i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"%s %s found [error status=0x%x]\0A\00", align 1
@HNAE3_NONE_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i8*, %struct.hclge_hw_error*, i32, i64*)* @hclge_log_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_log_error(%struct.device* %0, i8* %1, %struct.hclge_hw_error* %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hclge_hw_error*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.hclge_hw_error* %2, %struct.hclge_hw_error** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  br label %11

11:                                               ; preds = %48, %5
  %12 = load %struct.hclge_hw_error*, %struct.hclge_hw_error** %8, align 8
  %13 = getelementptr inbounds %struct.hclge_hw_error, %struct.hclge_hw_error* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %11
  %17 = load %struct.hclge_hw_error*, %struct.hclge_hw_error** %8, align 8
  %18 = getelementptr inbounds %struct.hclge_hw_error, %struct.hclge_hw_error* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %16
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.hclge_hw_error*, %struct.hclge_hw_error** %8, align 8
  %27 = getelementptr inbounds %struct.hclge_hw_error, %struct.hclge_hw_error* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %25, i64 %28, i32 %29)
  %31 = load %struct.hclge_hw_error*, %struct.hclge_hw_error** %8, align 8
  %32 = getelementptr inbounds %struct.hclge_hw_error, %struct.hclge_hw_error* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %23
  %36 = load %struct.hclge_hw_error*, %struct.hclge_hw_error** %8, align 8
  %37 = getelementptr inbounds %struct.hclge_hw_error, %struct.hclge_hw_error* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HNAE3_NONE_RESET, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.hclge_hw_error*, %struct.hclge_hw_error** %8, align 8
  %43 = getelementptr inbounds %struct.hclge_hw_error, %struct.hclge_hw_error* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %10, align 8
  %46 = call i32 @set_bit(i64 %44, i64* %45)
  br label %47

47:                                               ; preds = %41, %35, %23
  br label %48

48:                                               ; preds = %47, %16
  %49 = load %struct.hclge_hw_error*, %struct.hclge_hw_error** %8, align 8
  %50 = getelementptr inbounds %struct.hclge_hw_error, %struct.hclge_hw_error* %49, i32 1
  store %struct.hclge_hw_error* %50, %struct.hclge_hw_error** %8, align 8
  br label %11

51:                                               ; preds = %11
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i64, i32) #1

declare dso_local i32 @set_bit(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
