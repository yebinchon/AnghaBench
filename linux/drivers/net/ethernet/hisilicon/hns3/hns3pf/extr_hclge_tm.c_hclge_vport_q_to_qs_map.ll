; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_vport_q_to_qs_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_vport_q_to_qs_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32 }
%struct.hclge_vport = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { i64, %struct.hnae3_tc_info*, %struct.hnae3_queue** }
%struct.hnae3_tc_info = type { i64, i64 }
%struct.hnae3_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_vport*)* @hclge_vport_q_to_qs_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_vport_q_to_qs_map(%struct.hclge_dev* %0, %struct.hclge_vport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca %struct.hclge_vport*, align 8
  %6 = alloca %struct.hnae3_knic_private_info*, align 8
  %7 = alloca %struct.hnae3_queue**, align 8
  %8 = alloca %struct.hnae3_tc_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hnae3_queue*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store %struct.hclge_vport* %1, %struct.hclge_vport** %5, align 8
  %13 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %14 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %15, %struct.hnae3_knic_private_info** %6, align 8
  %16 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %6, align 8
  %17 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %16, i32 0, i32 2
  %18 = load %struct.hnae3_queue**, %struct.hnae3_queue*** %17, align 8
  store %struct.hnae3_queue** %18, %struct.hnae3_queue*** %7, align 8
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %64, %2
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %6, align 8
  %22 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %19
  %26 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %6, align 8
  %27 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %26, i32 0, i32 1
  %28 = load %struct.hnae3_tc_info*, %struct.hnae3_tc_info** %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.hnae3_tc_info, %struct.hnae3_tc_info* %28, i64 %29
  store %struct.hnae3_tc_info* %30, %struct.hnae3_tc_info** %8, align 8
  store i64 0, i64* %10, align 8
  br label %31

31:                                               ; preds = %60, %25
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.hnae3_tc_info*, %struct.hnae3_tc_info** %8, align 8
  %34 = getelementptr inbounds %struct.hnae3_tc_info, %struct.hnae3_tc_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %31
  %38 = load %struct.hnae3_queue**, %struct.hnae3_queue*** %7, align 8
  %39 = load %struct.hnae3_tc_info*, %struct.hnae3_tc_info** %8, align 8
  %40 = getelementptr inbounds %struct.hnae3_tc_info, %struct.hnae3_tc_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %41, %42
  %44 = getelementptr inbounds %struct.hnae3_queue*, %struct.hnae3_queue** %38, i64 %43
  %45 = load %struct.hnae3_queue*, %struct.hnae3_queue** %44, align 8
  store %struct.hnae3_queue* %45, %struct.hnae3_queue** %12, align 8
  %46 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %47 = load %struct.hnae3_queue*, %struct.hnae3_queue** %12, align 8
  %48 = call i32 @hclge_get_queue_id(%struct.hnae3_queue* %47)
  %49 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %50 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %51, %52
  %54 = call i32 @hclge_tm_q_to_qs_map_cfg(%struct.hclge_dev* %46, i32 %48, i64 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %37
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %3, align 4
  br label %68

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %31

63:                                               ; preds = %31
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %19

67:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %57
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @hclge_tm_q_to_qs_map_cfg(%struct.hclge_dev*, i32, i64) #1

declare dso_local i32 @hclge_get_queue_id(%struct.hnae3_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
