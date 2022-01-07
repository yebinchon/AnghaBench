; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c___qlcnic_sriov_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c___qlcnic_sriov_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_hardware_context*, %struct.TYPE_7__* }
%struct.qlcnic_hardware_context = type { i32, i32, %struct.TYPE_9__*, %struct.qlcnic_mailbox* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.qlcnic_mailbox = type { i32 }
%struct.TYPE_7__ = type { %struct.device }
%struct.device = type { i32 }
%struct.qlcnic_cmd_args = type { i64, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.qlcnic_bc_trans = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@QLC_BC_COMMAND = common dso_local global i32 0, align 4
@QLC_83XX_MBX_READY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"MBX not Ready!(cmd 0x%x) for VF 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"MBX command 0x%x timed out for VF %d\0A\00", align 1
@QLCNIC_RCODE_TIMEOUT = common dso_local global i32 0, align 4
@QLCNIC_BC_CMD_CHANNEL_INIT = common dso_local global i64 0, align 8
@QLCNIC_MBX_RSP_OK = common dso_local global i32 0, align 4
@QLCNIC_MBX_PORT_RSP_OK = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@QLC_83XX_MBX_CMD_NO_WAIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"MBX command 0x%x failed with err:0x%x for VF %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*)* @__qlcnic_sriov_issue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qlcnic_sriov_issue_cmd(%struct.qlcnic_adapter* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_cmd_args*, align 8
  %5 = alloca %struct.qlcnic_hardware_context*, align 8
  %6 = alloca %struct.qlcnic_mailbox*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.qlcnic_bc_trans*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %4, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 1
  %18 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %17, align 8
  store %struct.qlcnic_hardware_context* %18, %struct.qlcnic_hardware_context** %5, align 8
  %19 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %20 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %19, i32 0, i32 3
  %21 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %20, align 8
  store %struct.qlcnic_mailbox* %21, %struct.qlcnic_mailbox** %6, align 8
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store %struct.device* %25, %struct.device** %7, align 8
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 1
  %28 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %27, align 8
  %29 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  store i32 %34, i32* %14, align 4
  %35 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %36 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = call i32 @qlcnic_sriov_alloc_bc_trans(%struct.qlcnic_bc_trans** %8)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %168

42:                                               ; preds = %2
  %43 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %8, align 8
  %44 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @QLC_BC_COMMAND, align 4
  %47 = call i32 @qlcnic_sriov_prepare_bc_hdr(%struct.qlcnic_bc_trans* %43, %struct.qlcnic_cmd_args* %44, i32 %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %165

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %103, %51
  %53 = load i32, i32* @QLC_83XX_MBX_READY, align 4
  %54 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %6, align 8
  %55 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %54, i32 0, i32 0
  %56 = call i32 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %62 = load i32, i32* @DRV, align 4
  %63 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %64 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @QLCNIC_MBX_RSP(i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @QLCDB(%struct.qlcnic_adapter* %61, i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  br label %151

72:                                               ; preds = %52
  %73 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %74 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %8, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @qlcnic_sriov_send_bc_cmd(%struct.qlcnic_adapter* %73, %struct.qlcnic_bc_trans* %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %72
  %80 = load %struct.device*, %struct.device** %7, align 8
  %81 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %82 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 65535
  %88 = load i32, i32* %15, align 4
  %89 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* @QLCNIC_RCODE_TIMEOUT, align 4
  store i32 %90, i32* %13, align 4
  %91 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %8, align 8
  %92 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @QLCNIC_BC_CMD_CHANNEL_INIT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %79
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %100 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %8, align 8
  %101 = call i32 @qlcnic_sriov_retry_bc_cmd(%struct.qlcnic_adapter* %99, %struct.qlcnic_bc_trans* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  br label %52

104:                                              ; preds = %98, %79
  br label %151

105:                                              ; preds = %72
  %106 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %107 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @QLCNIC_MBX_STATUS(i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %115 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @QLCNIC_MBX_RSP(i32 %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @QLCNIC_MBX_RSP_OK, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %105
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @QLCNIC_MBX_PORT_RSP_OK, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124, %105
  %129 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  store i32 %129, i32* %13, align 4
  br label %150

130:                                              ; preds = %124
  %131 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %132 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @QLC_83XX_MBX_CMD_NO_WAIT, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  store i32 %137, i32* %13, align 4
  br label %149

138:                                              ; preds = %130
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  store i32 1, i32* %13, align 4
  br label %143

143:                                              ; preds = %142, %138
  %144 = load %struct.device*, %struct.device** %7, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %15, align 4
  %148 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %144, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %136
  br label %150

150:                                              ; preds = %149, %128
  br label %151

151:                                              ; preds = %150, %104, %58
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @QLCNIC_RCODE_TIMEOUT, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %157 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  %158 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  %160 = load i32, i32* @QLC_83XX_MBX_READY, align 4
  %161 = load %struct.qlcnic_mailbox*, %struct.qlcnic_mailbox** %6, align 8
  %162 = getelementptr inbounds %struct.qlcnic_mailbox, %struct.qlcnic_mailbox* %161, i32 0, i32 0
  %163 = call i32 @clear_bit(i32 %160, i32* %162)
  br label %164

164:                                              ; preds = %155, %151
  br label %165

165:                                              ; preds = %164, %50
  %166 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %8, align 8
  %167 = call i32 @qlcnic_sriov_cleanup_transaction(%struct.qlcnic_bc_trans* %166)
  br label %168

168:                                              ; preds = %165, %41
  %169 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %170 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @QLC_83XX_MBX_CMD_NO_WAIT, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  %175 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %176 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %175)
  %177 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %178 = call i32 @kfree(%struct.qlcnic_cmd_args* %177)
  br label %179

179:                                              ; preds = %174, %168
  %180 = load i32, i32* %13, align 4
  ret i32 %180
}

declare dso_local i32 @qlcnic_sriov_alloc_bc_trans(%struct.qlcnic_bc_trans**) #1

declare dso_local i32 @qlcnic_sriov_prepare_bc_hdr(%struct.qlcnic_bc_trans*, %struct.qlcnic_cmd_args*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @QLCDB(%struct.qlcnic_adapter*, i32, i8*, i32, i32) #1

declare dso_local i32 @QLCNIC_MBX_RSP(i32) #1

declare dso_local i32 @qlcnic_sriov_send_bc_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_bc_trans*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i32 @qlcnic_sriov_retry_bc_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_bc_trans*) #1

declare dso_local i32 @QLCNIC_MBX_STATUS(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sriov_cleanup_transaction(%struct.qlcnic_bc_trans*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @kfree(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
