; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_hinic_wqs_cmdq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_hinic_wqs_cmdq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_cmdq_pages = type { i32 }
%struct.hinic_wq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hinic_wqs_cmdq_free(%struct.hinic_cmdq_pages* %0, %struct.hinic_wq* %1, i32 %2) #0 {
  %4 = alloca %struct.hinic_cmdq_pages*, align 8
  %5 = alloca %struct.hinic_wq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hinic_cmdq_pages* %0, %struct.hinic_cmdq_pages** %4, align 8
  store %struct.hinic_wq* %1, %struct.hinic_wq** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %27, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %13, i64 %15
  %17 = load %struct.hinic_cmdq_pages*, %struct.hinic_cmdq_pages** %4, align 8
  %18 = getelementptr inbounds %struct.hinic_cmdq_pages, %struct.hinic_cmdq_pages* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %20, i64 %22
  %24 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @free_wq_pages(%struct.hinic_wq* %16, i32 %19, i32 %25)
  br label %27

27:                                               ; preds = %12
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %8

30:                                               ; preds = %8
  %31 = load %struct.hinic_cmdq_pages*, %struct.hinic_cmdq_pages** %4, align 8
  %32 = call i32 @cmdq_free_page(%struct.hinic_cmdq_pages* %31)
  ret void
}

declare dso_local i32 @free_wq_pages(%struct.hinic_wq*, i32, i32) #1

declare dso_local i32 @cmdq_free_page(%struct.hinic_cmdq_pages*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
