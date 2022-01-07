; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_init_roce_base_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_init_roce_base_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i64, i64, %struct.TYPE_6__, i32, %struct.hnae3_handle, %struct.hnae3_handle }
%struct.TYPE_6__ = type { i32 }
%struct.hnae3_handle = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_init_roce_base_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_init_roce_base_info(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.hnae3_handle*, align 8
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %6 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %6, i32 0, i32 5
  store %struct.hnae3_handle* %7, %struct.hnae3_handle** %4, align 8
  %8 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %8, i32 0, i32 4
  store %struct.hnae3_handle* %9, %struct.hnae3_handle** %5, align 8
  %10 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %14 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %17 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %20 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %18, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %26 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %68

32:                                               ; preds = %24
  %33 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %34 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %37 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 8
  %39 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %40 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %44 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %47 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %51 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %54 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %57 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %59 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %62 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %64 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %67 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %32, %29
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
