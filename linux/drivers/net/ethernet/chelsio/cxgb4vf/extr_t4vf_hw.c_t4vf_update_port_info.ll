; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_update_port_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_update_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fw_port_cmd = type { i8*, i8* }

@FW_PORT_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4
@FW_CAPS16 = common dso_local global i32 0, align 4
@FW_PORT_ACTION_GET_PORT_INFO = common dso_local global i32 0, align 4
@FW_PORT_ACTION_GET_PORT_INFO32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_update_port_info(%struct.port_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.port_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_port_cmd, align 8
  %6 = alloca i32, align 4
  store %struct.port_info* %0, %struct.port_info** %3, align 8
  %7 = load %struct.port_info*, %struct.port_info** %3, align 8
  %8 = getelementptr inbounds %struct.port_info, %struct.port_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = call i32 @memset(%struct.fw_port_cmd* %5, i32 0, i32 16)
  %14 = load i32, i32* @FW_PORT_CMD, align 4
  %15 = call i32 @FW_CMD_OP_V(i32 %14)
  %16 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FW_CMD_READ_F, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.port_info*, %struct.port_info** %3, align 8
  %21 = getelementptr inbounds %struct.port_info, %struct.port_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @FW_PORT_CMD_PORTID_V(i32 %22)
  %24 = or i32 %19, %23
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %5, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @FW_CAPS16, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @FW_PORT_ACTION_GET_PORT_INFO, align 4
  br label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @FW_PORT_ACTION_GET_PORT_INFO32, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = call i32 @FW_PORT_CMD_ACTION_V(i32 %35)
  %37 = bitcast %struct.fw_port_cmd* %5 to { i8*, i8* }*
  %38 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %37, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @FW_LEN16(i8* %39, i8* %41)
  %43 = or i32 %36, %42
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %5, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load %struct.port_info*, %struct.port_info** %3, align 8
  %47 = getelementptr inbounds %struct.port_info, %struct.port_info* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @t4vf_wr_mbox(%struct.TYPE_4__* %48, %struct.fw_port_cmd* %5, i32 16, %struct.fw_port_cmd* %5)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %34
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %34
  %55 = load %struct.port_info*, %struct.port_info** %3, align 8
  %56 = call i32 @t4vf_handle_get_port_info(%struct.port_info* %55, %struct.fw_port_cmd* %5)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %52
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.fw_port_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_PORT_CMD_PORTID_V(i32) #1

declare dso_local i32 @FW_PORT_CMD_ACTION_V(i32) #1

declare dso_local i32 @FW_LEN16(i8*, i8*) #1

declare dso_local i32 @t4vf_wr_mbox(%struct.TYPE_4__*, %struct.fw_port_cmd*, i32, %struct.fw_port_cmd*) #1

declare dso_local i32 @t4vf_handle_get_port_info(%struct.port_info*, %struct.fw_port_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
