; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_link_l1cfg_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_link_l1cfg_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.link_config = type { i32, i64 }
%struct.fw_port_cmd = type { %struct.TYPE_8__, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }

@FW_PORT_CAP32_ANEG = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FW_PORT_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_EXEC_F = common dso_local global i32 0, align 4
@FW_CAPS16 = common dso_local global i32 0, align 4
@FW_PORT_ACTION_L1_CFG = common dso_local global i32 0, align 4
@FW_PORT_ACTION_L1_CFG32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Requested Port Capabilities %#x rejected, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_link_l1cfg_core(%struct.adapter* %0, i32 %1, i32 %2, %struct.link_config* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.link_config*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fw_port_cmd, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.link_config* %3, %struct.link_config** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.adapter*, %struct.adapter** %8, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load %struct.link_config*, %struct.link_config** %11, align 8
  %23 = getelementptr inbounds %struct.link_config, %struct.link_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FW_PORT_CAP32_ANEG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %6
  %29 = load %struct.link_config*, %struct.link_config** %11, align 8
  %30 = getelementptr inbounds %struct.link_config, %struct.link_config* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AUTONEG_ENABLE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %102

37:                                               ; preds = %28, %6
  %38 = load %struct.adapter*, %struct.adapter** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.link_config*, %struct.link_config** %11, align 8
  %41 = call i32 @t4_link_acaps(%struct.adapter* %38, i32 %39, %struct.link_config* %40)
  store i32 %41, i32* %16, align 4
  %42 = call i32 @memset(%struct.fw_port_cmd* %15, i32 0, i32 32)
  %43 = load i32, i32* @FW_PORT_CMD, align 4
  %44 = call i32 @FW_CMD_OP_V(i32 %43)
  %45 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @FW_CMD_EXEC_F, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @FW_PORT_CMD_PORTID_V(i32 %49)
  %51 = or i32 %48, %50
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %15, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @FW_CAPS16, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %37
  %58 = load i32, i32* @FW_PORT_ACTION_L1_CFG, align 4
  br label %61

59:                                               ; preds = %37
  %60 = load i32, i32* @FW_PORT_ACTION_L1_CFG32, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = call i32 @FW_PORT_CMD_ACTION_V(i32 %62)
  %64 = call i32 @FW_LEN16(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %15)
  %65 = or i32 %63, %64
  %66 = call i8* @cpu_to_be32(i32 %65)
  %67 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %15, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @FW_CAPS16, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @fwcaps32_to_caps16(i32 %72)
  %74 = call i8* @cpu_to_be32(i32 %73)
  %75 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %15, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i8* %74, i8** %77, align 8
  br label %84

78:                                               ; preds = %61
  %79 = load i32, i32* %16, align 4
  %80 = call i8* @cpu_to_be32(i32 %79)
  %81 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %15, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i8* %80, i8** %83, align 8
  br label %84

84:                                               ; preds = %78, %71
  %85 = load %struct.adapter*, %struct.adapter** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @t4_wr_mbox_meat_timeout(%struct.adapter* %85, i32 %86, %struct.fw_port_cmd* %15, i32 32, i32* null, i32 %87, i32 %88)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = load %struct.adapter*, %struct.adapter** %8, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %17, align 4
  %98 = sub nsw i32 0, %97
  %99 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %98)
  %100 = load i32, i32* %17, align 4
  store i32 %100, i32* %7, align 4
  br label %102

101:                                              ; preds = %84
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %101, %92, %34
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @t4_link_acaps(%struct.adapter*, i32, %struct.link_config*) #1

declare dso_local i32 @memset(%struct.fw_port_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_PORT_CMD_PORTID_V(i32) #1

declare dso_local i32 @FW_PORT_CMD_ACTION_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8) #1

declare dso_local i32 @fwcaps32_to_caps16(i32) #1

declare dso_local i32 @t4_wr_mbox_meat_timeout(%struct.adapter*, i32, %struct.fw_port_cmd*, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
