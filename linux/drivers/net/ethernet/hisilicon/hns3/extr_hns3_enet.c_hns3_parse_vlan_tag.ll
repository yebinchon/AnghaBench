; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_parse_vlan_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_parse_vlan_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hnae3_handle* }
%struct.hnae3_handle = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hns3_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@VLAN_VID_MASK = common dso_local global i32 0, align 4
@HNS3_RXD_STRP_TAGP_M = common dso_local global i32 0, align 4
@HNS3_RXD_STRP_TAGP_S = common dso_local global i32 0, align 4
@HNAE3_PORT_BASE_VLAN_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns3_enet_ring*, %struct.hns3_desc*, i32, i32*)* @hns3_parse_vlan_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_parse_vlan_tag(%struct.hns3_enet_ring* %0, %struct.hns3_desc* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns3_enet_ring*, align 8
  %7 = alloca %struct.hns3_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hnae3_handle*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %6, align 8
  store %struct.hns3_desc* %1, %struct.hns3_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %13 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.hnae3_handle*, %struct.hnae3_handle** %15, align 8
  store %struct.hnae3_handle* %16, %struct.hnae3_handle** %10, align 8
  %17 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %18 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.hnae3_handle*, %struct.hnae3_handle** %20, align 8
  %22 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %21, i32 0, i32 1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %11, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %28, label %52

28:                                               ; preds = %4
  %29 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %30 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VLAN_VID_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %28
  %41 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %42 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %40, %28
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %107

52:                                               ; preds = %4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @HNS3_RXD_STRP_TAGP_M, align 4
  %55 = load i32, i32* @HNS3_RXD_STRP_TAGP_S, align 4
  %56 = call i32 @hnae3_get_field(i32 %53, i32 %54, i32 %55)
  switch i32 %56, label %106 [
    i32 1, label %57
    i32 2, label %71
    i32 3, label %85
  ]

57:                                               ; preds = %52
  %58 = load %struct.hnae3_handle*, %struct.hnae3_handle** %10, align 8
  %59 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @HNAE3_PORT_BASE_VLAN_DISABLE, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %107

64:                                               ; preds = %57
  %65 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %66 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  store i32 1, i32* %5, align 4
  br label %107

71:                                               ; preds = %52
  %72 = load %struct.hnae3_handle*, %struct.hnae3_handle** %10, align 8
  %73 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @HNAE3_PORT_BASE_VLAN_DISABLE, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %107

78:                                               ; preds = %71
  %79 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %80 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le16_to_cpu(i32 %82)
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  store i32 1, i32* %5, align 4
  br label %107

85:                                               ; preds = %52
  %86 = load %struct.hnae3_handle*, %struct.hnae3_handle** %10, align 8
  %87 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @HNAE3_PORT_BASE_VLAN_DISABLE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %93 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  br label %105

98:                                               ; preds = %85
  %99 = load %struct.hns3_desc*, %struct.hns3_desc** %7, align 8
  %100 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le16_to_cpu(i32 %102)
  %104 = load i32*, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %98, %91
  store i32 1, i32* %5, align 4
  br label %107

106:                                              ; preds = %52
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %105, %78, %77, %64, %63, %47
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @hnae3_get_field(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
