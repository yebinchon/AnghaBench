; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fw_hello.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fw_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_hello_cmd = type { i32 }

@FW_CMD_HELLO_RETRIES = common dso_local global i32 0, align 4
@HELLO = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@MASTER_CANT = common dso_local global i32 0, align 4
@MASTER_MUST = common dso_local global i32 0, align 4
@FW_HELLO_CMD_MBMASTER_M = common dso_local global i32 0, align 4
@fw_hello_cmd_stage_os = common dso_local global i32 0, align 4
@FW_HELLO_CMD_CLEARINIT_F = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@PCIE_FW_A = common dso_local global i32 0, align 4
@PCIE_FW_ERR_F = common dso_local global i32 0, align 4
@FW_HELLO_CMD_ERR_F = common dso_local global i32 0, align 4
@DEV_STATE_ERR = common dso_local global i32 0, align 4
@FW_HELLO_CMD_INIT_F = common dso_local global i32 0, align 4
@DEV_STATE_INIT = common dso_local global i32 0, align 4
@DEV_STATE_UNINIT = common dso_local global i32 0, align 4
@FW_CMD_HELLO_TIMEOUT = common dso_local global i32 0, align 4
@PCIE_FW_INIT_F = common dso_local global i32 0, align 4
@PCIE_FW_MASTER_M = common dso_local global i32 0, align 4
@PCIE_FW_MASTER_VLD_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_fw_hello(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fw_hello_cmd, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load i32, i32* @FW_CMD_HELLO_RETRIES, align 4
  store i32 %19, i32* %16, align 4
  br label %20

20:                                               ; preds = %153, %78, %5
  %21 = call i32 @memset(%struct.fw_hello_cmd* %13, i32 0, i32 4)
  %22 = load i32, i32* @HELLO, align 4
  %23 = load i32, i32* @WRITE, align 4
  %24 = getelementptr inbounds %struct.fw_hello_cmd, %struct.fw_hello_cmd* %13, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @INIT_CMD(i32 %25, i32 %22, i32 %23)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @MASTER_CANT, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @FW_HELLO_CMD_MASTERDIS_V(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @MASTER_MUST, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @FW_HELLO_CMD_MASTERFORCE_V(i32 %35)
  %37 = or i32 %31, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @MASTER_MUST, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %20
  %42 = load i32, i32* %8, align 4
  br label %45

43:                                               ; preds = %20
  %44 = load i32, i32* @FW_HELLO_CMD_MBMASTER_M, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = call i32 @FW_HELLO_CMD_MBMASTER_V(i32 %46)
  %48 = or i32 %37, %47
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @FW_HELLO_CMD_MBASYNCNOT_V(i32 %49)
  %51 = or i32 %48, %50
  %52 = load i32, i32* @fw_hello_cmd_stage_os, align 4
  %53 = call i32 @FW_HELLO_CMD_STAGE_V(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @FW_HELLO_CMD_CLEARINIT_F, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @cpu_to_be32(i32 %56)
  %58 = getelementptr inbounds %struct.fw_hello_cmd, %struct.fw_hello_cmd* %13, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.adapter*, %struct.adapter** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @t4_wr_mbox(%struct.adapter* %59, i32 %60, %struct.fw_hello_cmd* %13, i32 4, %struct.fw_hello_cmd* %13)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %45
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @ETIMEDOUT, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %16, align 4
  %77 = icmp sgt i32 %75, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %20

79:                                               ; preds = %74, %69
  %80 = load %struct.adapter*, %struct.adapter** %7, align 8
  %81 = load i32, i32* @PCIE_FW_A, align 4
  %82 = call i32 @t4_read_reg(%struct.adapter* %80, i32 %81)
  %83 = load i32, i32* @PCIE_FW_ERR_F, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load %struct.adapter*, %struct.adapter** %7, align 8
  %88 = call i32 @t4_report_fw_error(%struct.adapter* %87)
  br label %89

89:                                               ; preds = %86, %79
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %6, align 4
  br label %195

91:                                               ; preds = %45
  %92 = getelementptr inbounds %struct.fw_hello_cmd, %struct.fw_hello_cmd* %13, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @be32_to_cpu(i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @FW_HELLO_CMD_MBMASTER_G(i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %120

99:                                               ; preds = %91
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @FW_HELLO_CMD_ERR_F, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @DEV_STATE_ERR, align 4
  %106 = load i32*, i32** %11, align 8
  store i32 %105, i32* %106, align 4
  br label %119

107:                                              ; preds = %99
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @FW_HELLO_CMD_INIT_F, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* @DEV_STATE_INIT, align 4
  %114 = load i32*, i32** %11, align 8
  store i32 %113, i32* %114, align 4
  br label %118

115:                                              ; preds = %107
  %116 = load i32, i32* @DEV_STATE_UNINIT, align 4
  %117 = load i32*, i32** %11, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %104
  br label %120

120:                                              ; preds = %119, %91
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* @FW_HELLO_CMD_ERR_F, align 4
  %123 = load i32, i32* @FW_HELLO_CMD_INIT_F, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %193

127:                                              ; preds = %120
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %193

131:                                              ; preds = %127
  %132 = load i32, i32* @FW_CMD_HELLO_TIMEOUT, align 4
  store i32 %132, i32* %17, align 4
  br label %133

133:                                              ; preds = %157, %131
  %134 = call i32 @msleep(i32 50)
  %135 = load i32, i32* %17, align 4
  %136 = sub nsw i32 %135, 50
  store i32 %136, i32* %17, align 4
  %137 = load %struct.adapter*, %struct.adapter** %7, align 8
  %138 = load i32, i32* @PCIE_FW_A, align 4
  %139 = call i32 @t4_read_reg(%struct.adapter* %137, i32 %138)
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* @PCIE_FW_ERR_F, align 4
  %142 = load i32, i32* @PCIE_FW_INIT_F, align 4
  %143 = or i32 %141, %142
  %144 = and i32 %140, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %133
  %147 = load i32, i32* %17, align 4
  %148 = icmp sle i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %16, align 4
  %152 = icmp sgt i32 %150, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %20

154:                                              ; preds = %149
  %155 = load i32, i32* @ETIMEDOUT, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %6, align 4
  br label %195

157:                                              ; preds = %146
  br label %133

158:                                              ; preds = %133
  %159 = load i32*, i32** %11, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %179

161:                                              ; preds = %158
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* @PCIE_FW_ERR_F, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32, i32* @DEV_STATE_ERR, align 4
  %168 = load i32*, i32** %11, align 8
  store i32 %167, i32* %168, align 4
  br label %178

169:                                              ; preds = %161
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* @PCIE_FW_INIT_F, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load i32, i32* @DEV_STATE_INIT, align 4
  %176 = load i32*, i32** %11, align 8
  store i32 %175, i32* %176, align 4
  br label %177

177:                                              ; preds = %174, %169
  br label %178

178:                                              ; preds = %177, %166
  br label %179

179:                                              ; preds = %178, %158
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* @PCIE_FW_MASTER_M, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %179
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* @PCIE_FW_MASTER_VLD_F, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load i32, i32* %18, align 4
  %190 = call i32 @PCIE_FW_MASTER_G(i32 %189)
  store i32 %190, i32* %15, align 4
  br label %191

191:                                              ; preds = %188, %183, %179
  br label %192

192:                                              ; preds = %191
  br label %193

193:                                              ; preds = %192, %127, %120
  %194 = load i32, i32* %15, align 4
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %193, %154, %89
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local i32 @memset(%struct.fw_hello_cmd*, i32, i32) #1

declare dso_local i32 @INIT_CMD(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @FW_HELLO_CMD_MASTERDIS_V(i32) #1

declare dso_local i32 @FW_HELLO_CMD_MASTERFORCE_V(i32) #1

declare dso_local i32 @FW_HELLO_CMD_MBMASTER_V(i32) #1

declare dso_local i32 @FW_HELLO_CMD_MBASYNCNOT_V(i32) #1

declare dso_local i32 @FW_HELLO_CMD_STAGE_V(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_hello_cmd*, i32, %struct.fw_hello_cmd*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t4_report_fw_error(%struct.adapter*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @FW_HELLO_CMD_MBMASTER_G(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @PCIE_FW_MASTER_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
