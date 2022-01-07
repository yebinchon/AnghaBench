; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_alloc_vport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_alloc_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, i32, i32, i32, i32, %struct.hclge_vport*, %struct.pci_dev* }
%struct.hclge_vport = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, %struct.hclge_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"tqps(%d) is less than vports(%d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_PCI_IOV = common dso_local global i32 0, align 4
@HCLGE_MAC_DEFAULT_FRAME = common dso_local global i32 0, align 4
@HNAE3_PORT_BASE_VLAN_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"vport setup failed for vport %d, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_alloc_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_alloc_vport(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.hclge_vport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %11, i32 0, i32 6
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %28, i32 0, i32 6
  %30 = load %struct.pci_dev*, %struct.pci_dev** %29, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %33 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %136

39:                                               ; preds = %1
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %47 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = srem i32 %48, %49
  %51 = add nsw i32 %45, %50
  store i32 %51, i32* %6, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.hclge_vport* @devm_kcalloc(i32* %53, i32 %54, i32 40, i32 %55)
  store %struct.hclge_vport* %56, %struct.hclge_vport** %5, align 8
  %57 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %58 = icmp ne %struct.hclge_vport* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %39
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %136

62:                                               ; preds = %39
  %63 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %64 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %65 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %64, i32 0, i32 5
  store %struct.hclge_vport* %63, %struct.hclge_vport** %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %68 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @CONFIG_PCI_IOV, align 4
  %70 = call i64 @IS_ENABLED(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %62
  %73 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %74 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %77 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %72, %62
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %132, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %135

83:                                               ; preds = %79
  %84 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %85 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %86 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %85, i32 0, i32 7
  store %struct.hclge_dev* %84, %struct.hclge_dev** %86, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %89 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @HCLGE_MAC_DEFAULT_FRAME, align 4
  %91 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %92 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @HNAE3_PORT_BASE_VLAN_DISABLE, align 4
  %94 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %95 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %98 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %101 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %100, i32 0, i32 3
  %102 = call i32 @INIT_LIST_HEAD(i32* %101)
  %103 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %104 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %103, i32 0, i32 2
  %105 = call i32 @INIT_LIST_HEAD(i32* %104)
  %106 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %107 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %106, i32 0, i32 1
  %108 = call i32 @INIT_LIST_HEAD(i32* %107)
  %109 = load i32, i32* %9, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %83
  %112 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @hclge_vport_setup(%struct.hclge_vport* %112, i32 %113)
  store i32 %114, i32* %10, align 4
  br label %119

115:                                              ; preds = %83
  %116 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @hclge_vport_setup(%struct.hclge_vport* %116, i32 %117)
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %115, %111
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @dev_err(i32* %124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %2, align 4
  br label %136

129:                                              ; preds = %119
  %130 = load %struct.hclge_vport*, %struct.hclge_vport** %5, align 8
  %131 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %130, i32 1
  store %struct.hclge_vport* %131, %struct.hclge_vport** %5, align 8
  br label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %79

135:                                              ; preds = %79
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %122, %59, %27
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local %struct.hclge_vport* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hclge_vport_setup(%struct.hclge_vport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
