; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_mdio_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_mdio_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_ldst_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@FW_LDST_ADDRSPC_MDIO = common dso_local global i32 0, align 4
@FW_LDST_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_mdio_wr(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fw_ldst_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = call i32 @memset(%struct.fw_ldst_cmd* %14, i32 0, i32 40)
  %16 = load i32, i32* @FW_LDST_ADDRSPC_MDIO, align 4
  %17 = call i32 @FW_LDST_CMD_ADDRSPACE_V(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* @FW_LDST_CMD, align 4
  %19 = call i32 @FW_CMD_OP_V(i32 %18)
  %20 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %13, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %14, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = call i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8 %14)
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %14, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @FW_LDST_CMD_PADDR_V(i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @FW_LDST_CMD_MMD_V(i32 %33)
  %35 = or i32 %32, %34
  %36 = call i8* @cpu_to_be16(i32 %35)
  %37 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %14, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i8* %36, i8** %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i8* @cpu_to_be16(i32 %40)
  %42 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %14, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i8* @cpu_to_be16(i32 %45)
  %47 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %14, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load %struct.adapter*, %struct.adapter** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @t4_wr_mbox(%struct.adapter* %50, i32 %51, %struct.fw_ldst_cmd* %14, i32 40, i32* null)
  ret i32 %52
}

declare dso_local i32 @memset(%struct.fw_ldst_cmd*, i32, i32) #1

declare dso_local i32 @FW_LDST_CMD_ADDRSPACE_V(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @FW_LDST_CMD_PADDR_V(i32) #1

declare dso_local i32 @FW_LDST_CMD_MMD_V(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_ldst_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
