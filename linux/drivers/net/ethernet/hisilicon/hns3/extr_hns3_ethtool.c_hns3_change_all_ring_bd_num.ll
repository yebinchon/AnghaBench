; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_change_all_ring_bd_num.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_change_all_ring_bd_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_nic_priv = type { %struct.TYPE_5__*, %struct.hnae3_handle* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.hnae3_handle = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_nic_priv*, i8*, i8*)* @hns3_change_all_ring_bd_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_change_all_ring_bd_num(%struct.hns3_nic_priv* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.hns3_nic_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hnae3_handle*, align 8
  %8 = alloca i32, align 4
  store %struct.hns3_nic_priv* %0, %struct.hns3_nic_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %10 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %9, i32 0, i32 1
  %11 = load %struct.hnae3_handle*, %struct.hnae3_handle** %10, align 8
  store %struct.hnae3_handle* %11, %struct.hnae3_handle** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %14 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i8* %12, i8** %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %18 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i8* %16, i8** %19, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %53, %3
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %23 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %30 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i8* %28, i8** %37, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %4, align 8
  %40 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.hnae3_handle*, %struct.hnae3_handle** %7, align 8
  %44 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %42, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i8* %38, i8** %52, align 8
  br label %53

53:                                               ; preds = %27
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %20

56:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
