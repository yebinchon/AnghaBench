; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_rss_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_rss_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_vport*)* @hclge_get_rss_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_get_rss_type(%struct.hclge_vport* %0) #0 {
  %2 = alloca %struct.hclge_vport*, align 8
  store %struct.hclge_vport* %0, %struct.hclge_vport** %2, align 8
  %3 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %4 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 7
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %1
  %9 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %10 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %8
  %15 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %16 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  %21 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %22 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %28 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %34 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32, %26, %20, %14, %8, %1
  %39 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  %40 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %41 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  br label %69

44:                                               ; preds = %32
  %45 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %46 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %52 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50, %44
  %57 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  %58 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %59 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  br label %68

62:                                               ; preds = %50
  %63 = load i32, i32* @PKT_HASH_TYPE_NONE, align 4
  %64 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %65 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  br label %68

68:                                               ; preds = %62, %56
  br label %69

69:                                               ; preds = %68, %38
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
