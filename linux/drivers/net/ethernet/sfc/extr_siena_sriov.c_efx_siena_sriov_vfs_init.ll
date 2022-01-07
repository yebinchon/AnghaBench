; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_vfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_vfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.siena_nic_data*, %struct.pci_dev* }
%struct.siena_nic_data = type { i32, %struct.siena_vf* }
%struct.siena_vf = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCI_EXT_CAP_ID_SRIOV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@PCI_SRIOV_VF_OFFSET = common dso_local global i64 0, align 8
@PCI_SRIOV_VF_STRIDE = common dso_local global i64 0, align 8
@EFX_VF_BUFTBL_PER_VI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%04x:%02x:%02x.%d\00", align 1
@EFX_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_siena_sriov_vfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_siena_sriov_vfs_init(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.siena_nic_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.siena_vf*, align 8
  %13 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %4, align 8
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 1
  %19 = load %struct.siena_nic_data*, %struct.siena_nic_data** %18, align 8
  store %struct.siena_nic_data* %19, %struct.siena_nic_data** %5, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = load i32, i32* @PCI_EXT_CAP_ID_SRIOV, align 4
  %22 = call i32 @pci_find_ext_capability(%struct.pci_dev* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %112

28:                                               ; preds = %1
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* @PCI_SRIOV_VF_OFFSET, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @pci_read_config_word(%struct.pci_dev* %29, i64 %33, i32* %10)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* @PCI_SRIOV_VF_STRIDE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @pci_read_config_word(%struct.pci_dev* %35, i64 %39, i32* %11)
  %41 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %42 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %46, %47
  store i32 %48, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %104, %28
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %52 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %107

55:                                               ; preds = %49
  %56 = load %struct.siena_nic_data*, %struct.siena_nic_data** %5, align 8
  %57 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %56, i32 0, i32 1
  %58 = load %struct.siena_vf*, %struct.siena_vf** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %58, i64 %60
  store %struct.siena_vf* %61, %struct.siena_vf** %12, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.siena_vf*, %struct.siena_vf** %12, align 8
  %64 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @EFX_VF_BUFTBL_PER_VI, align 4
  %66 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %67 = call i32 @efx_vf_size(%struct.efx_nic* %66)
  %68 = mul i32 %65, %67
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.siena_vf*, %struct.siena_vf** %12, align 8
  %73 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.siena_vf*, %struct.siena_vf** %12, align 8
  %75 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = call i32 @pci_domain_nr(%struct.TYPE_2__* %79)
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @PCI_SLOT(i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @PCI_FUNC(i32 %88)
  %90 = call i32 @snprintf(i32 %76, i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %85, i32 %87, i32 %89)
  %91 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %92 = load %struct.siena_vf*, %struct.siena_vf** %12, align 8
  %93 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %92, i32 0, i32 2
  %94 = load i32, i32* @EFX_PAGE_SIZE, align 4
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i32 @efx_nic_alloc_buffer(%struct.efx_nic* %91, i32* %93, i32 %94, i32 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %55
  br label %108

100:                                              ; preds = %55
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %7, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %49

107:                                              ; preds = %49
  store i32 0, i32* %2, align 4
  br label %112

108:                                              ; preds = %99
  %109 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %110 = call i32 @efx_siena_sriov_vfs_fini(%struct.efx_nic* %109)
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %107, %25
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @efx_vf_size(%struct.efx_nic*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_2__*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @efx_nic_alloc_buffer(%struct.efx_nic*, i32*, i32, i32) #1

declare dso_local i32 @efx_siena_sriov_vfs_fini(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
