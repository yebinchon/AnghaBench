; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_get_vfres.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_get_vfres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vf_resources }
%struct.vf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fw_pfvf_cmd = type { i32, i32, i32, i32, i8*, i8* }

@FW_PFVF_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_get_vfres(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.vf_resources*, align 8
  %5 = alloca %struct.fw_pfvf_cmd, align 8
  %6 = alloca %struct.fw_pfvf_cmd, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.vf_resources* %11, %struct.vf_resources** %4, align 8
  %12 = call i32 @memset(%struct.fw_pfvf_cmd* %5, i32 0, i32 32)
  %13 = load i32, i32* @FW_PFVF_CMD, align 4
  %14 = call i32 @FW_CMD_OP_V(i32 %13)
  %15 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FW_CMD_READ_F, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %5, i32 0, i32 5
  store i8* %19, i8** %20, align 8
  %21 = call i32 @FW_LEN16(%struct.fw_pfvf_cmd* byval(%struct.fw_pfvf_cmd) align 8 %5)
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %5, i32 0, i32 4
  store i8* %22, i8** %23, align 8
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = call i32 @t4vf_wr_mbox(%struct.adapter* %24, %struct.fw_pfvf_cmd* %5, i32 32, %struct.fw_pfvf_cmd* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %83

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %6, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be32_to_cpu(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @FW_PFVF_CMD_NIQFLINT_G(i32 %34)
  %36 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %37 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @FW_PFVF_CMD_NIQ_G(i32 %38)
  %40 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %41 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %6, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @be32_to_cpu(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @FW_PFVF_CMD_NEQ_G(i32 %45)
  %47 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %48 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @FW_PFVF_CMD_PMASK_G(i32 %49)
  %51 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %52 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %6, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be32_to_cpu(i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @FW_PFVF_CMD_TC_G(i32 %56)
  %58 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %59 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @FW_PFVF_CMD_NVI_G(i32 %60)
  %62 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %63 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @FW_PFVF_CMD_NEXACTF_G(i32 %64)
  %66 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %67 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @be32_to_cpu(i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @FW_PFVF_CMD_R_CAPS_G(i32 %71)
  %73 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %74 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @FW_PFVF_CMD_WX_CAPS_G(i32 %75)
  %77 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %78 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @FW_PFVF_CMD_NETHCTRL_G(i32 %79)
  %81 = load %struct.vf_resources*, %struct.vf_resources** %4, align 8
  %82 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %30, %28
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @memset(%struct.fw_pfvf_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_pfvf_cmd* byval(%struct.fw_pfvf_cmd) align 8) #1

declare dso_local i32 @t4vf_wr_mbox(%struct.adapter*, %struct.fw_pfvf_cmd*, i32, %struct.fw_pfvf_cmd*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @FW_PFVF_CMD_NIQFLINT_G(i32) #1

declare dso_local i32 @FW_PFVF_CMD_NIQ_G(i32) #1

declare dso_local i32 @FW_PFVF_CMD_NEQ_G(i32) #1

declare dso_local i32 @FW_PFVF_CMD_PMASK_G(i32) #1

declare dso_local i32 @FW_PFVF_CMD_TC_G(i32) #1

declare dso_local i32 @FW_PFVF_CMD_NVI_G(i32) #1

declare dso_local i32 @FW_PFVF_CMD_NEXACTF_G(i32) #1

declare dso_local i32 @FW_PFVF_CMD_R_CAPS_G(i32) #1

declare dso_local i32 @FW_PFVF_CMD_WX_CAPS_G(i32) #1

declare dso_local i32 @FW_PFVF_CMD_NETHCTRL_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
