; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_schd_mode_vnet_base_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_schd_mode_vnet_base_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { i64, i32, %struct.hclge_dev*, %struct.TYPE_6__ }
%struct.hclge_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { i64 }

@HNAE3_MAX_TC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*)* @hclge_tm_schd_mode_vnet_base_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tm_schd_mode_vnet_base_cfg(%struct.hclge_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_vport*, align 8
  %4 = alloca %struct.hnae3_knic_private_info*, align 8
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.hclge_vport* %0, %struct.hclge_vport** %3, align 8
  %9 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %10 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %11, %struct.hnae3_knic_private_info** %4, align 8
  %12 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %13 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %12, i32 0, i32 2
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %13, align 8
  store %struct.hclge_dev* %14, %struct.hclge_dev** %5, align 8
  %15 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %16 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HNAE3_MAX_TC, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %66

23:                                               ; preds = %1
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %25 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %26 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @hclge_tm_pri_schd_mode_cfg(%struct.hclge_dev* %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %66

33:                                               ; preds = %23
  store i64 0, i64* %7, align 8
  br label %34

34:                                               ; preds = %62, %33
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %4, align 8
  %37 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %42 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  %49 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %50 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %51 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %52, %53
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @hclge_tm_qs_schd_mode_cfg(%struct.hclge_dev* %49, i64 %54, i64 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %40
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %66

61:                                               ; preds = %40
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %7, align 8
  br label %34

65:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %59, %31, %20
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @hclge_tm_pri_schd_mode_cfg(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_tm_qs_schd_mode_cfg(%struct.hclge_dev*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
