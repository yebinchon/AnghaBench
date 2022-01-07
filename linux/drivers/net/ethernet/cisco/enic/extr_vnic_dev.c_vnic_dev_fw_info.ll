; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_fw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_fw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32, %struct.vnic_devcmd_fw_info*, i32 }
%struct.vnic_devcmd_fw_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CMD_MCPU_FW_INFO = common dso_local global i32 0, align 4
@CMD_MCPU_FW_INFO_OLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnic_dev_fw_info(%struct.vnic_dev* %0, %struct.vnic_devcmd_fw_info** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnic_dev*, align 8
  %5 = alloca %struct.vnic_devcmd_fw_info**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %4, align 8
  store %struct.vnic_devcmd_fw_info** %1, %struct.vnic_devcmd_fw_info*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1000, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %11 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %10, i32 0, i32 1
  %12 = load %struct.vnic_devcmd_fw_info*, %struct.vnic_devcmd_fw_info** %11, align 8
  %13 = icmp ne %struct.vnic_devcmd_fw_info* %12, null
  br i1 %13, label %49, label %14

14:                                               ; preds = %2
  %15 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %16 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %19 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %18, i32 0, i32 0
  %20 = call %struct.vnic_devcmd_fw_info* @pci_zalloc_consistent(i32 %17, i32 4, i32* %19)
  %21 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %22 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %21, i32 0, i32 1
  store %struct.vnic_devcmd_fw_info* %20, %struct.vnic_devcmd_fw_info** %22, align 8
  %23 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %24 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %23, i32 0, i32 1
  %25 = load %struct.vnic_devcmd_fw_info*, %struct.vnic_devcmd_fw_info** %24, align 8
  %26 = icmp ne %struct.vnic_devcmd_fw_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %14
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %55

30:                                               ; preds = %14
  %31 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %32 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  store i32 4, i32* %7, align 4
  %34 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %35 = load i32, i32* @CMD_MCPU_FW_INFO, align 4
  %36 = call i64 @vnic_dev_capable(%struct.vnic_dev* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %40 = load i32, i32* @CMD_MCPU_FW_INFO, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @vnic_dev_cmd(%struct.vnic_dev* %39, i32 %40, i32* %6, i32* %7, i32 %41)
  store i32 %42, i32* %9, align 4
  br label %48

43:                                               ; preds = %30
  %44 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %45 = load i32, i32* @CMD_MCPU_FW_INFO_OLD, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @vnic_dev_cmd(%struct.vnic_dev* %44, i32 %45, i32* %6, i32* %7, i32 %46)
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.vnic_dev*, %struct.vnic_dev** %4, align 8
  %51 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %50, i32 0, i32 1
  %52 = load %struct.vnic_devcmd_fw_info*, %struct.vnic_devcmd_fw_info** %51, align 8
  %53 = load %struct.vnic_devcmd_fw_info**, %struct.vnic_devcmd_fw_info*** %5, align 8
  store %struct.vnic_devcmd_fw_info* %52, %struct.vnic_devcmd_fw_info** %53, align 8
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %27
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.vnic_devcmd_fw_info* @pci_zalloc_consistent(i32, i32, i32*) #1

declare dso_local i64 @vnic_dev_capable(%struct.vnic_dev*, i32) #1

declare dso_local i32 @vnic_dev_cmd(%struct.vnic_dev*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
