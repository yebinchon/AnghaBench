; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fwaddrspace_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fwaddrspace_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_ldst_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@FW_LDST_ADDRSPC_FIRMWARE = common dso_local global i32 0, align 4
@FW_LDST_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_fwaddrspace_write(%struct.adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fw_ldst_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call i32 @memset(%struct.fw_ldst_cmd* %10, i32 0, i32 32)
  %12 = load i32, i32* @FW_LDST_ADDRSPC_FIRMWARE, align 4
  %13 = call i32 @FW_LDST_CMD_ADDRSPACE_V(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @FW_LDST_CMD, align 4
  %15 = call i32 @FW_CMD_OP_V(i32 %14)
  %16 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %10, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = call i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8 %10)
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %10, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i8* @cpu_to_be32(i32 %27)
  %29 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %10, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %10, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load %struct.adapter*, %struct.adapter** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @t4_wr_mbox(%struct.adapter* %37, i32 %38, %struct.fw_ldst_cmd* %10, i32 32, i32* null)
  ret i32 %39
}

declare dso_local i32 @memset(%struct.fw_ldst_cmd*, i32, i32) #1

declare dso_local i32 @FW_LDST_CMD_ADDRSPACE_V(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_ldst_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
