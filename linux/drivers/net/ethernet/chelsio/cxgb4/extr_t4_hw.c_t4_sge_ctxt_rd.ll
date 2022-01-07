; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_sge_ctxt_rd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_sge_ctxt_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_ldst_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i8* }

@CTXT_FLM = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_SGE_FLMC = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_SGE_CONMC = common dso_local global i32 0, align 4
@FW_LDST_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sge_ctxt_rd(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.fw_ldst_cmd, align 8
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @CTXT_FLM, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @FW_LDST_ADDRSPC_SGE_FLMC, align 4
  store i32 %17, i32* %12, align 4
  br label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @FW_LDST_ADDRSPC_SGE_CONMC, align 4
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = call i32 @memset(%struct.fw_ldst_cmd* %11, i32 0, i32 48)
  %22 = load i32, i32* @FW_LDST_CMD, align 4
  %23 = call i32 @FW_CMD_OP_V(i32 %22)
  %24 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @FW_CMD_READ_F, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @FW_LDST_CMD_ADDRSPACE_V(i32 %28)
  %30 = or i32 %27, %29
  %31 = call i8* @cpu_to_be32(i32 %30)
  %32 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %11, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = call i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8 %11)
  %34 = call i8* @cpu_to_be32(i32 %33)
  %35 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %11, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %11, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 6
  store i8* %37, i8** %40, align 8
  %41 = load %struct.adapter*, %struct.adapter** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @t4_wr_mbox(%struct.adapter* %41, i32 %42, %struct.fw_ldst_cmd* %11, i32 48, %struct.fw_ldst_cmd* %11)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %89

46:                                               ; preds = %20
  %47 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %11, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @be32_to_cpu(i32 %50)
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %11, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @be32_to_cpu(i32 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %11, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be32_to_cpu(i32 %64)
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %11, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @be32_to_cpu(i32 %71)
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %11, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @be32_to_cpu(i32 %78)
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  store i32 %79, i32* %81, align 4
  %82 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %11, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @be32_to_cpu(i32 %85)
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %46, %20
  %90 = load i32, i32* %12, align 4
  ret i32 %90
}

declare dso_local i32 @memset(%struct.fw_ldst_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LDST_CMD_ADDRSPACE_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_ldst_cmd*, i32, %struct.fw_ldst_cmd*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
