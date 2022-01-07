; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_enable_vi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_enable_vi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_vi_enable_cmd = type { i8*, i8* }

@FW_VI_ENABLE_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_EXEC_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_enable_vi(%struct.adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fw_vi_enable_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @memset(%struct.fw_vi_enable_cmd* %9, i32 0, i32 16)
  %11 = load i32, i32* @FW_VI_ENABLE_CMD, align 4
  %12 = call i32 @FW_CMD_OP_V(i32 %11)
  %13 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FW_CMD_EXEC_F, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @FW_VI_ENABLE_CMD_VIID_V(i32 %17)
  %19 = or i32 %16, %18
  %20 = call i8* @cpu_to_be32(i32 %19)
  %21 = getelementptr inbounds %struct.fw_vi_enable_cmd, %struct.fw_vi_enable_cmd* %9, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @FW_VI_ENABLE_CMD_IEN_V(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @FW_VI_ENABLE_CMD_EEN_V(i32 %24)
  %26 = or i32 %23, %25
  %27 = bitcast %struct.fw_vi_enable_cmd* %9 to { i8*, i8* }*
  %28 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %27, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @FW_LEN16(i8* %29, i8* %31)
  %33 = or i32 %26, %32
  %34 = call i8* @cpu_to_be32(i32 %33)
  %35 = getelementptr inbounds %struct.fw_vi_enable_cmd, %struct.fw_vi_enable_cmd* %9, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load %struct.adapter*, %struct.adapter** %5, align 8
  %37 = call i32 @t4vf_wr_mbox(%struct.adapter* %36, %struct.fw_vi_enable_cmd* %9, i32 16, i32* null)
  ret i32 %37
}

declare dso_local i32 @memset(%struct.fw_vi_enable_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_VI_ENABLE_CMD_VIID_V(i32) #1

declare dso_local i32 @FW_VI_ENABLE_CMD_IEN_V(i32) #1

declare dso_local i32 @FW_VI_ENABLE_CMD_EEN_V(i32) #1

declare dso_local i32 @FW_LEN16(i8*, i8*) #1

declare dso_local i32 @t4vf_wr_mbox(%struct.adapter*, %struct.fw_vi_enable_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
