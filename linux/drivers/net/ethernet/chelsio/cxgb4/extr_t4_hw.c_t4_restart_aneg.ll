; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_restart_aneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_restart_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.fw_port_cmd = type { %struct.TYPE_7__, i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@FW_PORT_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_EXEC_F = common dso_local global i32 0, align 4
@FW_CAPS16 = common dso_local global i32 0, align 4
@FW_PORT_ACTION_L1_CFG = common dso_local global i32 0, align 4
@FW_PORT_ACTION_L1_CFG32 = common dso_local global i32 0, align 4
@FW_PORT_CAP_ANEG = common dso_local global i32 0, align 4
@FW_PORT_CAP32_ANEG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_restart_aneg(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_port_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = call i32 @memset(%struct.fw_port_cmd* %8, i32 0, i32 32)
  %14 = load i32, i32* @FW_PORT_CMD, align 4
  %15 = call i32 @FW_CMD_OP_V(i32 %14)
  %16 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FW_CMD_EXEC_F, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @FW_PORT_CMD_PORTID_V(i32 %20)
  %22 = or i32 %19, %21
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %8, i32 0, i32 2
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @FW_CAPS16, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @FW_PORT_ACTION_L1_CFG, align 4
  br label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @FW_PORT_ACTION_L1_CFG32, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @FW_PORT_CMD_ACTION_V(i32 %33)
  %35 = call i32 @FW_LEN16(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %8)
  %36 = or i32 %34, %35
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %8, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @FW_CAPS16, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load i32, i32* @FW_PORT_CAP_ANEG, align 4
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %8, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  br label %54

48:                                               ; preds = %32
  %49 = load i32, i32* @FW_PORT_CAP32_ANEG, align 4
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %8, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.adapter*, %struct.adapter** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @t4_wr_mbox(%struct.adapter* %55, i32 %56, %struct.fw_port_cmd* %8, i32 32, i32* null)
  ret i32 %57
}

declare dso_local i32 @memset(%struct.fw_port_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_PORT_CMD_PORTID_V(i32) #1

declare dso_local i32 @FW_PORT_CMD_ACTION_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_port_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
