; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.fm10k_intfc = type { %struct.fm10k_hw }
%struct.fm10k_hw = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FM10K_CTRL = common dso_local global i32 0, align 4
@FM10K_CTRL_EXT = common dso_local global i32 0, align 4
@FM10K_GCR = common dso_local global i32 0, align 4
@FM10K_GCR_EXT = common dso_local global i32 0, align 4
@FM10K_REGS_LEN_VSI = common dso_local global i32 0, align 4
@FM10K_DMA_CTRL = common dso_local global i32 0, align 4
@FM10K_DMA_CTRL2 = common dso_local global i32 0, align 4
@FM10K_MAX_QUEUES_PF = common dso_local global i32 0, align 4
@FM10K_REGS_LEN_Q = common dso_local global i32 0, align 4
@FM10K_TPH_CTRL = common dso_local global i32 0, align 4
@FM10K_VFCTRL = common dso_local global i32 0, align 4
@FM10K_VFINT_MAP = common dso_local global i32 0, align 4
@FM10K_VFSYSTIME = common dso_local global i32 0, align 4
@FM10K_MAX_QUEUES_POOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @fm10k_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fm10k_intfc*, align 8
  %8 = alloca %struct.fm10k_hw*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %11)
  store %struct.fm10k_intfc* %12, %struct.fm10k_intfc** %7, align 8
  %13 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %14 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %13, i32 0, i32 0
  store %struct.fm10k_hw* %14, %struct.fm10k_hw** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = call i32 @BIT(i32 24)
  %18 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %19 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 16
  %22 = or i32 %17, %21
  %23 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %24 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  %27 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %30 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %234 [
    i32 129, label %33
    i32 128, label %161
  ]

