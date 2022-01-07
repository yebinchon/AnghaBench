; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_roce_base_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_roce_base_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.TYPE_8__*, %struct.hnae3_handle, %struct.hnae3_handle }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.hnae3_handle = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*)* @hclge_init_roce_base_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_init_roce_base_info(%struct.hclge_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_vport*, align 8
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.hnae3_handle*, align 8
  store %struct.hclge_vport* %0, %struct.hclge_vport** %3, align 8
  %6 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %7 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %6, i32 0, i32 1
  store %struct.hnae3_handle* %7, %struct.hnae3_handle** %4, align 8
  %8 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %9 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %8, i32 0, i32 2
  store %struct.hnae3_handle* %9, %struct.hnae3_handle** %5, align 8
  %10 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %11 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %16 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %19 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %24 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %22, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %1
  %30 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %31 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %1
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %79

39:                                               ; preds = %29
  %40 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %41 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %46 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 8
  %48 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %49 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %53 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %56 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %62 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 8
  %64 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %65 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %68 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %70 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %73 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %75 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %78 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %39, %36
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
