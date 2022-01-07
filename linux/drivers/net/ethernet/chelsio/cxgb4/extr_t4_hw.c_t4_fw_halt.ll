; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fw_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fw_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_reset_cmd = type { i8*, i8* }

@PCIE_FW_MASTER_M = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@PIORST_F = common dso_local global i32 0, align 4
@PIORSTMODE_F = common dso_local global i32 0, align 4
@FW_RESET_CMD_HALT_F = common dso_local global i32 0, align 4
@CIM_BOOT_CFG_A = common dso_local global i32 0, align 4
@UPCRST_F = common dso_local global i32 0, align 4
@PCIE_FW_A = common dso_local global i32 0, align 4
@PCIE_FW_HALT_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32)* @t4_fw_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_fw_halt(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_reset_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PCIE_FW_MASTER_M, align 4
  %11 = icmp ule i32 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = call i32 @memset(%struct.fw_reset_cmd* %8, i32 0, i32 16)
  %14 = load i32, i32* @RESET, align 4
  %15 = load i32, i32* @WRITE, align 4
  %16 = bitcast %struct.fw_reset_cmd* %8 to { i8*, i8* }*
  %17 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %16, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @INIT_CMD(i8* %18, i8* %20, i32 %14, i32 %15)
  %22 = load i32, i32* @PIORST_F, align 4
  %23 = load i32, i32* @PIORSTMODE_F, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = getelementptr inbounds %struct.fw_reset_cmd, %struct.fw_reset_cmd* %8, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* @FW_RESET_CMD_HALT_F, align 4
  %28 = call i8* @cpu_to_be32(i32 %27)
  %29 = getelementptr inbounds %struct.fw_reset_cmd, %struct.fw_reset_cmd* %8, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @t4_wr_mbox(%struct.adapter* %30, i32 %31, %struct.fw_reset_cmd* %8, i32 16, i32* null)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %12, %3
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36, %33
  %40 = load %struct.adapter*, %struct.adapter** %4, align 8
  %41 = load i32, i32* @CIM_BOOT_CFG_A, align 4
  %42 = load i32, i32* @UPCRST_F, align 4
  %43 = load i32, i32* @UPCRST_F, align 4
  %44 = call i32 @t4_set_reg_field(%struct.adapter* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.adapter*, %struct.adapter** %4, align 8
  %46 = load i32, i32* @PCIE_FW_A, align 4
  %47 = load i32, i32* @PCIE_FW_HALT_F, align 4
  %48 = load i32, i32* @PCIE_FW_HALT_F, align 4
  %49 = call i32 @t4_set_reg_field(%struct.adapter* %45, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %39, %36
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @memset(%struct.fw_reset_cmd*, i32, i32) #1

declare dso_local i32 @INIT_CMD(i8*, i8*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_reset_cmd*, i32, i32*) #1

declare dso_local i32 @t4_set_reg_field(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
