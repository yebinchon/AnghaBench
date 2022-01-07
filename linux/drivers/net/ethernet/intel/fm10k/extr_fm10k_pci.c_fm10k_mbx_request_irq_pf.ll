; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_mbx_request_irq_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_mbx_request_irq_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { %struct.fm10k_hw, %struct.net_device*, %struct.msix_entry* }
%struct.fm10k_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.net_device = type { i32 }
%struct.msix_entry = type { i32, i32 }

@FM10K_MBX_VECTOR = common dso_local global i64 0, align 8
@FM10K_INT_MAP_TIMER0 = common dso_local global i32 0, align 4
@FM10K_INT_MAP_IMMEDIATE = common dso_local global i32 0, align 4
@pf_mbx_data = common dso_local global i32 0, align 4
@fm10k_msix_mbx_pf = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"request_irq for msix_mbx failed: %d\0A\00", align 1
@fm10k_int_pcie_fault = common dso_local global i32 0, align 4
@fm10k_int_switch_up_down = common dso_local global i32 0, align 4
@fm10k_int_sram = common dso_local global i32 0, align 4
@fm10k_int_max_hold_time = common dso_local global i32 0, align 4
@fm10k_int_vflr = common dso_local global i32 0, align 4
@fm10k_int_mailbox = common dso_local global i32 0, align 4
@FM10K_EIMR = common dso_local global i32 0, align 4
@PCA_FAULT = common dso_local global i32 0, align 4
@FUM_FAULT = common dso_local global i32 0, align 4
@MAILBOX = common dso_local global i32 0, align 4
@SWITCHREADY = common dso_local global i32 0, align 4
@SWITCHNOTREADY = common dso_local global i32 0, align 4
@SRAMERROR = common dso_local global i32 0, align 4
@VFLR = common dso_local global i32 0, align 4
@MAXHOLDTIME = common dso_local global i32 0, align 4
@FM10K_ITR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_intfc*)* @fm10k_mbx_request_irq_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_mbx_request_irq_pf(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.msix_entry*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.fm10k_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  %10 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %11 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %10, i32 0, i32 2
  %12 = load %struct.msix_entry*, %struct.msix_entry** %11, align 8
  %13 = load i64, i64* @FM10K_MBX_VECTOR, align 8
  %14 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %12, i64 %13
  store %struct.msix_entry* %14, %struct.msix_entry** %4, align 8
  %15 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %16 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %15, i32 0, i32 1
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %5, align 8
  %18 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %19 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %18, i32 0, i32 0
  store %struct.fm10k_hw* %19, %struct.fm10k_hw** %6, align 8
  %20 = load %struct.msix_entry*, %struct.msix_entry** %4, align 8
  %21 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FM10K_INT_MAP_TIMER0, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.msix_entry*, %struct.msix_entry** %4, align 8
  %26 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FM10K_INT_MAP_IMMEDIATE, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %31 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %33, align 8
  %35 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %36 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %35, i32 0, i32 0
  %37 = load i32, i32* @pf_mbx_data, align 4
  %38 = call i32 %34(%struct.TYPE_4__* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %126

43:                                               ; preds = %1
  %44 = load %struct.msix_entry*, %struct.msix_entry** %4, align 8
  %45 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @fm10k_msix_mbx_pf, align 4
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %52 = call i32 @request_irq(i32 %46, i32 %47, i32 0, i32 %50, %struct.fm10k_intfc* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %43
  %56 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %57 = load i32, i32* @probe, align 4
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @netif_err(%struct.fm10k_intfc* %56, i32 %57, %struct.net_device* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %126

62:                                               ; preds = %43
  %63 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %64 = load i32, i32* @fm10k_int_pcie_fault, align 4
  %65 = call i32 @FM10K_INT_MAP(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %63, i32 %65, i32 %66)
  %68 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %69 = load i32, i32* @fm10k_int_switch_up_down, align 4
  %70 = call i32 @FM10K_INT_MAP(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %68, i32 %70, i32 %71)
  %73 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %74 = load i32, i32* @fm10k_int_sram, align 4
  %75 = call i32 @FM10K_INT_MAP(i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %73, i32 %75, i32 %76)
  %78 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %79 = load i32, i32* @fm10k_int_max_hold_time, align 4
  %80 = call i32 @FM10K_INT_MAP(i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %78, i32 %80, i32 %81)
  %83 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %84 = load i32, i32* @fm10k_int_vflr, align 4
  %85 = call i32 @FM10K_INT_MAP(i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %83, i32 %85, i32 %86)
  %88 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %89 = load i32, i32* @fm10k_int_mailbox, align 4
  %90 = call i32 @FM10K_INT_MAP(i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %88, i32 %90, i32 %91)
  %93 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %94 = load i32, i32* @FM10K_EIMR, align 4
  %95 = load i32, i32* @PCA_FAULT, align 4
  %96 = call i32 @FM10K_EIMR_ENABLE(i32 %95)
  %97 = load i32, i32* @FUM_FAULT, align 4
  %98 = call i32 @FM10K_EIMR_ENABLE(i32 %97)
  %99 = or i32 %96, %98
  %100 = load i32, i32* @MAILBOX, align 4
  %101 = call i32 @FM10K_EIMR_ENABLE(i32 %100)
  %102 = or i32 %99, %101
  %103 = load i32, i32* @SWITCHREADY, align 4
  %104 = call i32 @FM10K_EIMR_ENABLE(i32 %103)
  %105 = or i32 %102, %104
  %106 = load i32, i32* @SWITCHNOTREADY, align 4
  %107 = call i32 @FM10K_EIMR_ENABLE(i32 %106)
  %108 = or i32 %105, %107
  %109 = load i32, i32* @SRAMERROR, align 4
  %110 = call i32 @FM10K_EIMR_ENABLE(i32 %109)
  %111 = or i32 %108, %110
  %112 = load i32, i32* @VFLR, align 4
  %113 = call i32 @FM10K_EIMR_ENABLE(i32 %112)
  %114 = or i32 %111, %113
  %115 = load i32, i32* @MAXHOLDTIME, align 4
  %116 = call i32 @FM10K_EIMR_ENABLE(i32 %115)
  %117 = or i32 %114, %116
  %118 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %93, i32 %94, i32 %117)
  %119 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %120 = load %struct.msix_entry*, %struct.msix_entry** %4, align 8
  %121 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @FM10K_ITR(i32 %122)
  %124 = load i32, i32* @FM10K_ITR_ENABLE, align 4
  %125 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %119, i32 %123, i32 %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %62, %55, %41
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.fm10k_intfc*) #1

declare dso_local i32 @netif_err(%struct.fm10k_intfc*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @FM10K_INT_MAP(i32) #1

declare dso_local i32 @FM10K_EIMR_ENABLE(i32) #1

declare dso_local i32 @FM10K_ITR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
