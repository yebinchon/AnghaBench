; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_nvm.c_igb_get_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_nvm.c_igb_get_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_4__ = type { i32 }
%struct.e1000_fw_version = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@NVM_ETRACK_HIWORD = common dso_local global i32 0, align 4
@NVM_MAJOR_MASK = common dso_local global i32 0, align 4
@NVM_ETRACK_VALID = common dso_local global i32 0, align 4
@NVM_VERSION = common dso_local global i32 0, align 4
@NVM_MAJOR_SHIFT = common dso_local global i32 0, align 4
@NVM_MINOR_MASK = common dso_local global i32 0, align 4
@NVM_MINOR_SHIFT = common dso_local global i32 0, align 4
@NVM_IMAGE_ID_MASK = common dso_local global i32 0, align 4
@NVM_COMB_VER_PTR = common dso_local global i32 0, align 4
@NVM_VER_INVALID = common dso_local global i32 0, align 4
@NVM_COMB_VER_OFF = common dso_local global i32 0, align 4
@NVM_COMB_VER_SHFT = common dso_local global i32 0, align 4
@NVM_COMB_VER_MASK = common dso_local global i32 0, align 4
@NVM_NEW_DEC_MASK = common dso_local global i32 0, align 4
@NVM_HEX_CONV = common dso_local global i32 0, align 4
@NVM_HEX_TENS = common dso_local global i32 0, align 4
@NVM_ETRACK_WORD = common dso_local global i32 0, align 4
@NVM_ETRACK_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_get_fw_version(%struct.e1000_hw* %0, %struct.e1000_fw_version* %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_fw_version*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store %struct.e1000_fw_version* %1, %struct.e1000_fw_version** %4, align 8
  %16 = load %struct.e1000_fw_version*, %struct.e1000_fw_version** %4, align 8
  %17 = call i32 @memset(%struct.e1000_fw_version* %16, i32 0, i32 32)
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %21, align 8
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = bitcast %struct.e1000_hw* %23 to %struct.e1000_hw.0*
  %25 = load i32, i32* @NVM_ETRACK_HIWORD, align 4
  %26 = call i32 %22(%struct.e1000_hw.0* %24, i32 %25, i32 1, i32* %7)
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %157 [
    i32 129, label %31
    i32 133, label %35
    i32 132, label %35
    i32 131, label %35
    i32 130, label %71
    i32 128, label %80
  ]

31:                                               ; preds = %2
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = load %struct.e1000_fw_version*, %struct.e1000_fw_version** %4, align 8
  %34 = call i32 @igb_read_invm_version(%struct.e1000_hw* %32, %struct.e1000_fw_version* %33)
  br label %238

35:                                               ; preds = %2, %2, %2
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @NVM_MAJOR_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @NVM_ETRACK_VALID, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %35
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %45, align 8
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = bitcast %struct.e1000_hw* %47 to %struct.e1000_hw.0*
  %49 = load i32, i32* @NVM_VERSION, align 4
  %50 = call i32 %46(%struct.e1000_hw.0* %48, i32 %49, i32 1, i32* %8)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @NVM_MAJOR_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @NVM_MAJOR_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = load %struct.e1000_fw_version*, %struct.e1000_fw_version** %4, align 8
  %57 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @NVM_MINOR_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @NVM_MINOR_SHIFT, align 4
  %62 = ashr i32 %60, %61
  %63 = load %struct.e1000_fw_version*, %struct.e1000_fw_version** %4, align 8
  %64 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @NVM_IMAGE_ID_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load %struct.e1000_fw_version*, %struct.e1000_fw_version** %4, align 8
  %69 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %205

70:                                               ; preds = %35
  br label %158

71:                                               ; preds = %2
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = call i32 @igb_get_flash_presence_i210(%struct.e1000_hw* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %77 = load %struct.e1000_fw_version*, %struct.e1000_fw_version** %4, align 8
  %78 = call i32 @igb_read_invm_version(%struct.e1000_hw* %76, %struct.e1000_fw_version* %77)
  br label %238

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %2, %79
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %84, align 8
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %87 = bitcast %struct.e1000_hw* %86 to %struct.e1000_hw.0*
  %88 = load i32, i32* @NVM_COMB_VER_PTR, align 4
  %89 = call i32 %85(%struct.e1000_hw.0* %87, i32 %88, i32 1, i32* %15)
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %156

92:                                               ; preds = %80
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @NVM_VER_INVALID, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %156

96:                                               ; preds = %92
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %98 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %100, align 8
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %103 = bitcast %struct.e1000_hw* %102 to %struct.e1000_hw.0*
  %104 = load i32, i32* @NVM_COMB_VER_OFF, align 4
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %104, %105
  %107 = add nsw i32 %106, 1
  %108 = call i32 %101(%struct.e1000_hw.0* %103, i32 %107, i32 1, i32* %13)
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %110 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %112, align 8
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %115 = bitcast %struct.e1000_hw* %114 to %struct.e1000_hw.0*
  %116 = load i32, i32* @NVM_COMB_VER_OFF, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %116, %117
  %119 = call i32 %113(%struct.e1000_hw.0* %115, i32 %118, i32 1, i32* %14)
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %155

122:                                              ; preds = %96
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %155

125:                                              ; preds = %122
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @NVM_VER_INVALID, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %155

129:                                              ; preds = %125
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @NVM_VER_INVALID, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %155

133:                                              ; preds = %129
  %134 = load %struct.e1000_fw_version*, %struct.e1000_fw_version** %4, align 8
  %135 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %134, i32 0, i32 3
  store i32 1, i32* %135, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @NVM_COMB_VER_SHFT, align 4
  %138 = ashr i32 %136, %137
  %139 = load %struct.e1000_fw_version*, %struct.e1000_fw_version** %4, align 8
  %140 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* @NVM_COMB_VER_SHFT, align 4
  %143 = shl i32 %141, %142
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* @NVM_COMB_VER_SHFT, align 4
  %146 = ashr i32 %144, %145
  %147 = or i32 %143, %146
  %148 = load %struct.e1000_fw_version*, %struct.e1000_fw_version** %4, align 8
  %149 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @NVM_COMB_VER_MASK, align 4
  %152 = and i32 %150, %151
  %153 = load %struct.e1000_fw_version*, %struct.e1000_fw_version** %4, align 8
  %154 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %133, %129, %125, %122, %96
  br label %156

156:                                              ; preds = %155, %92, %80
  br label %158

157:                                              ; preds = %2
  br label %238

158:                                              ; preds = %156, %70
  %159 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %160 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %162, align 8
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %165 = bitcast %struct.e1000_hw* %164 to %struct.e1000_hw.0*
  %166 = load i32, i32* @NVM_VERSION, align 4
  %167 = call i32 %163(%struct.e1000_hw.0* %165, i32 %166, i32 1, i32* %8)
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @NVM_MAJOR_MASK, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* @NVM_MAJOR_SHIFT, align 4
  %172 = ashr i32 %170, %171
  %173 = load %struct.e1000_fw_version*, %struct.e1000_fw_version** %4, align 8
  %174 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @NVM_NEW_DEC_MASK, align 4
  %177 = and i32 %175, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %158
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @NVM_COMB_VER_MASK, align 4
  %182 = and i32 %180, %181
  store i32 %182, i32* %6, align 4
  br label %189

183:                                              ; preds = %158
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @NVM_MINOR_MASK, align 4
  %186 = and i32 %184, %185
  %187 = load i32, i32* @NVM_MINOR_SHIFT, align 4
  %188 = ashr i32 %186, %187
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %183, %179
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @NVM_HEX_CONV, align 4
  %192 = sdiv i32 %190, %191
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* @NVM_HEX_TENS, align 4
  %195 = mul nsw i32 %193, %194
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @NVM_HEX_CONV, align 4
  %198 = srem i32 %196, %197
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %199, %200
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = load %struct.e1000_fw_version*, %struct.e1000_fw_version** %4, align 8
  %204 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %189, %41
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* @NVM_MAJOR_MASK, align 4
  %208 = and i32 %206, %207
  %209 = load i32, i32* @NVM_ETRACK_VALID, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %238

211:                                              ; preds = %205
  %212 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %213 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %215, align 8
  %217 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %218 = bitcast %struct.e1000_hw* %217 to %struct.e1000_hw.0*
  %219 = load i32, i32* @NVM_ETRACK_WORD, align 4
  %220 = call i32 %216(%struct.e1000_hw.0* %218, i32 %219, i32 1, i32* %6)
  %221 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %222 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %224, align 8
  %226 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %227 = bitcast %struct.e1000_hw* %226 to %struct.e1000_hw.0*
  %228 = load i32, i32* @NVM_ETRACK_WORD, align 4
  %229 = add nsw i32 %228, 1
  %230 = call i32 %225(%struct.e1000_hw.0* %227, i32 %229, i32 1, i32* %5)
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* @NVM_ETRACK_SHIFT, align 4
  %233 = shl i32 %231, %232
  %234 = load i32, i32* %6, align 4
  %235 = or i32 %233, %234
  %236 = load %struct.e1000_fw_version*, %struct.e1000_fw_version** %4, align 8
  %237 = getelementptr inbounds %struct.e1000_fw_version, %struct.e1000_fw_version* %236, i32 0, i32 7
  store i32 %235, i32* %237, align 4
  br label %238

238:                                              ; preds = %31, %75, %157, %211, %205
  ret void
}

declare dso_local i32 @memset(%struct.e1000_fw_version*, i32, i32) #1

declare dso_local i32 @igb_read_invm_version(%struct.e1000_hw*, %struct.e1000_fw_version*) #1

declare dso_local i32 @igb_get_flash_presence_i210(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
