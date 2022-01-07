; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_init_devlog_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_init_devlog_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.devlog_params }
%struct.devlog_params = type { i32, i32, i32 }
%struct.fw_devlog_cmd = type { i32, i32, i8*, i8* }

@PCIE_FW_PF_A = common dso_local global i32 0, align 4
@PCIE_FW_PF_DEVLOG = common dso_local global i32 0, align 4
@FW_DEVLOG_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_init_devlog_params(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.devlog_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_devlog_cmd, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.devlog_params* %13, %struct.devlog_params** %4, align 8
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = load i32, i32* @PCIE_FW_PF_A, align 4
  %16 = load i32, i32* @PCIE_FW_PF_DEVLOG, align 4
  %17 = call i32 @PCIE_FW_REG(i32 %15, i32 %16)
  %18 = call i64 @t4_read_reg(%struct.adapter* %14, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @PCIE_FW_PF_DEVLOG_MEMTYPE_G(i64 %22)
  %24 = load %struct.devlog_params*, %struct.devlog_params** %4, align 8
  %25 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @PCIE_FW_PF_DEVLOG_ADDR16_G(i64 %26)
  %28 = shl i32 %27, 4
  %29 = load %struct.devlog_params*, %struct.devlog_params** %4, align 8
  %30 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @PCIE_FW_PF_DEVLOG_NENTRIES128_G(i64 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add i32 %33, 1
  %35 = mul i32 %34, 128
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = load %struct.devlog_params*, %struct.devlog_params** %4, align 8
  %41 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %2, align 4
  br label %84

42:                                               ; preds = %1
  %43 = call i32 @memset(%struct.fw_devlog_cmd* %7, i32 0, i32 24)
  %44 = load i32, i32* @FW_DEVLOG_CMD, align 4
  %45 = call i32 @FW_CMD_OP_V(i32 %44)
  %46 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @FW_CMD_READ_F, align 4
  %49 = or i32 %47, %48
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = getelementptr inbounds %struct.fw_devlog_cmd, %struct.fw_devlog_cmd* %7, i32 0, i32 3
  store i8* %50, i8** %51, align 8
  %52 = call i32 @FW_LEN16(%struct.fw_devlog_cmd* byval(%struct.fw_devlog_cmd) align 8 %7)
  %53 = call i8* @cpu_to_be32(i32 %52)
  %54 = getelementptr inbounds %struct.fw_devlog_cmd, %struct.fw_devlog_cmd* %7, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  %55 = load %struct.adapter*, %struct.adapter** %3, align 8
  %56 = load %struct.adapter*, %struct.adapter** %3, align 8
  %57 = getelementptr inbounds %struct.adapter, %struct.adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @t4_wr_mbox(%struct.adapter* %55, i32 %58, %struct.fw_devlog_cmd* %7, i32 24, %struct.fw_devlog_cmd* %7)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %42
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %84

64:                                               ; preds = %42
  %65 = getelementptr inbounds %struct.fw_devlog_cmd, %struct.fw_devlog_cmd* %7, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @be32_to_cpu(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @FW_DEVLOG_CMD_MEMTYPE_DEVLOG_G(i32 %69)
  %71 = load %struct.devlog_params*, %struct.devlog_params** %4, align 8
  %72 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @FW_DEVLOG_CMD_MEMADDR16_DEVLOG_G(i32 %73)
  %75 = shl i32 %74, 4
  %76 = load %struct.devlog_params*, %struct.devlog_params** %4, align 8
  %77 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.fw_devlog_cmd, %struct.fw_devlog_cmd* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @be32_to_cpu(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.devlog_params*, %struct.devlog_params** %4, align 8
  %83 = getelementptr inbounds %struct.devlog_params, %struct.devlog_params* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %64, %62, %21
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @PCIE_FW_REG(i32, i32) #1

declare dso_local i32 @PCIE_FW_PF_DEVLOG_MEMTYPE_G(i64) #1

declare dso_local i32 @PCIE_FW_PF_DEVLOG_ADDR16_G(i64) #1

declare dso_local i32 @PCIE_FW_PF_DEVLOG_NENTRIES128_G(i64) #1

declare dso_local i32 @memset(%struct.fw_devlog_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_devlog_cmd* byval(%struct.fw_devlog_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_devlog_cmd*, i32, %struct.fw_devlog_cmd*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @FW_DEVLOG_CMD_MEMTYPE_DEVLOG_G(i32) #1

declare dso_local i32 @FW_DEVLOG_CMD_MEMADDR16_DEVLOG_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
