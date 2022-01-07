; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_get_reg_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_get_reg_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }

@FM10K_REGS_LEN_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_hw*, i32*, i32)* @fm10k_get_reg_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_get_reg_q(%struct.fm10k_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @FM10K_RDBAL(i32 %9)
  %11 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %8, i32 %10)
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  store i32 %11, i32* %16, align 4
  %17 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @FM10K_RDBAH(i32 %18)
  %20 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %17, i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %20, i32* %25, align 4
  %26 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @FM10K_RDLEN(i32 %27)
  %29 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %26, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %29, i32* %34, align 4
  %35 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @FM10K_TPH_RXCTRL(i32 %36)
  %38 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %35, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 %38, i32* %43, align 4
  %44 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @FM10K_RDH(i32 %45)
  %47 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %44, i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 %47, i32* %52, align 4
  %53 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @FM10K_RDT(i32 %54)
  %56 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %53, i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 %56, i32* %61, align 4
  %62 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @FM10K_RXQCTL(i32 %63)
  %65 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %62, i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @FM10K_RXDCTL(i32 %72)
  %74 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %71, i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  store i32 %74, i32* %79, align 4
  %80 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @FM10K_RXINT(i32 %81)
  %83 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %80, i32 %82)
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @FM10K_SRRCTL(i32 %90)
  %92 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %89, i32 %91)
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %92, i32* %97, align 4
  %98 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @FM10K_QPRC(i32 %99)
  %101 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %98, i32 %100)
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %101, i32* %106, align 4
  %107 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @FM10K_QPRDC(i32 %108)
  %110 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %107, i32 %109)
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 %110, i32* %115, align 4
  %116 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @FM10K_QBRC_L(i32 %117)
  %119 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %116, i32 %118)
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %119, i32* %124, align 4
  %125 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @FM10K_QBRC_H(i32 %126)
  %128 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %125, i32 %127)
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32 %128, i32* %133, align 4
  %134 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @FM10K_TDBAL(i32 %135)
  %137 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %134, i32 %136)
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32 %137, i32* %142, align 4
  %143 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @FM10K_TDBAH(i32 %144)
  %146 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %143, i32 %145)
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %146, i32* %151, align 4
  %152 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @FM10K_TDLEN(i32 %153)
  %155 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %152, i32 %154)
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 %155, i32* %160, align 4
  %161 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @FM10K_TPH_TXCTRL(i32 %162)
  %164 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %161, i32 %163)
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 %164, i32* %169, align 4
  %170 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @FM10K_TDH(i32 %171)
  %173 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %170, i32 %172)
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %173, i32* %178, align 4
  %179 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @FM10K_TDT(i32 %180)
  %182 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %179, i32 %181)
  %183 = load i32*, i32** %5, align 8
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  store i32 %182, i32* %187, align 4
  %188 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @FM10K_TXDCTL(i32 %189)
  %191 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %188, i32 %190)
  %192 = load i32*, i32** %5, align 8
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  store i32 %191, i32* %196, align 4
  %197 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @FM10K_TXQCTL(i32 %198)
  %200 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %197, i32 %199)
  %201 = load i32*, i32** %5, align 8
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  store i32 %200, i32* %205, align 4
  %206 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @FM10K_TXINT(i32 %207)
  %209 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %206, i32 %208)
  %210 = load i32*, i32** %5, align 8
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %7, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  store i32 %209, i32* %214, align 4
  %215 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %216 = load i32, i32* %6, align 4
  %217 = call i32 @FM10K_QPTC(i32 %216)
  %218 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %215, i32 %217)
  %219 = load i32*, i32** %5, align 8
  %220 = load i32, i32* %7, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %7, align 4
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  store i32 %218, i32* %223, align 4
  %224 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %225 = load i32, i32* %6, align 4
  %226 = call i32 @FM10K_QBTC_L(i32 %225)
  %227 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %224, i32 %226)
  %228 = load i32*, i32** %5, align 8
  %229 = load i32, i32* %7, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %7, align 4
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  store i32 %227, i32* %232, align 4
  %233 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %234 = load i32, i32* %6, align 4
  %235 = call i32 @FM10K_QBTC_H(i32 %234)
  %236 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %233, i32 %235)
  %237 = load i32*, i32** %5, align 8
  %238 = load i32, i32* %7, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %7, align 4
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  store i32 %236, i32* %241, align 4
  %242 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %243 = load i32, i32* %6, align 4
  %244 = call i32 @FM10K_TQDLOC(i32 %243)
  %245 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %242, i32 %244)
  %246 = load i32*, i32** %5, align 8
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %7, align 4
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  store i32 %245, i32* %250, align 4
  %251 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %252 = load i32, i32* %6, align 4
  %253 = call i32 @FM10K_TX_SGLORT(i32 %252)
  %254 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %251, i32 %253)
  %255 = load i32*, i32** %5, align 8
  %256 = load i32, i32* %7, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %7, align 4
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i32, i32* %255, i64 %258
  store i32 %254, i32* %259, align 4
  %260 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %261 = load i32, i32* %6, align 4
  %262 = call i32 @FM10K_PFVTCTL(i32 %261)
  %263 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %260, i32 %262)
  %264 = load i32*, i32** %5, align 8
  %265 = load i32, i32* %7, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %7, align 4
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  store i32 %263, i32* %268, align 4
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* @FM10K_REGS_LEN_Q, align 4
  %271 = icmp ne i32 %269, %270
  %272 = zext i1 %271 to i32
  %273 = call i32 @BUG_ON(i32 %272)
  ret void
}

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @FM10K_RDBAL(i32) #1

declare dso_local i32 @FM10K_RDBAH(i32) #1

declare dso_local i32 @FM10K_RDLEN(i32) #1

declare dso_local i32 @FM10K_TPH_RXCTRL(i32) #1

declare dso_local i32 @FM10K_RDH(i32) #1

declare dso_local i32 @FM10K_RDT(i32) #1

declare dso_local i32 @FM10K_RXQCTL(i32) #1

declare dso_local i32 @FM10K_RXDCTL(i32) #1

declare dso_local i32 @FM10K_RXINT(i32) #1

declare dso_local i32 @FM10K_SRRCTL(i32) #1

declare dso_local i32 @FM10K_QPRC(i32) #1

declare dso_local i32 @FM10K_QPRDC(i32) #1

declare dso_local i32 @FM10K_QBRC_L(i32) #1

declare dso_local i32 @FM10K_QBRC_H(i32) #1

declare dso_local i32 @FM10K_TDBAL(i32) #1

declare dso_local i32 @FM10K_TDBAH(i32) #1

declare dso_local i32 @FM10K_TDLEN(i32) #1

declare dso_local i32 @FM10K_TPH_TXCTRL(i32) #1

declare dso_local i32 @FM10K_TDH(i32) #1

declare dso_local i32 @FM10K_TDT(i32) #1

declare dso_local i32 @FM10K_TXDCTL(i32) #1

declare dso_local i32 @FM10K_TXQCTL(i32) #1

declare dso_local i32 @FM10K_TXINT(i32) #1

declare dso_local i32 @FM10K_QPTC(i32) #1

declare dso_local i32 @FM10K_QBTC_L(i32) #1

declare dso_local i32 @FM10K_QBTC_H(i32) #1

declare dso_local i32 @FM10K_TQDLOC(i32) #1

declare dso_local i32 @FM10K_TX_SGLORT(i32) #1

declare dso_local i32 @FM10K_PFVTCTL(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
