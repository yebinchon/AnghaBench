; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_cmd_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_cmd_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@MLXSW_PCI_CIR_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@MLXSW_CMD_STATUS_OK = common dso_local global i32 0, align 4
@CIR_IN_PARAM_HI = common dso_local global i32 0, align 4
@CIR_IN_PARAM_LO = common dso_local global i32 0, align 4
@CIR_OUT_PARAM_HI = common dso_local global i32 0, align 4
@CIR_OUT_PARAM_LO = common dso_local global i32 0, align 4
@CIR_IN_MODIFIER = common dso_local global i32 0, align 4
@CIR_TOKEN = common dso_local global i32 0, align 4
@CIR_CTRL = common dso_local global i32 0, align 4
@MLXSW_PCI_CIR_CTRL_GO_BIT = common dso_local global i32 0, align 4
@MLXSW_PCI_CIR_CTRL_EVREQ_BIT = common dso_local global i32 0, align 4
@MLXSW_PCI_CIR_CTRL_OPCODE_MOD_SHIFT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MLXSW_PCI_CIR_CTRL_STATUS_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32, i8*, i64, i8*, i64, i32*)* @mlxsw_pci_cmd_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_cmd_exec(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6, i8* %7, i64 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.mlxsw_pci*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8, align 1
  store i8* %0, i8** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i8* %7, i8** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32* %9, i32** %21, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = bitcast i8* %32 to %struct.mlxsw_pci*
  store %struct.mlxsw_pci* %33, %struct.mlxsw_pci** %22, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %34 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %35 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %25, align 4
  %38 = load i32, i32* @MLXSW_PCI_CIR_TIMEOUT_MSECS, align 4
  %39 = call i64 @msecs_to_jiffies(i32 %38)
  store i64 %39, i64* %26, align 8
  %40 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %41 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  store i32* %42, i32** %27, align 8
  %43 = load i32, i32* @MLXSW_CMD_STATUS_OK, align 4
  %44 = load i32*, i32** %21, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %46 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = call i32 @mutex_lock_interruptible(i32* %47)
  store i32 %48, i32* %28, align 4
  %49 = load i32, i32* %28, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %10
  %52 = load i32, i32* %28, align 4
  store i32 %52, i32* %11, align 4
  br label %234

53:                                               ; preds = %10
  %54 = load i8*, i8** %17, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %58 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = load i64, i64* %18, align 8
  %64 = call i32 @memcpy(i8* %61, i8* %62, i64 %63)
  %65 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %66 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %23, align 4
  br label %70

70:                                               ; preds = %56, %53
  %71 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %72 = load i32, i32* @CIR_IN_PARAM_HI, align 4
  %73 = load i32, i32* %23, align 4
  %74 = call i32 @upper_32_bits(i32 %73)
  %75 = call i32 @mlxsw_pci_write32(%struct.mlxsw_pci* %71, i32 %72, i32 %74)
  %76 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %77 = load i32, i32* @CIR_IN_PARAM_LO, align 4
  %78 = load i32, i32* %23, align 4
  %79 = call i32 @lower_32_bits(i32 %78)
  %80 = call i32 @mlxsw_pci_write32(%struct.mlxsw_pci* %76, i32 %77, i32 %79)
  %81 = load i8*, i8** %19, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %70
  %84 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %85 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %24, align 4
  br label %89

89:                                               ; preds = %83, %70
  %90 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %91 = load i32, i32* @CIR_OUT_PARAM_HI, align 4
  %92 = load i32, i32* %24, align 4
  %93 = call i32 @upper_32_bits(i32 %92)
  %94 = call i32 @mlxsw_pci_write32(%struct.mlxsw_pci* %90, i32 %91, i32 %93)
  %95 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %96 = load i32, i32* @CIR_OUT_PARAM_LO, align 4
  %97 = load i32, i32* %24, align 4
  %98 = call i32 @lower_32_bits(i32 %97)
  %99 = call i32 @mlxsw_pci_write32(%struct.mlxsw_pci* %95, i32 %96, i32 %98)
  %100 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %101 = load i32, i32* @CIR_IN_MODIFIER, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @mlxsw_pci_write32(%struct.mlxsw_pci* %100, i32 %101, i32 %102)
  %104 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %105 = load i32, i32* @CIR_TOKEN, align 4
  %106 = call i32 @mlxsw_pci_write32(%struct.mlxsw_pci* %104, i32 %105, i32 0)
  %107 = load i32*, i32** %27, align 8
  store i32 0, i32* %107, align 4
  %108 = call i32 (...) @wmb()
  %109 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %110 = load i32, i32* @CIR_CTRL, align 4
  %111 = load i32, i32* @MLXSW_PCI_CIR_CTRL_GO_BIT, align 4
  %112 = load i32, i32* %25, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %89
  %115 = load i32, i32* @MLXSW_PCI_CIR_CTRL_EVREQ_BIT, align 4
  br label %117

116:                                              ; preds = %89
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ %115, %114 ], [ 0, %116 ]
  %119 = or i32 %111, %118
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @MLXSW_PCI_CIR_CTRL_OPCODE_MOD_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = or i32 %119, %122
  %124 = load i32, i32* %13, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @mlxsw_pci_write32(%struct.mlxsw_pci* %109, i32 %110, i32 %125)
  %127 = load i32, i32* %25, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %155, label %129

