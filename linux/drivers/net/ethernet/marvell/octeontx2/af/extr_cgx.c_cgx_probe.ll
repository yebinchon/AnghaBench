; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.cgx = type { i32, i32, i32, i32, i32, %struct.pci_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to enable PCI device\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"PCI request regions failed 0x%x\0A\00", align 1
@PCI_CFG_REG_BAR_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"CGX: Cannot map CSR memory space, aborting\0A\00", align 1
@CGX_NVEC = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Request for %d msix vectors failed, err %d\0A\00", align 1
@CGX_ID_MASK = common dso_local global i32 0, align 4
@cgx_lmac_linkup_work = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"cgx_cmd_workq\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"alloc workqueue failed for cgx cmd\00", align 1
@cgx_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cgx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgx_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.cgx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cgx* @devm_kzalloc(%struct.device* %12, i32 32, i32 %13)
  store %struct.cgx* %14, %struct.cgx** %7, align 8
  %15 = load %struct.cgx*, %struct.cgx** %7, align 8
  %16 = icmp ne %struct.cgx* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %134

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = load %struct.cgx*, %struct.cgx** %7, align 8
  %23 = getelementptr inbounds %struct.cgx, %struct.cgx* %22, i32 0, i32 5
  store %struct.pci_dev* %21, %struct.pci_dev** %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = load %struct.cgx*, %struct.cgx** %7, align 8
  %26 = call i32 @pci_set_drvdata(%struct.pci_dev* %24, %struct.cgx* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i32 @pci_enable_device(%struct.pci_dev* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i32 @pci_set_drvdata(%struct.pci_dev* %34, %struct.cgx* null)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %134

37:                                               ; preds = %20
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load i32, i32* @DRV_NAME, align 4
  %40 = call i32 @pci_request_regions(%struct.pci_dev* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %128

47:                                               ; preds = %37
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = load i32, i32* @PCI_CFG_REG_BAR_NUM, align 4
  %50 = call i32 @pcim_iomap(%struct.pci_dev* %48, i32 %49, i32 0)
  %51 = load %struct.cgx*, %struct.cgx** %7, align 8
  %52 = getelementptr inbounds %struct.cgx, %struct.cgx* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.cgx*, %struct.cgx** %7, align 8
  %54 = getelementptr inbounds %struct.cgx, %struct.cgx* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %47
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %125

62:                                               ; preds = %47
  %63 = load i32, i32* @CGX_NVEC, align 4
  store i32 %63, i32* %9, align 4
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %68 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %64, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71, %62
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %78)
  br label %125

80:                                               ; preds = %71
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = load i32, i32* @PCI_CFG_REG_BAR_NUM, align 4
  %83 = call i32 @pci_resource_start(%struct.pci_dev* %81, i32 %82)
  %84 = ashr i32 %83, 24
  %85 = load i32, i32* @CGX_ID_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load %struct.cgx*, %struct.cgx** %7, align 8
  %88 = getelementptr inbounds %struct.cgx, %struct.cgx* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.cgx*, %struct.cgx** %7, align 8
  %90 = getelementptr inbounds %struct.cgx, %struct.cgx* %89, i32 0, i32 3
  %91 = load i32, i32* @cgx_lmac_linkup_work, align 4
  %92 = call i32 @INIT_WORK(i32* %90, i32 %91)
  %93 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  %94 = load %struct.cgx*, %struct.cgx** %7, align 8
  %95 = getelementptr inbounds %struct.cgx, %struct.cgx* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.cgx*, %struct.cgx** %7, align 8
  %97 = getelementptr inbounds %struct.cgx, %struct.cgx* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %80
  %101 = load %struct.device*, %struct.device** %6, align 8
  %102 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %8, align 4
  br label %122

105:                                              ; preds = %80
  %106 = load %struct.cgx*, %struct.cgx** %7, align 8
  %107 = getelementptr inbounds %struct.cgx, %struct.cgx* %106, i32 0, i32 1
  %108 = call i32 @list_add(i32* %107, i32* @cgx_list)
  %109 = call i32 (...) @cgx_link_usertable_init()
  %110 = load %struct.cgx*, %struct.cgx** %7, align 8
  %111 = call i32 @cgx_lmac_init(%struct.cgx* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %116

115:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %134

116:                                              ; preds = %114
  %117 = load %struct.cgx*, %struct.cgx** %7, align 8
  %118 = call i32 @cgx_lmac_exit(%struct.cgx* %117)
  %119 = load %struct.cgx*, %struct.cgx** %7, align 8
  %120 = getelementptr inbounds %struct.cgx, %struct.cgx* %119, i32 0, i32 1
  %121 = call i32 @list_del(i32* %120)
  br label %122

122:                                              ; preds = %116, %100
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %123)
  br label %125

125:                                              ; preds = %122, %75, %57
  %126 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %127 = call i32 @pci_release_regions(%struct.pci_dev* %126)
  br label %128

128:                                              ; preds = %125, %43
  %129 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %130 = call i32 @pci_disable_device(%struct.pci_dev* %129)
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = call i32 @pci_set_drvdata(%struct.pci_dev* %131, %struct.cgx* null)
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %128, %115, %31, %17
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.cgx* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.cgx*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @cgx_link_usertable_init(...) #1

declare dso_local i32 @cgx_lmac_init(%struct.cgx*) #1

declare dso_local i32 @cgx_lmac_exit(%struct.cgx*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
