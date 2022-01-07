; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pri_vnet_base_dwrr_pri_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pri_vnet_base_dwrr_pri_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { i64, i32, i32, %struct.hclge_dev*, %struct.TYPE_6__ }
%struct.hclge_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*)* @hclge_tm_pri_vnet_base_dwrr_pri_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tm_pri_vnet_base_dwrr_pri_cfg(%struct.hclge_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_vport*, align 8
  %4 = alloca %struct.hnae3_knic_private_info*, align 8
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hclge_vport* %0, %struct.hclge_vport** %3, align 8
  %8 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %9 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %10, %struct.hnae3_knic_private_info** %4, align 8
  %11 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %12 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %11, i32 0, i32 3
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  store %struct.hclge_dev* %13, %struct.hclge_dev** %5, align 8
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %15 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %16 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %19 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @hclge_tm_pri_weight_cfg(%struct.hclge_dev* %14, i32 %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %60

26:                                               ; preds = %1
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %56, %26
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %4, align 8
  %30 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %27
  %34 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %35 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %36 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %41 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @hclge_tm_qs_weight_cfg(%struct.hclge_dev* %34, i64 %39, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %33
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %60

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %27

59:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %53, %24
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @hclge_tm_pri_weight_cfg(%struct.hclge_dev*, i32, i32) #1

declare dso_local i32 @hclge_tm_qs_weight_cfg(%struct.hclge_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