129:                                              ; preds = %117
  %130 = load i64, i64* @jiffies, align 8
  %131 = load i64, i64* %26, align 8
  %132 = add i64 %130, %131
  store i64 %132, i64* %29, align 8
  br label %133

133:                                              ; preds = %149, %129
  %134 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %135 = load i32, i32* @CIR_CTRL, align 4
  %136 = call i32 @mlxsw_pci_read32(%struct.mlxsw_pci* %134, i32 %135)
  store i32 %136, i32* %30, align 4
  %137 = load i32, i32* %30, align 4
  %138 = load i32, i32* @MLXSW_PCI_CIR_CTRL_GO_BIT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %133
  %142 = load i32*, i32** %27, align 8
  store i32 1, i32* %142, align 4
  %143 = load i32, i32* %30, align 4
  %144 = load i32, i32* @MLXSW_PCI_CIR_CTRL_STATUS_SHIFT, align 4
  %145 = ashr i32 %143, %144
  %146 = load i32*, i32** %21, align 8
  store i32 %145, i32* %146, align 4
  br label %154

147:                                              ; preds = %133
  %148 = call i32 (...) @cond_resched()
  br label %149

149:                                              ; preds = %147
  %150 = load i64, i64* @jiffies, align 8
  %151 = load i64, i64* %29, align 8
  %152 = call i64 @time_before(i64 %150, i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %133, label %154

154:                                              ; preds = %149, %141
  br label %170

155:                                              ; preds = %117
  %156 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %157 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %27, align 8
  %161 = load i32, i32* %160, align 4
  %162 = load i64, i64* %26, align 8
  %163 = call i32 @wait_event_timeout(i32 %159, i32 %161, i64 %162)
  %164 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %165 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32*, i32** %21, align 8
  store i32 %168, i32* %169, align 4
  br label %170

170:                                              ; preds = %155, %154
  store i32 0, i32* %28, align 4
  %171 = load i32*, i32** %27, align 8
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %170
  %175 = load i32*, i32** %21, align 8
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load i32, i32* @EIO, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %28, align 4
  br label %181

181:                                              ; preds = %178, %174
  br label %185

182:                                              ; preds = %170
  %183 = load i32, i32* @ETIMEDOUT, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %28, align 4
  br label %185

185:                                              ; preds = %182, %181
  %186 = load i32, i32* %28, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %212, label %188

188:                                              ; preds = %185
  %189 = load i8*, i8** %19, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %212

191:                                              ; preds = %188
  %192 = load i32, i32* %16, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %212

194:                                              ; preds = %191
  %195 = load i32, i32* %25, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %211, label %197

197:                                              ; preds = %194
  %198 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %199 = load i32, i32* @CIR_OUT_PARAM_HI, align 4
  %200 = call i32 @mlxsw_pci_read32(%struct.mlxsw_pci* %198, i32 %199)
  %201 = call signext i8 @cpu_to_be32(i32 %200)
  store i8 %201, i8* %31, align 1
  %202 = load i8*, i8** %19, align 8
  %203 = call i32 @memcpy(i8* %202, i8* %31, i64 1)
  %204 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %205 = load i32, i32* @CIR_OUT_PARAM_LO, align 4
  %206 = call i32 @mlxsw_pci_read32(%struct.mlxsw_pci* %204, i32 %205)
  %207 = call signext i8 @cpu_to_be32(i32 %206)
  store i8 %207, i8* %31, align 1
  %208 = load i8*, i8** %19, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = call i32 @memcpy(i8* %209, i8* %31, i64 1)
  br label %211

211:                                              ; preds = %197, %194
  br label %228

212:                                              ; preds = %191, %188, %185
  %213 = load i32, i32* %28, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %227, label %215

215:                                              ; preds = %212
  %216 = load i8*, i8** %19, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %227

218:                                              ; preds = %215
  %219 = load i8*, i8** %19, align 8
  %220 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %221 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = load i64, i64* %20, align 8
  %226 = call i32 @memcpy(i8* %219, i8* %224, i64 %225)
  br label %227

227:                                              ; preds = %218, %215, %212
  br label %228

228:                                              ; preds = %227, %211
  %229 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %22, align 8
  %230 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 2
  %232 = call i32 @mutex_unlock(i32* %231)
  %233 = load i32, i32* %28, align 4
  store i32 %233, i32* %11, align 4
  br label %234

234:                                              ; preds = %228, %51
  %235 = load i32, i32* %11, align 4
  ret i32 %235
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mlxsw_pci_write32(%struct.mlxsw_pci*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mlxsw_pci_read32(%struct.mlxsw_pci*, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i64) #1

declare dso_local signext i8 @cpu_to_be32(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
