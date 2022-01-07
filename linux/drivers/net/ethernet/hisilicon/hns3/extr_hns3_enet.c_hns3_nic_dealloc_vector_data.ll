; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_dealloc_vector_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_dealloc_vector_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_nic_priv = type { i32, %struct.hns3_enet_tqp_vector*, %struct.hnae3_handle* }
%struct.hns3_enet_tqp_vector = type { i32 }
%struct.hnae3_handle = type { %struct.TYPE_4__*, %struct.pci_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hnae3_handle*, i32)* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_nic_priv*)* @hns3_nic_dealloc_vector_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_nic_dealloc_vector_data(%struct.hns3_nic_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns3_nic_priv*, align 8
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hns3_enet_tqp_vector*, align 8
  store %struct.hns3_nic_priv* %0, %struct.hns3_nic_priv** %3, align 8
  %9 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %10 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %9, i32 0, i32 2
  %11 = load %struct.hnae3_handle*, %struct.hnae3_handle** %10, align 8
  store %struct.hnae3_handle* %11, %struct.hnae3_handle** %4, align 8
  %12 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %13 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %12, i32 0, i32 1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %45, %1
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %18 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %23 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %22, i32 0, i32 1
  %24 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %24, i64 %26
  store %struct.hns3_enet_tqp_vector* %27, %struct.hns3_enet_tqp_vector** %8, align 8
  %28 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %29 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %33, align 8
  %35 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %36 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %8, align 8
  %37 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %34(%struct.hnae3_handle* %35, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %21
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %55

44:                                               ; preds = %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %15

48:                                               ; preds = %15
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %52 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %51, i32 0, i32 1
  %53 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %52, align 8
  %54 = call i32 @devm_kfree(i32* %50, %struct.hns3_enet_tqp_vector* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %48, %42
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @devm_kfree(i32*, %struct.hns3_enet_tqp_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
