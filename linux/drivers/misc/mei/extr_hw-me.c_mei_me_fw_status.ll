; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_fw_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_fw_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_fw_status = type { i32, i32* }
%struct.pci_dev = type { i32 }
%struct.mei_me_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mei_fw_status }

@EINVAL = common dso_local global i32 0, align 4
@MEI_FW_STATUS_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"PCI_CFG_HSF_X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, %struct.mei_fw_status*)* @mei_me_fw_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_me_fw_status(%struct.mei_device* %0, %struct.mei_fw_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca %struct.mei_fw_status*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.mei_me_hw*, align 8
  %8 = alloca %struct.mei_fw_status*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store %struct.mei_fw_status* %1, %struct.mei_fw_status** %5, align 8
  %11 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %12 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.pci_dev* @to_pci_dev(i32 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  %15 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %16 = call %struct.mei_me_hw* @to_me_hw(%struct.mei_device* %15)
  store %struct.mei_me_hw* %16, %struct.mei_me_hw** %7, align 8
  %17 = load %struct.mei_me_hw*, %struct.mei_me_hw** %7, align 8
  %18 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.mei_fw_status* %20, %struct.mei_fw_status** %8, align 8
  %21 = load %struct.mei_fw_status*, %struct.mei_fw_status** %5, align 8
  %22 = icmp ne %struct.mei_fw_status* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %87

26:                                               ; preds = %2
  %27 = load %struct.mei_fw_status*, %struct.mei_fw_status** %8, align 8
  %28 = getelementptr inbounds %struct.mei_fw_status, %struct.mei_fw_status* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mei_fw_status*, %struct.mei_fw_status** %5, align 8
  %31 = getelementptr inbounds %struct.mei_fw_status, %struct.mei_fw_status* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %83, %26
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.mei_fw_status*, %struct.mei_fw_status** %8, align 8
  %35 = getelementptr inbounds %struct.mei_fw_status, %struct.mei_fw_status* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @MEI_FW_STATUS_MAX, align 4
  %41 = icmp slt i32 %39, %40
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi i1 [ false, %32 ], [ %41, %38 ]
  br i1 %43, label %44, label %86

44:                                               ; preds = %42
  %45 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %46 = load %struct.mei_fw_status*, %struct.mei_fw_status** %8, align 8
  %47 = getelementptr inbounds %struct.mei_fw_status, %struct.mei_fw_status* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mei_fw_status*, %struct.mei_fw_status** %5, align 8
  %54 = getelementptr inbounds %struct.mei_fw_status, %struct.mei_fw_status* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i32 @pci_read_config_dword(%struct.pci_dev* %45, i32 %52, i32* %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %61 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mei_fw_status*, %struct.mei_fw_status** %8, align 8
  %64 = getelementptr inbounds %struct.mei_fw_status, %struct.mei_fw_status* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mei_fw_status*, %struct.mei_fw_status** %5, align 8
  %71 = getelementptr inbounds %struct.mei_fw_status, %struct.mei_fw_status* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @trace_mei_pci_cfg_read(i32 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %44
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %87

82:                                               ; preds = %44
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %32

86:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %80, %23
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @trace_mei_pci_cfg_read(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
