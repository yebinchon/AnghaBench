; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_get_pfres.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_get_pfres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pf_resources }
%struct.pf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fw_pfvf_cmd = type { i32, i32, i32, i32, i8*, i8* }

@FW_PFVF_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4
@FW_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_get_pfres(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.pf_resources*, align 8
  %5 = alloca %struct.fw_pfvf_cmd, align 8
  %6 = alloca %struct.fw_pfvf_cmd, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.pf_resources* %11, %struct.pf_resources** %4, align 8
  %12 = call i32 @memset(%struct.fw_pfvf_cmd* %5, i32 0, i32 32)
  %13 = load i32, i32* @FW_PFVF_CMD, align 4
  %14 = call i32 @FW_CMD_OP_V(i32 %13)
  %15 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FW_CMD_READ_F, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @FW_PFVF_CMD_PFN_V(i32 %21)
  %23 = or i32 %18, %22
  %24 = call i32 @FW_PFVF_CMD_VFN_V(i32 0)
  %25 = or i32 %23, %24
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %5, i32 0, i32 5
  store i8* %26, i8** %27, align 8
  %28 = call i32 @FW_LEN16(%struct.fw_pfvf_cmd* byval(%struct.fw_pfvf_cmd) align 8 %5)
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %5, i32 0, i32 4
  store i8* %29, i8** %30, align 8
  %31 = load %struct.adapter*, %struct.adapter** %3, align 8
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @t4_wr_mbox(%struct.adapter* %31, i32 %34, %struct.fw_pfvf_cmd* %5, i32 32, %struct.fw_pfvf_cmd* %6)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @FW_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %94

41:                                               ; preds = %1
  %42 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %6, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @FW_PFVF_CMD_NIQFLINT_G(i32 %45)
  %47 = load %struct.pf_resources*, %struct.pf_resources** %4, align 8
  %48 = getelementptr inbounds %struct.pf_resources, %struct.pf_resources* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @FW_PFVF_CMD_NIQ_G(i32 %49)
  %51 = load %struct.pf_resources*, %struct.pf_resources** %4, align 8
  %52 = getelementptr inbounds %struct.pf_resources, %struct.pf_resources* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %6, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @be32_to_cpu(i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @FW_PFVF_CMD_NEQ_G(i32 %56)
  %58 = load %struct.pf_resources*, %struct.pf_resources** %4, align 8
  %59 = getelementptr inbounds %struct.pf_resources, %struct.pf_resources* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @FW_PFVF_CMD_PMASK_G(i32 %60)
  %62 = load %struct.pf_resources*, %struct.pf_resources** %4, align 8
  %63 = getelementptr inbounds %struct.pf_resources, %struct.pf_resources* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %6, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @be32_to_cpu(i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @FW_PFVF_CMD_TC_G(i32 %67)
  %69 = load %struct.pf_resources*, %struct.pf_resources** %4, align 8
  %70 = getelementptr inbounds %struct.pf_resources, %struct.pf_resources* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @FW_PFVF_CMD_NVI_G(i32 %71)
  %73 = load %struct.pf_resources*, %struct.pf_resources** %4, align 8
  %74 = getelementptr inbounds %struct.pf_resources, %struct.pf_resources* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @FW_PFVF_CMD_NEXACTF_G(i32 %75)
  %77 = load %struct.pf_resources*, %struct.pf_resources** %4, align 8
  %78 = getelementptr inbounds %struct.pf_resources, %struct.pf_resources* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds %struct.fw_pfvf_cmd, %struct.fw_pfvf_cmd* %6, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @be32_to_cpu(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @FW_PFVF_CMD_R_CAPS_G(i32 %82)
  %84 = load %struct.pf_resources*, %struct.pf_resources** %4, align 8
  %85 = getelementptr inbounds %struct.pf_resources, %struct.pf_resources* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @FW_PFVF_CMD_WX_CAPS_G(i32 %86)
  %88 = load %struct.pf_resources*, %struct.pf_resources** %4, align 8
  %89 = getelementptr inbounds %struct.pf_resources, %struct.pf_resources* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @FW_PFVF_CMD_NETHCTRL_G(i32 %90)
  %92 = load %struct.pf_resources*, %struct.pf_resources** %4, align 8
  %93 = getelementptr inbounds %struct.pf_resources, %struct.pf_resources* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %41, %39
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @memset(%struct.fw_pfvf_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_PFVF_CMD_PFN_V(i32) #1

declare dso_local i32 @FW_PFVF_CMD_VFN_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_pfvf_cmd* byval(%struct.fw_pfvf_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_pfvf_cmd*, i32, %struct.fw_pfvf_cmd*) #1

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
