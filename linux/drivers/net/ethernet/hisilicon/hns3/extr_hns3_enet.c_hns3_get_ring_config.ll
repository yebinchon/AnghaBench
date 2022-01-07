; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_get_ring_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_get_ring_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_nic_priv = type { %struct.TYPE_5__*, i32*, %struct.hnae3_handle* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.hnae3_handle = type { %struct.TYPE_4__, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_nic_priv*)* @hns3_get_ring_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_get_ring_config(%struct.hns3_nic_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns3_nic_priv*, align 8
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hns3_nic_priv* %0, %struct.hns3_nic_priv** %3, align 8
  %8 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %9 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %8, i32 0, i32 2
  %10 = load %struct.hnae3_handle*, %struct.hnae3_handle** %9, align 8
  store %struct.hnae3_handle* %10, %struct.hnae3_handle** %4, align 8
  %11 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %12 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %11, i32 0, i32 1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %17 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @array3_size(i32 %19, i32 8, i32 2)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.TYPE_5__* @devm_kzalloc(i32* %15, i32 %20, i32 %21)
  %23 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %24 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %23, i32 0, i32 0
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %24, align 8
  %25 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %26 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %104

32:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %55, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %36 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %33
  %41 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %42 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %50 = call i32 @hns3_queue_to_ring(i32 %48, %struct.hns3_nic_priv* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %59

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %33

58:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %104

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %64, %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %6, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %60
  %65 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %66 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %69 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = call i32 @devm_kfree(i32* %67, %struct.TYPE_5__* %75)
  %77 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %78 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %81 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %85 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %83, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = call i32 @devm_kfree(i32* %79, %struct.TYPE_5__* %92)
  br label %60

94:                                               ; preds = %60
  %95 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 0
  %97 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %98 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = call i32 @devm_kfree(i32* %96, %struct.TYPE_5__* %99)
  %101 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %102 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %101, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %102, align 8
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %94, %58, %29
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.TYPE_5__* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @array3_size(i32, i32, i32) #1

declare dso_local i32 @hns3_queue_to_ring(i32, %struct.hns3_nic_priv*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
