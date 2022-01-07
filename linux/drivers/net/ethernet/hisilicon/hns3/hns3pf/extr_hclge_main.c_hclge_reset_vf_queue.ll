; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_vf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset_vf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { i32, %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Send reset tqp cmd fail, ret = %d\0A\00", align 1
@HCLGE_TQP_RESET_TRY_TIMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Reset TQP fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Deassert the soft reset fail, ret = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hclge_reset_vf_queue(%struct.hclge_vport* %0, i32 %1) #0 {
  %3 = alloca %struct.hclge_vport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %11 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %10, i32 0, i32 1
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  store %struct.hclge_dev* %12, %struct.hclge_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %14 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %13, i32 0, i32 0
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @hclge_covert_handle_qid_global(i32* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @hclge_send_reset_tqp_cmd(%struct.hclge_dev* %17, i32 %18, i32 1)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %24 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i32*, i8*, ...) @dev_warn(i32* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %67

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %42, %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @HCLGE_TQP_RESET_TRY_TIMES, align 4
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @hclge_get_reset_status(%struct.hclge_dev* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %44

42:                                               ; preds = %35
  %43 = call i32 @usleep_range(i32 1000, i32 1200)
  br label %30

44:                                               ; preds = %41, %30
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @HCLGE_TQP_RESET_TRY_TIMES, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %50 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 (i32*, i8*, ...) @dev_warn(i32* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %67

54:                                               ; preds = %44
  %55 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @hclge_send_reset_tqp_cmd(%struct.hclge_dev* %55, i32 %56, i32 0)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %62 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %9, align 4
  %66 = call i32 (i32*, i8*, ...) @dev_warn(i32* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %22, %48, %60, %54
  ret void
}

declare dso_local i32 @hclge_covert_handle_qid_global(i32*, i32) #1

declare dso_local i32 @hclge_send_reset_tqp_cmd(%struct.hclge_dev*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @hclge_get_reset_status(%struct.hclge_dev*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
