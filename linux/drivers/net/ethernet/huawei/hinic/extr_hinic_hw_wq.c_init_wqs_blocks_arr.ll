; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_init_wqs_blocks_arr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_init_wqs_blocks_arr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_wqs = type { i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@WQS_BLOCKS_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_wqs*)* @init_wqs_blocks_arr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_wqs_blocks_arr(%struct.hinic_wqs* %0) #0 {
  %2 = alloca %struct.hinic_wqs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hinic_wqs* %0, %struct.hinic_wqs** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %40, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %9 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %6
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %36, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @WQS_BLOCKS_PER_PAGE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %20 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %19, i32 0, i32 5
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %18, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %28 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %27, i32 0, i32 5
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %26, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %13

39:                                               ; preds = %13
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %6

43:                                               ; preds = %6
  %44 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %45 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %48 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %51 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.hinic_wqs*, %struct.hinic_wqs** %2, align 8
  %53 = getelementptr inbounds %struct.hinic_wqs, %struct.hinic_wqs* %52, i32 0, i32 3
  %54 = call i32 @sema_init(i32* %53, i32 1)
  ret void
}

declare dso_local i32 @sema_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
