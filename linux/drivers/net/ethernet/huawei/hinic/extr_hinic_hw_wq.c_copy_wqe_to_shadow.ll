; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_copy_wqe_to_shadow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_copy_wqe_to_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_wq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_wq*, i8*, i32, i32)* @copy_wqe_to_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_wqe_to_shadow(%struct.hinic_wq* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hinic_wq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.hinic_wq* %0, %struct.hinic_wq** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %39, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @MASKED_WQE_IDX(%struct.hinic_wq* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i8* @WQ_PAGE_ADDR(%struct.hinic_wq* %19, i32 %20)
  %22 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @WQE_PAGE_OFF(%struct.hinic_wq* %22, i32 %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, i8* %21, i64 %25
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %30 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i8* %27, i8* %28, i32 %31)
  %33 = load %struct.hinic_wq*, %struct.hinic_wq** %5, align 8
  %34 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr i8, i8* %36, i64 %37
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %15
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %11

44:                                               ; preds = %11
  ret void
}

declare dso_local i32 @MASKED_WQE_IDX(%struct.hinic_wq*, i32) #1

declare dso_local i8* @WQ_PAGE_ADDR(%struct.hinic_wq*, i32) #1

declare dso_local i32 @WQE_PAGE_OFF(%struct.hinic_wq*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