33:                                               ; preds = %3
  %34 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %35 = load i32, i32* @FM10K_CTRL, align 4
  %36 = call i8* @fm10k_read_reg(%struct.fm10k_hw* %34, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %40 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %41 = load i32, i32* @FM10K_CTRL_EXT, align 4
  %42 = call i8* @fm10k_read_reg(%struct.fm10k_hw* %40, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %46 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %47 = load i32, i32* @FM10K_GCR, align 4
  %48 = call i8* @fm10k_read_reg(%struct.fm10k_hw* %46, i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %52 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %53 = load i32, i32* @FM10K_GCR_EXT, align 4
  %54 = call i8* @fm10k_read_reg(%struct.fm10k_hw* %52, i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %76, %33
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 8
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @FM10K_DGLORTMAP(i32 %63)
  %65 = call i8* @fm10k_read_reg(%struct.fm10k_hw* %62, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  %69 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @FM10K_DGLORTDEC(i32 %70)
  %72 = call i8* @fm10k_read_reg(%struct.fm10k_hw* %69, i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  br label %76

76:                                               ; preds = %61
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %58

79:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %92, %79
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 65
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @fm10k_get_reg_vsi(%struct.fm10k_hw* %84, i32* %85, i32 %86)
  %88 = load i32, i32* @FM10K_REGS_LEN_VSI, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %9, align 8
  br label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %80

95:                                               ; preds = %80
  %96 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %97 = load i32, i32* @FM10K_DMA_CTRL, align 4
  %98 = call i8* @fm10k_read_reg(%struct.fm10k_hw* %96, i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %9, align 8
  store i32 %99, i32* %100, align 4
  %102 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %103 = load i32, i32* @FM10K_DMA_CTRL2, align 4
  %104 = call i8* @fm10k_read_reg(%struct.fm10k_hw* %102, i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %121, %95
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @FM10K_MAX_QUEUES_PF, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %108
  %113 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @fm10k_get_reg_q(%struct.fm10k_hw* %113, i32* %114, i32 %115)
  %117 = load i32, i32* @FM10K_REGS_LEN_Q, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %9, align 8
  br label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %108

124:                                              ; preds = %108
  %125 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %126 = load i32, i32* @FM10K_TPH_CTRL, align 4
  %127 = call i8* @fm10k_read_reg(%struct.fm10k_hw* %125, i32 %126)
  %128 = ptrtoint i8* %127 to i32
  %129 = load i32*, i32** %9, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %9, align 8
  store i32 %128, i32* %129, align 4
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %142, %124
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 8
  br i1 %133, label %134, label %145

134:                                              ; preds = %131
  %135 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @FM10K_INT_MAP(i32 %136)
  %138 = call i8* @fm10k_read_reg(%struct.fm10k_hw* %135, i32 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load i32*, i32** %9, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %9, align 8
  store i32 %139, i32* %140, align 4
  br label %142

142:                                              ; preds = %134
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %131

145:                                              ; preds = %131
  store i32 0, i32* %10, align 4
  br label %146

146:                                              ; preds = %157, %145
  %147 = load i32, i32* %10, align 4
  %148 = icmp slt i32 %147, 130
  br i1 %148, label %149, label %160

149:                                              ; preds = %146
  %150 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @FM10K_ITR(i32 %151)
  %153 = call i8* @fm10k_read_reg(%struct.fm10k_hw* %150, i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %9, align 8
  store i32 %154, i32* %155, align 4
  br label %157

157:                                              ; preds = %149
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %146

160:                                              ; preds = %146
  br label %235

161:                                              ; preds = %3
  %162 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %163 = load i32, i32* @FM10K_VFCTRL, align 4
  %164 = call i8* @fm10k_read_reg(%struct.fm10k_hw* %162, i32 %163)
  %165 = ptrtoint i8* %164 to i32
  %166 = load i32*, i32** %9, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %9, align 8
  store i32 %165, i32* %166, align 4
  %168 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %169 = load i32, i32* @FM10K_VFINT_MAP, align 4
  %170 = call i8* @fm10k_read_reg(%struct.fm10k_hw* %168, i32 %169)
  %171 = ptrtoint i8* %170 to i32
  %172 = load i32*, i32** %9, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %9, align 8
  store i32 %171, i32* %172, align 4
  %174 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %175 = load i32, i32* @FM10K_VFSYSTIME, align 4
  %176 = call i8* @fm10k_read_reg(%struct.fm10k_hw* %174, i32 %175)
  %177 = ptrtoint i8* %176 to i32
  %178 = load i32*, i32** %9, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %9, align 8
  store i32 %177, i32* %178, align 4
  store i32 0, i32* %10, align 4
  br label %180

180:                                              ; preds = %191, %161
  %181 = load i32, i32* %10, align 4
  %182 = icmp slt i32 %181, 8
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @FM10K_VFITR(i32 %185)
  %187 = call i8* @fm10k_read_reg(%struct.fm10k_hw* %184, i32 %186)
  %188 = ptrtoint i8* %187 to i32
  %189 = load i32*, i32** %9, align 8
  %190 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %190, i32** %9, align 8
  store i32 %188, i32* %189, align 4
  br label %191

191:                                              ; preds = %183
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %10, align 4
  br label %180

194:                                              ; preds = %180
  %195 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %196 = load i32*, i32** %9, align 8
  %197 = call i32 @fm10k_get_reg_vsi(%struct.fm10k_hw* %195, i32* %196, i32 0)
  %198 = load i32, i32* @FM10K_REGS_LEN_VSI, align 4
  %199 = load i32*, i32** %9, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32* %201, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %202

202:                                              ; preds = %230, %194
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* @FM10K_MAX_QUEUES_POOL, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %233

206:                                              ; preds = %202
  %207 = load i32, i32* %10, align 4
  %208 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %209 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp slt i32 %207, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %206
  %214 = load %struct.fm10k_hw*, %struct.fm10k_hw** %8, align 8
  %215 = load i32*, i32** %9, align 8
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @fm10k_get_reg_q(%struct.fm10k_hw* %214, i32* %215, i32 %216)
  br label %225

218:                                              ; preds = %206
  %219 = load i32*, i32** %9, align 8
  %220 = load i32, i32* @FM10K_REGS_LEN_Q, align 4
  %221 = sext i32 %220 to i64
  %222 = mul i64 4, %221
  %223 = trunc i64 %222 to i32
  %224 = call i32 @memset(i32* %219, i32 0, i32 %223)
  br label %225

225:                                              ; preds = %218, %213
  %226 = load i32, i32* @FM10K_REGS_LEN_Q, align 4
  %227 = load i32*, i32** %9, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  store i32* %229, i32** %9, align 8
  br label %230

230:                                              ; preds = %225
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %10, align 4
  br label %202

233:                                              ; preds = %202
  br label %235

234:                                              ; preds = %3
  br label %235

235:                                              ; preds = %234, %233, %160
  ret void
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i8* @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @FM10K_DGLORTMAP(i32) #1

declare dso_local i32 @FM10K_DGLORTDEC(i32) #1

declare dso_local i32 @fm10k_get_reg_vsi(%struct.fm10k_hw*, i32*, i32) #1

declare dso_local i32 @fm10k_get_reg_q(%struct.fm10k_hw*, i32*, i32) #1

declare dso_local i32 @FM10K_INT_MAP(i32) #1

declare dso_local i32 @FM10K_ITR(i32) #1

declare dso_local i32 @FM10K_VFITR(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
