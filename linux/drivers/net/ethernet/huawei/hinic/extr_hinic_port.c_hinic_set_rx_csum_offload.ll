; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_set_rx_csum_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_set_rx_csum_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.hinic_checksum_offload = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HINIC_PORT_CMD_SET_RX_CSUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to set rx csum offload, ret = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_set_rx_csum_offload(%struct.hinic_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hinic_checksum_offload, align 8
  %7 = alloca %struct.hinic_hwdev*, align 8
  %8 = alloca %struct.hinic_hwif*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = bitcast %struct.hinic_checksum_offload* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load %struct.hinic_dev*, %struct.hinic_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %13, i32 0, i32 0
  %15 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %14, align 8
  store %struct.hinic_hwdev* %15, %struct.hinic_hwdev** %7, align 8
  %16 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %7, align 8
  %17 = icmp ne %struct.hinic_hwdev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %7, align 8
  %23 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %22, i32 0, i32 0
  %24 = load %struct.hinic_hwif*, %struct.hinic_hwif** %23, align 8
  store %struct.hinic_hwif* %24, %struct.hinic_hwif** %8, align 8
  %25 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %26 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %25, i32 0, i32 0
  %27 = load %struct.pci_dev*, %struct.pci_dev** %26, align 8
  store %struct.pci_dev* %27, %struct.pci_dev** %9, align 8
  %28 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  %29 = call i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif* %28)
  %30 = getelementptr inbounds %struct.hinic_checksum_offload, %struct.hinic_checksum_offload* %6, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds %struct.hinic_checksum_offload, %struct.hinic_checksum_offload* %6, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %7, align 8
  %34 = load i32, i32* @HINIC_PORT_CMD_SET_RX_CSUM, align 4
  %35 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %33, i32 %34, %struct.hinic_checksum_offload* %6, i32 24, %struct.hinic_checksum_offload* %6, i32* %10)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.hinic_checksum_offload, %struct.hinic_checksum_offload* %6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41, %38, %21
  %46 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.hinic_checksum_offload, %struct.hinic_checksum_offload* %6, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %45, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(%struct.hinic_hwif*) #2

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_checksum_offload*, i32, %struct.hinic_checksum_offload*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
