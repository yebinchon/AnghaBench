; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_chain_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_chain_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_api_cmd_chain = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to restart API CMD HW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_api_cmd_chain*)* @api_cmd_chain_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @api_cmd_chain_hw_init(%struct.hinic_api_cmd_chain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hinic_api_cmd_chain*, align 8
  %4 = alloca %struct.hinic_hwif*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.hinic_api_cmd_chain* %0, %struct.hinic_api_cmd_chain** %3, align 8
  %7 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %8 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %7, i32 0, i32 0
  %9 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  store %struct.hinic_hwif* %9, %struct.hinic_hwif** %4, align 8
  %10 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %11 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  %13 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %14 = call i32 @api_cmd_chain_hw_clean(%struct.hinic_api_cmd_chain* %13)
  %15 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %16 = call i32 @api_cmd_set_status_addr(%struct.hinic_api_cmd_chain* %15)
  %17 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %18 = call i32 @api_cmd_hw_restart(%struct.hinic_api_cmd_chain* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %33

26:                                               ; preds = %1
  %27 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %28 = call i32 @api_cmd_ctrl_init(%struct.hinic_api_cmd_chain* %27)
  %29 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %30 = call i32 @api_cmd_set_num_cells(%struct.hinic_api_cmd_chain* %29)
  %31 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %3, align 8
  %32 = call i32 @api_cmd_head_init(%struct.hinic_api_cmd_chain* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %21
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @api_cmd_chain_hw_clean(%struct.hinic_api_cmd_chain*) #1

declare dso_local i32 @api_cmd_set_status_addr(%struct.hinic_api_cmd_chain*) #1

declare dso_local i32 @api_cmd_hw_restart(%struct.hinic_api_cmd_chain*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @api_cmd_ctrl_init(%struct.hinic_api_cmd_chain*) #1

declare dso_local i32 @api_cmd_set_num_cells(%struct.hinic_api_cmd_chain*) #1

declare dso_local i32 @api_cmd_head_init(%struct.hinic_api_cmd_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
