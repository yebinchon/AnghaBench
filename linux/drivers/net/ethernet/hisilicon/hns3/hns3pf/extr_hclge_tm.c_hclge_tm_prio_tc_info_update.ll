; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_prio_tc_info_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_prio_tc_info_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i64, %struct.TYPE_3__, %struct.hclge_vport* }
%struct.TYPE_3__ = type { i8** }
%struct.hclge_vport = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { i8** }

@HNAE3_MAX_USER_PRIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hclge_tm_prio_tc_info_update(%struct.hclge_dev* %0, i8** %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.hclge_vport*, align 8
  %6 = alloca %struct.hnae3_knic_private_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 2
  %11 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  store %struct.hclge_vport* %11, %struct.hclge_vport** %5, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %52, %2
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @HNAE3_MAX_USER_PRIO, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  %17 = load i8**, i8*** %4, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  store i8* %20, i8** %26, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %48, %16
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %30 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %34, i64 %35
  %37 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store %struct.hnae3_knic_private_info* %38, %struct.hnae3_knic_private_info** %6, align 8
  %39 = load i8**, i8*** %4, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.hnae3_knic_private_info*, %struct.hnae3_knic_private_info** %6, align 8
  %44 = getelementptr inbounds %struct.hnae3_knic_private_info, %struct.hnae3_knic_private_info* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  store i8* %42, i8** %47, align 8
  br label %48

48:                                               ; preds = %33
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %8, align 8
  br label %27

51:                                               ; preds = %27
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %12

55:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
