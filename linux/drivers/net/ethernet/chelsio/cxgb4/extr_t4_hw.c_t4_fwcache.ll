; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fwcache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fwcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.fw_params_cmd = type { %struct.TYPE_2__*, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i8* }

@FW_PARAMS_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@FW_PARAMS_MNEM_DEV = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DEV_FWCACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_fwcache(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_params_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @memset(%struct.fw_params_cmd* %5, i32 0, i32 24)
  %7 = load i32, i32* @FW_PARAMS_CMD, align 4
  %8 = call i32 @FW_CMD_OP_V(i32 %7)
  %9 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @FW_PARAMS_CMD_PFN_V(i32 %15)
  %17 = or i32 %12, %16
  %18 = call i32 @FW_PARAMS_CMD_VFN_V(i32 0)
  %19 = or i32 %17, %18
  %20 = call i8* @cpu_to_be32(i32 %19)
  %21 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %5, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = call i32 @FW_LEN16(%struct.fw_params_cmd* byval(%struct.fw_params_cmd) align 8 %5)
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %5, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* @FW_PARAMS_MNEM_DEV, align 4
  %26 = call i32 @FW_PARAMS_MNEM_V(i32 %25)
  %27 = load i32, i32* @FW_PARAMS_PARAM_DEV_FWCACHE, align 4
  %28 = call i32 @FW_PARAMS_PARAM_X_V(i32 %27)
  %29 = or i32 %26, %28
  %30 = call i8* @cpu_to_be32(i32 %29)
  %31 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %5, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i8* %30, i8** %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i8* @cpu_to_be32(i32 %35)
  %37 = getelementptr inbounds %struct.fw_params_cmd, %struct.fw_params_cmd* %5, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8* %36, i8** %40, align 8
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = load %struct.adapter*, %struct.adapter** %3, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @t4_wr_mbox(%struct.adapter* %41, i32 %44, %struct.fw_params_cmd* %5, i32 24, i32* null)
  ret i32 %45
}

declare dso_local i32 @memset(%struct.fw_params_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_PARAMS_CMD_PFN_V(i32) #1

declare dso_local i32 @FW_PARAMS_CMD_VFN_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_params_cmd* byval(%struct.fw_params_cmd) align 8) #1

declare dso_local i32 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_params_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
