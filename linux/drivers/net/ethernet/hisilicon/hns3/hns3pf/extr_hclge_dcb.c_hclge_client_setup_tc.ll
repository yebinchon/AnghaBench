; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_client_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_client_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i64, %struct.TYPE_4__, %struct.hclge_vport* }
%struct.TYPE_4__ = type { i32 }
%struct.hclge_vport = type { %struct.hnae3_handle }
%struct.hnae3_handle = type { %struct.hnae3_client* }
%struct.hnae3_client = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hnae3_handle*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_client_setup_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_client_setup_tc(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_vport*, align 8
  %5 = alloca %struct.hnae3_client*, align 8
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 2
  %11 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  store %struct.hclge_vport* %11, %struct.hclge_vport** %4, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %59, %1
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, 1
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %12
  %20 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %20, i64 %21
  %23 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %22, i32 0, i32 0
  store %struct.hnae3_handle* %23, %struct.hnae3_handle** %6, align 8
  %24 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %25 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %24, i32 0, i32 0
  %26 = load %struct.hnae3_client*, %struct.hnae3_client** %25, align 8
  store %struct.hnae3_client* %26, %struct.hnae3_client** %5, align 8
  %27 = load %struct.hnae3_client*, %struct.hnae3_client** %5, align 8
  %28 = icmp ne %struct.hnae3_client* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %19
  %30 = load %struct.hnae3_client*, %struct.hnae3_client** %5, align 8
  %31 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.hnae3_client*, %struct.hnae3_client** %5, align 8
  %36 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.hnae3_handle*, i32)* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34, %29, %19
  br label %59

42:                                               ; preds = %34
  %43 = load %struct.hnae3_client*, %struct.hnae3_client** %5, align 8
  %44 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %46, align 8
  %48 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %49 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %50 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %47(%struct.hnae3_handle* %48, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %63

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %8, align 8
  br label %12

62:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
