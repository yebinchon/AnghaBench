; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_dcb_ops_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_dcb.c_hclge_dcb_ops_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.hclge_vport* }
%struct.hclge_vport = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { i32* }

@hns3_dcb_ops = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_VER_IEEE = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hclge_dcb_ops_set(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hclge_vport*, align 8
  %4 = alloca %struct.hnae3_knic_private_info*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %5 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %5, i32 0, i32 1
  %7 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  store %struct.hclge_vport* %7, %struct.hclge_vport** %3, align 8
  %8 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %9 = call i32 @hnae3_dev_dcb_supported(%struct.hclge_dev* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %13 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  br label %28

17:                                               ; preds = %11
  %18 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %19 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %20, %struct.hnae3_knic_private_info** %4, align 8
  %21 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %4, align 8
  %22 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %21, i32 0, i32 0
  store i32* @hns3_dcb_ops, i32** %22, align 8
  %23 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %24 = load i32, i32* @DCB_CAP_DCBX_HOST, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @hnae3_dev_dcb_supported(%struct.hclge_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
