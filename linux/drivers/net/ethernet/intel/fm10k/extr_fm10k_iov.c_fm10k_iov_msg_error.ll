; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_msg_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_msg_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.fm10k_intfc* }
%struct.fm10k_intfc = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.fm10k_mbx_info = type { i32 }
%struct.fm10k_vf_info = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unknown message ID %u on VF %d\0A\00", align 1
@FM10K_TLV_ID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, i32**, %struct.fm10k_mbx_info*)* @fm10k_iov_msg_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_iov_msg_error(%struct.fm10k_hw* %0, i32** %1, %struct.fm10k_mbx_info* %2) #0 {
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.fm10k_mbx_info*, align 8
  %7 = alloca %struct.fm10k_vf_info*, align 8
  %8 = alloca %struct.fm10k_intfc*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store i32** %1, i32*** %5, align 8
  store %struct.fm10k_mbx_info* %2, %struct.fm10k_mbx_info** %6, align 8
  %10 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %11 = bitcast %struct.fm10k_mbx_info* %10 to %struct.fm10k_vf_info*
  store %struct.fm10k_vf_info* %11, %struct.fm10k_vf_info** %7, align 8
  %12 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %13 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %12, i32 0, i32 0
  %14 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %13, align 8
  store %struct.fm10k_intfc* %14, %struct.fm10k_intfc** %8, align 8
  %15 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %8, align 8
  %16 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %9, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32**, i32*** %5, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FM10K_TLV_ID_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %7, align 8
  %26 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %30 = load i32**, i32*** %5, align 8
  %31 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %32 = call i32 @fm10k_tlv_msg_error(%struct.fm10k_hw* %29, i32** %30, %struct.fm10k_mbx_info* %31)
  ret i32 %32
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @fm10k_tlv_msg_error(%struct.fm10k_hw*, i32**, %struct.fm10k_mbx_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
