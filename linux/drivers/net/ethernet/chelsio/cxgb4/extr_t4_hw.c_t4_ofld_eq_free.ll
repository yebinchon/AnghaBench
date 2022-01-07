; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_ofld_eq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_ofld_eq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_eq_ofld_cmd = type { i8*, i8*, i8* }

@FW_EQ_OFLD_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_EXEC_F = common dso_local global i32 0, align 4
@FW_EQ_OFLD_CMD_FREE_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_ofld_eq_free(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fw_eq_ofld_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call i32 @memset(%struct.fw_eq_ofld_cmd* %11, i32 0, i32 24)
  %13 = load i32, i32* @FW_EQ_OFLD_CMD, align 4
  %14 = call i32 @FW_CMD_OP_V(i32 %13)
  %15 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FW_CMD_EXEC_F, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @FW_EQ_OFLD_CMD_PFN_V(i32 %19)
  %21 = or i32 %18, %20
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @FW_EQ_OFLD_CMD_VFN_V(i32 %22)
  %24 = or i32 %21, %23
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %11, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* @FW_EQ_OFLD_CMD_FREE_F, align 4
  %28 = call i32 @FW_LEN16(%struct.fw_eq_ofld_cmd* byval(%struct.fw_eq_ofld_cmd) align 8 %11)
  %29 = or i32 %27, %28
  %30 = call i8* @cpu_to_be32(i32 %29)
  %31 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %11, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @FW_EQ_OFLD_CMD_EQID_V(i32 %32)
  %34 = call i8* @cpu_to_be32(i32 %33)
  %35 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %11, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load %struct.adapter*, %struct.adapter** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @t4_wr_mbox(%struct.adapter* %36, i32 %37, %struct.fw_eq_ofld_cmd* %11, i32 24, i32* null)
  ret i32 %38
}

declare dso_local i32 @memset(%struct.fw_eq_ofld_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_PFN_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_VFN_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_eq_ofld_cmd* byval(%struct.fw_eq_ofld_cmd) align 8) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_EQID_V(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_eq_ofld_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
