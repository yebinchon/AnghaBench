; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_tqp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_tqp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Disable tqp fail, ret = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Send reset tqp cmd fail, ret = %d\0A\00", align 1
@HCLGE_TQP_RESET_TRY_TIMES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Reset TQP fail\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Deassert the soft reset fail, ret = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_reset_tqp(%struct.hnae3_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca %struct.hclge_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %13 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %12)
  store %struct.hclge_vport* %13, %struct.hclge_vport** %6, align 8
  %14 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %15 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %14, i32 0, i32 0
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %15, align 8
  store %struct.hclge_dev* %16, %struct.hclge_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @hclge_covert_handle_qid_global(%struct.hnae3_handle* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @hclge_tqp_enable(%struct.hclge_dev* %20, i32 %21, i32 0, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %11, align 4
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %3, align 4
  br label %88

33:                                               ; preds = %2
  %34 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @hclge_send_reset_tqp_cmd(%struct.hclge_dev* %34, i32 %35, i32 1)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %41 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %11, align 4
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %3, align 4
  br label %88

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @HCLGE_TQP_RESET_TRY_TIMES, align 4
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @hclge_get_reset_status(%struct.hclge_dev* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %62

60:                                               ; preds = %53
  %61 = call i32 @usleep_range(i32 1000, i32 1200)
  br label %48

62:                                               ; preds = %59, %48
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @HCLGE_TQP_RESET_TRY_TIMES, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %68 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 (i32*, i8*, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %3, align 4
  br label %88

73:                                               ; preds = %62
  %74 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @hclge_send_reset_tqp_cmd(%struct.hclge_dev* %74, i32 %75, i32 0)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %81 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %11, align 4
  %85 = call i32 (i32*, i8*, ...) @dev_err(i32* %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %79, %73
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %66, %39, %25
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hclge_covert_handle_qid_global(%struct.hnae3_handle*, i32) #1

declare dso_local i32 @hclge_tqp_enable(%struct.hclge_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @hclge_send_reset_tqp_cmd(%struct.hclge_dev*, i32, i32) #1

declare dso_local i32 @hclge_get_reset_status(%struct.hclge_dev*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
