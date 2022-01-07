; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_handle_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_handle_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { %struct.fm10k_iov_data*, %struct.fm10k_hw.0, %struct.pci_dev* }
%struct.fm10k_iov_data = type { %struct.fm10k_vf_info* }
%struct.fm10k_vf_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.fm10k_hw*, %struct.TYPE_8__*)* }
%struct.fm10k_hw = type opaque
%struct.fm10k_hw.0 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.fm10k_hw.1*, %struct.fm10k_vf_info*, i32, i32)*, i32 (%struct.fm10k_hw.2*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.3*, %struct.fm10k_vf_info*)* }
%struct.fm10k_hw.1 = type opaque
%struct.fm10k_hw.2 = type opaque
%struct.fm10k_hw.3 = type opaque
%struct.pci_dev = type { i32 }
%struct.fm10k_fault = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Unknown PCA error\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Unknown THI error\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Unknown FUM error\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Undocumented fault\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"%s Address: 0x%llx SpecInfo: 0x%x Func: %02x.%0x\0A\00", align 1
@FM10K_VF_FLAG_MULTI_CAPABLE = common dso_local global i32 0, align 4
@FUM_ADD_DECODE_ERR = common dso_local global i32 0, align 4
@FUM_BAD_VF_QACCESS = common dso_local global i32 0, align 4
@FUM_CSR_TIMEOUT = common dso_local global i32 0, align 4
@FUM_INVALID_ALIGN = common dso_local global i32 0, align 4
@FUM_INVALID_BE = common dso_local global i32 0, align 4
@FUM_INVALID_LENGTH = common dso_local global i32 0, align 4
@FUM_INVALID_TYPE = common dso_local global i32 0, align 4
@FUM_NO_FAULT = common dso_local global i32 0, align 4
@FUM_QPRC_CRC_ERROR = common dso_local global i32 0, align 4
@FUM_RO_ERROR = common dso_local global i32 0, align 4
@FUM_UNMAPPED_ADDR = common dso_local global i32 0, align 4
@PCA_BAD_QACCESS_PF = common dso_local global i32 0, align 4
@PCA_BAD_QACCESS_VF = common dso_local global i32 0, align 4
@PCA_MALICIOUS_REQ = common dso_local global i32 0, align 4
@PCA_NO_FAULT = common dso_local global i32 0, align 4
@PCA_POISONED_TLP = common dso_local global i32 0, align 4
@PCA_TLP_ABORT = common dso_local global i32 0, align 4
@PCA_UNMAPPED_ADDR = common dso_local global i32 0, align 4
@THI_MAL_DIS_Q_FAULT = common dso_local global i32 0, align 4
@THI_NO_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*, i32, %struct.fm10k_fault*)* @fm10k_handle_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_handle_fault(%struct.fm10k_intfc* %0, i32 %1, %struct.fm10k_fault* %2) #0 {
  %4 = alloca %struct.fm10k_intfc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_fault*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.fm10k_hw.0*, align 8
  %9 = alloca %struct.fm10k_iov_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fm10k_vf_info*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fm10k_fault* %2, %struct.fm10k_fault** %6, align 8
  %13 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %14 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %13, i32 0, i32 2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %7, align 8
  %16 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %17 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %16, i32 0, i32 1
  store %struct.fm10k_hw.0* %17, %struct.fm10k_hw.0** %8, align 8
  %18 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %4, align 8
  %19 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %18, i32 0, i32 0
  %20 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %19, align 8
  store %struct.fm10k_iov_data* %20, %struct.fm10k_iov_data** %9, align 8
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %40 [
    i32 129, label %22
    i32 128, label %28
    i32 130, label %34
  ]

22:                                               ; preds = %3
  %23 = load %struct.fm10k_fault*, %struct.fm10k_fault** %6, align 8
  %24 = getelementptr inbounds %struct.fm10k_fault, %struct.fm10k_fault* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %26 [
  ]

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %27

27:                                               ; preds = %26
  br label %41

28:                                               ; preds = %3
  %29 = load %struct.fm10k_fault*, %struct.fm10k_fault** %6, align 8
  %30 = getelementptr inbounds %struct.fm10k_fault, %struct.fm10k_fault* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %32 [
  ]

32:                                               ; preds = %28
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %33

33:                                               ; preds = %32
  br label %41

34:                                               ; preds = %3
  %35 = load %struct.fm10k_fault*, %struct.fm10k_fault** %6, align 8
  %36 = getelementptr inbounds %struct.fm10k_fault, %struct.fm10k_fault* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %38 [
  ]

38:                                               ; preds = %34
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %39

39:                                               ; preds = %38
  br label %41

40:                                               ; preds = %3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %41

