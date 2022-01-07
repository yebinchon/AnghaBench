; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_sge_ctxt_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_sge_ctxt_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_ldst_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@CTXT_EGRESS = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_SGE_EGRC = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_SGE_INGC = common dso_local global i32 0, align 4
@FW_LDST_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4
@FW_LDST_CMD_CTXTFLUSH_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sge_ctxt_flush(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fw_ldst_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 @memset(%struct.fw_ldst_cmd* %9, i32 0, i32 24)
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @CTXT_EGRESS, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @FW_LDST_ADDRSPC_SGE_EGRC, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @FW_LDST_ADDRSPC_SGE_INGC, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = call i32 @FW_LDST_CMD_ADDRSPACE_V(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @FW_LDST_CMD, align 4
  %22 = call i32 @FW_CMD_OP_V(i32 %21)
  %23 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @FW_CMD_READ_F, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %26, %27
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %9, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = call i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8 %9)
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %9, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @FW_LDST_CMD_CTXTFLUSH_F, align 4
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %9, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load %struct.adapter*, %struct.adapter** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @t4_wr_mbox(%struct.adapter* %39, i32 %40, %struct.fw_ldst_cmd* %9, i32 24, %struct.fw_ldst_cmd* %9)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.fw_ldst_cmd*, i32, i32) #1

declare dso_local i32 @FW_LDST_CMD_ADDRSPACE_V(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_ldst_cmd*, i32, %struct.fw_ldst_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
