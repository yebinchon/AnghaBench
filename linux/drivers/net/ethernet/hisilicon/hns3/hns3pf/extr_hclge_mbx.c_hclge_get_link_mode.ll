; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_get_link_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_get_link_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i64* }
%struct.hclge_mbx_vf_to_pf_cmd = type { i64, i64* }

@HCLGE_MBX_LINK_STAT_MODE = common dso_local global i32 0, align 4
@HCLGE_SUPPORTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*)* @hclge_get_link_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_get_link_mode(%struct.hclge_vport* %0, %struct.hclge_mbx_vf_to_pf_cmd* %1) #0 {
  %3 = alloca %struct.hclge_vport*, align 8
  %4 = alloca %struct.hclge_mbx_vf_to_pf_cmd*, align 8
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [10 x i64], align 16
  %10 = alloca i64, align 8
  store %struct.hclge_vport* %0, %struct.hclge_vport** %3, align 8
  store %struct.hclge_mbx_vf_to_pf_cmd* %1, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %11 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %12 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %11, i32 0, i32 0
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  store %struct.hclge_dev* %13, %struct.hclge_dev** %5, align 8
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %15 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i64 0, i64 0
  store i64 %35, i64* %36, align 16
  %37 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i64 0, i64 0
  %38 = load i64, i64* %37, align 16
  %39 = icmp eq i64 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i64, i64* %7, align 8
  br label %44

42:                                               ; preds = %2
  %43 = load i64, i64* %6, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  store i64 %45, i64* %8, align 8
  %46 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i64 0, i64 2
  %47 = call i32 @memcpy(i64* %46, i64* %8, i32 8)
  %48 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %49 = getelementptr inbounds [10 x i64], [10 x i64]* %9, i64 0, i64 0
  %50 = load i32, i32* @HCLGE_MBX_LINK_STAT_MODE, align 4
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @hclge_send_mbx_msg(%struct.hclge_vport* %48, i64* %49, i32 80, i32 %50, i64 %51)
  ret void
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @hclge_send_mbx_msg(%struct.hclge_vport*, i64*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
