; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_read_pcie_cfg4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_read_pcie_cfg4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.fw_ldst_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32*, i32 }

@FW_LDST_ADDRSPC_FUNC_PCIE = common dso_local global i32 0, align 4
@FW_LDST_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4
@FW_LDST_CMD_LC_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_read_pcie_cfg4(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_ldst_cmd, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @memset(%struct.fw_ldst_cmd* %7, i32 0, i32 40)
  %10 = load i32, i32* @FW_LDST_ADDRSPC_FUNC_PCIE, align 4
  %11 = call i32 @FW_LDST_CMD_ADDRSPACE_V(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @FW_LDST_CMD, align 4
  %13 = call i32 @FW_CMD_OP_V(i32 %12)
  %14 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @FW_CMD_READ_F, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %17, %18
  %20 = call i8* @cpu_to_be32(i32 %19)
  %21 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %7, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = call i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8 %7)
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %7, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = call i32 @FW_LDST_CMD_NACCESS_V(i32 1)
  %26 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %7, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @FW_LDST_CMD_LC_F, align 4
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @FW_LDST_CMD_FN_V(i32 %32)
  %34 = or i32 %29, %33
  %35 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %7, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %7, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.adapter*, %struct.adapter** %3, align 8
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @t4_wr_mbox(%struct.adapter* %42, i32 %45, %struct.fw_ldst_cmd* %7, i32 40, %struct.fw_ldst_cmd* %7)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %7, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  store i32 %56, i32* %5, align 4
  br label %61

57:                                               ; preds = %2
  %58 = load %struct.adapter*, %struct.adapter** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @t4_hw_pci_read_cfg4(%struct.adapter* %58, i32 %59, i32* %5)
  br label %61

61:                                               ; preds = %57, %49
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.fw_ldst_cmd*, i32, i32) #1

declare dso_local i32 @FW_LDST_CMD_ADDRSPACE_V(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8) #1

declare dso_local i32 @FW_LDST_CMD_NACCESS_V(i32) #1

declare dso_local i32 @FW_LDST_CMD_FN_V(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_ldst_cmd*, i32, %struct.fw_ldst_cmd*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @t4_hw_pci_read_cfg4(%struct.adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
