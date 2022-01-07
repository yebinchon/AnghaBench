; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_handle_over_8bd_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_handle_over_8bd_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"fail(%d) to query over_8bd_no_fe info\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"PPU_PF_ABNORMAL_INT_ST over_8bd_no_fe found, vf_id(%u), queue_id(%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"invalid vf id(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"inform reset to vf(%u) failed %d!\0A\00", align 1
@HNAE3_FUNC_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*, i64*)* @hclge_handle_over_8bd_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_handle_over_8bd_err(%struct.hclge_dev* %0, i64* %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %14 = call i32 @hclge_query_over_8bd_err_info(%struct.hclge_dev* %13, i32* %6, i32* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %67

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %31 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %67

38:                                               ; preds = %28
  %39 = load i64*, i64** %4, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %67

43:                                               ; preds = %38
  %44 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %45 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = call i32 @hclge_inform_reset_assert_to_vf(%struct.TYPE_4__* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %56 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %43
  br label %67

63:                                               ; preds = %21
  %64 = load i32, i32* @HNAE3_FUNC_RESET, align 4
  %65 = load i64*, i64** %4, align 8
  %66 = call i32 @set_bit(i32 %64, i64* %65)
  br label %67

67:                                               ; preds = %17, %34, %42, %63, %62
  ret void
}

declare dso_local i32 @hclge_query_over_8bd_err_info(%struct.hclge_dev*, i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @hclge_inform_reset_assert_to_vf(%struct.TYPE_4__*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
