; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_debugfs.c_hns3_dbg_queue_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_debugfs.c_hns3_dbg_queue_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_7__, %struct.hns3_nic_priv* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.hnae3_handle*, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.hns3_nic_priv = type { %struct.hns3_nic_ring_data* }
%struct.hns3_nic_ring_data = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"map info for queue id and vector id\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"local queue id | global queue id | vector id\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"      %4d            %4d            %4d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*)* @hns3_dbg_queue_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_dbg_queue_map(%struct.hnae3_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.hns3_nic_priv*, align 8
  %5 = alloca %struct.hns3_nic_ring_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  %8 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %9 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %8, i32 0, i32 3
  %10 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %9, align 8
  store %struct.hns3_nic_priv* %10, %struct.hns3_nic_priv** %4, align 8
  %11 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %12 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.hnae3_handle*, i32)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %91

22:                                               ; preds = %1
  %23 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %24 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_info(i32* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %29 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = call i32 (i32*, i8*, ...) @dev_info(i32* %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %87, %22
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %36 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %90

40:                                               ; preds = %33
  %41 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %42 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %46, align 8
  %48 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 %47(%struct.hnae3_handle* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %52 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %51, i32 0, i32 0
  %53 = load %struct.hns3_nic_ring_data*, %struct.hns3_nic_ring_data** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.hns3_nic_ring_data, %struct.hns3_nic_ring_data* %53, i64 %55
  store %struct.hns3_nic_ring_data* %56, %struct.hns3_nic_ring_data** %5, align 8
  %57 = load %struct.hns3_nic_ring_data*, %struct.hns3_nic_ring_data** %5, align 8
  %58 = icmp ne %struct.hns3_nic_ring_data* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %40
  %60 = load %struct.hns3_nic_ring_data*, %struct.hns3_nic_ring_data** %5, align 8
  %61 = getelementptr inbounds %struct.hns3_nic_ring_data, %struct.hns3_nic_ring_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = icmp ne %struct.TYPE_12__* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.hns3_nic_ring_data*, %struct.hns3_nic_ring_data** %5, align 8
  %66 = getelementptr inbounds %struct.hns3_nic_ring_data, %struct.hns3_nic_ring_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = icmp ne %struct.TYPE_11__* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %64, %59, %40
  br label %87

72:                                               ; preds = %64
  %73 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %74 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.hns3_nic_ring_data*, %struct.hns3_nic_ring_data** %5, align 8
  %80 = getelementptr inbounds %struct.hns3_nic_ring_data, %struct.hns3_nic_ring_data* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32*, i8*, ...) @dev_info(i32* %76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %78, i32 %85)
  br label %87

87:                                               ; preds = %72, %71
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %33

90:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %19
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
