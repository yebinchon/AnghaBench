; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_enable_vi_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_enable_vi_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_vi_enable_cmd = type { i8*, i8* }

@FW_VI_ENABLE_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_EXEC_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_enable_vi_params(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fw_vi_enable_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = call i32 @memset(%struct.fw_vi_enable_cmd* %13, i32 0, i32 16)
  %15 = load i32, i32* @FW_VI_ENABLE_CMD, align 4
  %16 = call i32 @FW_CMD_OP_V(i32 %15)
  %17 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @FW_CMD_EXEC_F, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @FW_VI_ENABLE_CMD_VIID_V(i32 %21)
  %23 = or i32 %20, %22
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = getelementptr inbounds %struct.fw_vi_enable_cmd, %struct.fw_vi_enable_cmd* %13, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @FW_VI_ENABLE_CMD_IEN_V(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @FW_VI_ENABLE_CMD_EEN_V(i32 %28)
  %30 = or i32 %27, %29
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @FW_VI_ENABLE_CMD_DCB_INFO_V(i32 %31)
  %33 = or i32 %30, %32
  %34 = bitcast %struct.fw_vi_enable_cmd* %13 to { i8*, i8* }*
  %35 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %34, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @FW_LEN16(i8* %36, i8* %38)
  %40 = or i32 %33, %39
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = getelementptr inbounds %struct.fw_vi_enable_cmd, %struct.fw_vi_enable_cmd* %13, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load %struct.adapter*, %struct.adapter** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @t4_wr_mbox_ns(%struct.adapter* %43, i32 %44, %struct.fw_vi_enable_cmd* %13, i32 16, i32* null)
  ret i32 %45
}

declare dso_local i32 @memset(%struct.fw_vi_enable_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_VI_ENABLE_CMD_VIID_V(i32) #1

declare dso_local i32 @FW_VI_ENABLE_CMD_IEN_V(i32) #1

declare dso_local i32 @FW_VI_ENABLE_CMD_EEN_V(i32) #1

declare dso_local i32 @FW_VI_ENABLE_CMD_DCB_INFO_V(i32) #1

declare dso_local i32 @FW_LEN16(i8*, i8*) #1

declare dso_local i32 @t4_wr_mbox_ns(%struct.adapter*, i32, %struct.fw_vi_enable_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