41:                                               ; preds = %40, %39, %33, %27
  %42 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.fm10k_fault*, %struct.fm10k_fault** %6, align 8
  %46 = getelementptr inbounds %struct.fm10k_fault, %struct.fm10k_fault* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fm10k_fault*, %struct.fm10k_fault** %6, align 8
  %49 = getelementptr inbounds %struct.fm10k_fault, %struct.fm10k_fault* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fm10k_fault*, %struct.fm10k_fault** %6, align 8
  %52 = getelementptr inbounds %struct.fm10k_fault, %struct.fm10k_fault* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PCI_SLOT(i32 %53)
  %55 = load %struct.fm10k_fault*, %struct.fm10k_fault** %6, align 8
  %56 = getelementptr inbounds %struct.fm10k_fault, %struct.fm10k_fault* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PCI_FUNC(i32 %57)
  %59 = call i32 @dev_warn(i32* %43, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* %44, i32 %47, i32 %50, i32 %54, i32 %58)
  %60 = load %struct.fm10k_fault*, %struct.fm10k_fault** %6, align 8
  %61 = getelementptr inbounds %struct.fm10k_fault, %struct.fm10k_fault* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %117

64:                                               ; preds = %41
  %65 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %9, align 8
  %66 = icmp ne %struct.fm10k_iov_data* %65, null
  br i1 %66, label %67, label %117

67:                                               ; preds = %64
  %68 = load %struct.fm10k_fault*, %struct.fm10k_fault** %6, align 8
  %69 = getelementptr inbounds %struct.fm10k_fault, %struct.fm10k_fault* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  %72 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %9, align 8
  %73 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %72, i32 0, i32 0
  %74 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %74, i64 %76
  store %struct.fm10k_vf_info* %77, %struct.fm10k_vf_info** %12, align 8
  %78 = load %struct.fm10k_hw.0*, %struct.fm10k_hw.0** %8, align 8
  %79 = getelementptr inbounds %struct.fm10k_hw.0, %struct.fm10k_hw.0* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32 (%struct.fm10k_hw.3*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.3*, %struct.fm10k_vf_info*)** %81, align 8
  %83 = load %struct.fm10k_hw.0*, %struct.fm10k_hw.0** %8, align 8
  %84 = bitcast %struct.fm10k_hw.0* %83 to %struct.fm10k_hw.3*
  %85 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %12, align 8
  %86 = call i32 %82(%struct.fm10k_hw.3* %84, %struct.fm10k_vf_info* %85)
  %87 = load %struct.fm10k_hw.0*, %struct.fm10k_hw.0** %8, align 8
  %88 = getelementptr inbounds %struct.fm10k_hw.0, %struct.fm10k_hw.0* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32 (%struct.fm10k_hw.2*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.2*, %struct.fm10k_vf_info*)** %90, align 8
  %92 = load %struct.fm10k_hw.0*, %struct.fm10k_hw.0** %8, align 8
  %93 = bitcast %struct.fm10k_hw.0* %92 to %struct.fm10k_hw.2*
  %94 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %12, align 8
  %95 = call i32 %91(%struct.fm10k_hw.2* %93, %struct.fm10k_vf_info* %94)
  %96 = load %struct.fm10k_hw.0*, %struct.fm10k_hw.0** %8, align 8
  %97 = getelementptr inbounds %struct.fm10k_hw.0, %struct.fm10k_hw.0* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32 (%struct.fm10k_hw.1*, %struct.fm10k_vf_info*, i32, i32)*, i32 (%struct.fm10k_hw.1*, %struct.fm10k_vf_info*, i32, i32)** %99, align 8
  %101 = load %struct.fm10k_hw.0*, %struct.fm10k_hw.0** %8, align 8
  %102 = bitcast %struct.fm10k_hw.0* %101 to %struct.fm10k_hw.1*
  %103 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %12, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @FM10K_VF_FLAG_MULTI_CAPABLE, align 4
  %106 = call i32 %100(%struct.fm10k_hw.1* %102, %struct.fm10k_vf_info* %103, i32 %104, i32 %105)
  %107 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %12, align 8
  %108 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32 (%struct.fm10k_hw*, %struct.TYPE_8__*)*, i32 (%struct.fm10k_hw*, %struct.TYPE_8__*)** %110, align 8
  %112 = load %struct.fm10k_hw.0*, %struct.fm10k_hw.0** %8, align 8
  %113 = bitcast %struct.fm10k_hw.0* %112 to %struct.fm10k_hw*
  %114 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %12, align 8
  %115 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %114, i32 0, i32 0
  %116 = call i32 %111(%struct.fm10k_hw* %113, %struct.TYPE_8__* %115)
  br label %117

117:                                              ; preds = %67, %64, %41
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
