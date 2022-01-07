; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_fw_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_fw_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_fw_status = type { i32, i32* }
%struct.mei_device = type { i32 }
%struct.pci_dev = type { i32 }

@mei_txe_fw_sts = common dso_local global %struct.mei_fw_status zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@MEI_FW_STATUS_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"PCI_CFG_HSF_X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, %struct.mei_fw_status*)* @mei_txe_fw_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_txe_fw_status(%struct.mei_device* %0, %struct.mei_fw_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca %struct.mei_fw_status*, align 8
  %6 = alloca %struct.mei_fw_status*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store %struct.mei_fw_status* %1, %struct.mei_fw_status** %5, align 8
  store %struct.mei_fw_status* @mei_txe_fw_sts, %struct.mei_fw_status** %6, align 8
  %10 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %11 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pci_dev* @to_pci_dev(i32 %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %7, align 8
  %14 = load %struct.mei_fw_status*, %struct.mei_fw_status** %5, align 8
  %15 = icmp ne %struct.mei_fw_status* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %80

19:                                               ; preds = %2
  %20 = load %struct.mei_fw_status*, %struct.mei_fw_status** %6, align 8
  %21 = getelementptr inbounds %struct.mei_fw_status, %struct.mei_fw_status* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mei_fw_status*, %struct.mei_fw_status** %5, align 8
  %24 = getelementptr inbounds %struct.mei_fw_status, %struct.mei_fw_status* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %76, %19
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.mei_fw_status*, %struct.mei_fw_status** %6, align 8
  %28 = getelementptr inbounds %struct.mei_fw_status, %struct.mei_fw_status* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @MEI_FW_STATUS_MAX, align 4
  %34 = icmp slt i32 %32, %33
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i1 [ false, %25 ], [ %34, %31 ]
  br i1 %36, label %37, label %79

37:                                               ; preds = %35
  %38 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %39 = load %struct.mei_fw_status*, %struct.mei_fw_status** %6, align 8
  %40 = getelementptr inbounds %struct.mei_fw_status, %struct.mei_fw_status* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mei_fw_status*, %struct.mei_fw_status** %5, align 8
  %47 = getelementptr inbounds %struct.mei_fw_status, %struct.mei_fw_status* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @pci_read_config_dword(%struct.pci_dev* %38, i32 %45, i32* %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %54 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mei_fw_status*, %struct.mei_fw_status** %6, align 8
  %57 = getelementptr inbounds %struct.mei_fw_status, %struct.mei_fw_status* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mei_fw_status*, %struct.mei_fw_status** %5, align 8
  %64 = getelementptr inbounds %struct.mei_fw_status, %struct.mei_fw_status* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @trace_mei_pci_cfg_read(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %37
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %80

75:                                               ; preds = %37
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %25

79:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %73, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @trace_mei_pci_cfg_read(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
