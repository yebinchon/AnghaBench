; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@FW_LOG_LEVEL_DEFAULT = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Using profile 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_config(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %7 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %8 = call i32 @be_cmd_get_cntl_attributes(%struct.be_adapter* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %88

13:                                               ; preds = %1
  %14 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %15 = call i32 @be_cmd_query_fw_cfg(%struct.be_adapter* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %88

20:                                               ; preds = %13
  %21 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %22 = call i32 @lancer_chip(%struct.be_adapter* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %26 = call i64 @be_physfn(%struct.be_adapter* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %30 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %30, i32 0, i32 3
  %32 = call i32 @be_cmd_get_fat_dump_len(%struct.be_adapter* %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %24, %20
  %34 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %35 = call i64 @BEx_chip(%struct.be_adapter* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %39 = call i32 @be_cmd_get_fw_log_level(%struct.be_adapter* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @FW_LOG_LEVEL_DEFAULT, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @NETIF_MSG_HW, align 4
  br label %46

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %33
  %51 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %52 = call i32 @be_cmd_get_acpi_wol_cap(%struct.be_adapter* %51)
  %53 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* @PCI_D3hot, align 4
  %57 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @pci_enable_wake(%struct.TYPE_2__* %55, i32 %56, i32 %59)
  %61 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* @PCI_D3cold, align 4
  %65 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pci_enable_wake(%struct.TYPE_2__* %63, i32 %64, i32 %67)
  %69 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %70 = call i32 @be_cmd_query_port_name(%struct.be_adapter* %69)
  %71 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %72 = call i64 @be_physfn(%struct.be_adapter* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %50
  %75 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %76 = call i32 @be_cmd_get_active_profile(%struct.be_adapter* %75, i32* %6)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %74
  %80 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @dev_info(i32* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %79, %74
  br label %87

87:                                               ; preds = %86, %50
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %18, %11
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @be_cmd_get_cntl_attributes(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_query_fw_cfg(%struct.be_adapter*) #1

declare dso_local i32 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_physfn(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_get_fat_dump_len(%struct.be_adapter*, i32*) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_get_fw_log_level(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_get_acpi_wol_cap(%struct.be_adapter*) #1

declare dso_local i32 @pci_enable_wake(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @be_cmd_query_port_name(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_get_active_profile(%struct.be_adapter*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
