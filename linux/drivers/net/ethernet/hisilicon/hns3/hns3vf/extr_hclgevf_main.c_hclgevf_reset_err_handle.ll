; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset_err_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset_err_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed to reset VF(%d)\0A\00", align 1
@HCLGEVF_RESET_MAX_FAIL_CNT = common dso_local global i64 0, align 8
@HCLGEVF_RESET_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclgevf_dev*)* @hclgevf_reset_err_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_reset_err_handle(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca %struct.hclgevf_dev*, align 8
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %2, align 8
  %3 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %4 = call i32 @hclgevf_reset_handshake(%struct.hclgevf_dev* %3, i32 1)
  %5 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %7, align 8
  %10 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %11 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %15 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %20 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HCLGEVF_RESET_MAX_FAIL_CNT, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %27 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %30 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %29, i32 0, i32 1
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %25, %1
  %33 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %34 = call i64 @hclgevf_is_reset_pending(%struct.hclgevf_dev* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* @HCLGEVF_RESET_PENDING, align 4
  %38 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %39 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %38, i32 0, i32 0
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %42 = call i32 @hclgevf_reset_task_schedule(%struct.hclgevf_dev* %41)
  br label %43

43:                                               ; preds = %36, %32
  ret void
}

declare dso_local i32 @hclgevf_reset_handshake(%struct.hclgevf_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @hclgevf_is_reset_pending(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_reset_task_schedule(%struct.hclgevf_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
