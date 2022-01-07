; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_get_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.hnae3_ae_ops* }
%struct.hnae3_ae_ops = type { i32 (%struct.hnae3_handle*, i32*, i32*)*, i32 (%struct.hnae3_handle*, i32, i32)*, i32 (%struct.hnae3_handle*, i32*, i32*, i32*)* }
%struct.ethtool_link_ksettings = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, %struct.ethtool_link_ksettings*)* @hns3_get_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_get_ksettings(%struct.hnae3_handle* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.hnae3_ae_ops*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %6 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %7 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %9, align 8
  store %struct.hnae3_ae_ops* %10, %struct.hnae3_ae_ops** %5, align 8
  %11 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %12 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %11, i32 0, i32 2
  %13 = load i32 (%struct.hnae3_handle*, i32*, i32*, i32*)*, i32 (%struct.hnae3_handle*, i32*, i32*, i32*)** %12, align 8
  %14 = icmp ne i32 (%struct.hnae3_handle*, i32*, i32*, i32*)* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %17 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %16, i32 0, i32 2
  %18 = load i32 (%struct.hnae3_handle*, i32*, i32*, i32*)*, i32 (%struct.hnae3_handle*, i32*, i32*, i32*)** %17, align 8
  %19 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 4
  %23 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = call i32 %18(%struct.hnae3_handle* %19, i32* %22, i32* %25, i32* %28)
  br label %30

30:                                               ; preds = %15, %2
  %31 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %32 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %31, i32 0, i32 1
  %33 = load i32 (%struct.hnae3_handle*, i32, i32)*, i32 (%struct.hnae3_handle*, i32, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.hnae3_handle*, i32, i32)* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %37 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %36, i32 0, i32 1
  %38 = load i32 (%struct.hnae3_handle*, i32, i32)*, i32 (%struct.hnae3_handle*, i32, i32)** %37, align 8
  %39 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %40 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %38(%struct.hnae3_handle* %39, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %35, %30
  %50 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %51 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %50, i32 0, i32 0
  %52 = load i32 (%struct.hnae3_handle*, i32*, i32*)*, i32 (%struct.hnae3_handle*, i32*, i32*)** %51, align 8
  %53 = icmp ne i32 (%struct.hnae3_handle*, i32*, i32*)* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %56 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %55, i32 0, i32 0
  %57 = load i32 (%struct.hnae3_handle*, i32*, i32*)*, i32 (%struct.hnae3_handle*, i32*, i32*)** %56, align 8
  %58 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %59 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %63 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i32 %57(%struct.hnae3_handle* %58, i32* %61, i32* %64)
  br label %66

66:                                               ; preds = %54, %49
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
