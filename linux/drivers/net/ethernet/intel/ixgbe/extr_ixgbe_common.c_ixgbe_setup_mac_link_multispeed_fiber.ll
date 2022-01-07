; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_setup_mac_link_multispeed_fiber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_setup_mac_link_multispeed_fiber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.ixgbe_hw.0*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.2*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32)*, i64 (%struct.ixgbe_hw.4*, i32*, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.ixgbe_hw.4 = type opaque

@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unexpected media type\0A\00", align 1
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_setup_mac_link_multispeed_fiber(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  store i32 %16, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = load i64 (%struct.ixgbe_hw.4*, i32*, i32*)*, i64 (%struct.ixgbe_hw.4*, i32*, i32*)** %20, align 8
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %23 = bitcast %struct.ixgbe_hw* %22 to %struct.ixgbe_hw.4*
  %24 = call i64 %21(%struct.ixgbe_hw.4* %23, i32* %8, i32* %13)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i64, i64* %10, align 8
  store i64 %28, i64* %4, align 8
  br label %239

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %118

37:                                               ; preds = %29
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %56 [
    i32 129, label %45
    i32 128, label %55
  ]

45:                                               ; preds = %37
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %47 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32 (%struct.ixgbe_hw.3*, i32)*, i32 (%struct.ixgbe_hw.3*, i32)** %49, align 8
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %52 = bitcast %struct.ixgbe_hw* %51 to %struct.ixgbe_hw.3*
  %53 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %54 = call i32 %50(%struct.ixgbe_hw.3* %52, i32 %53)
  br label %59

55:                                               ; preds = %37
  br label %59

56:                                               ; preds = %37
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %58 = call i32 @hw_dbg(%struct.ixgbe_hw* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %55, %45
  %60 = call i32 @msleep(i32 40)
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i64 (%struct.ixgbe_hw.2*, i32, i32)*, i64 (%struct.ixgbe_hw.2*, i32, i32)** %64, align 8
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %67 = bitcast %struct.ixgbe_hw* %66 to %struct.ixgbe_hw.2*
  %68 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i64 %65(%struct.ixgbe_hw.2* %67, i32 %68, i32 %69)
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = load i64, i64* %10, align 8
  store i64 %74, i64* %4, align 8
  br label %239

75:                                               ; preds = %59
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %79, align 8
  %81 = icmp ne i32 (%struct.ixgbe_hw.1*)* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %84 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %86, align 8
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %89 = bitcast %struct.ixgbe_hw* %88 to %struct.ixgbe_hw.1*
  %90 = call i32 %87(%struct.ixgbe_hw.1* %89)
  br label %91

91:                                               ; preds = %82, %75
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %114, %91
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 5
  br i1 %94, label %95, label %117

95:                                               ; preds = %92
  %96 = call i32 @msleep(i32 100)
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %98 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64 (%struct.ixgbe_hw.0*, i32*, i32*, i32)*, i64 (%struct.ixgbe_hw.0*, i32*, i32*, i32)** %100, align 8
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %103 = bitcast %struct.ixgbe_hw* %102 to %struct.ixgbe_hw.0*
  %104 = call i64 %101(%struct.ixgbe_hw.0* %103, i32* %8, i32* %14, i32 0)
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %10, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %95
  %108 = load i64, i64* %10, align 8
  store i64 %108, i64* %4, align 8
  br label %239

109:                                              ; preds = %95
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %210

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %92

117:                                              ; preds = %92
  br label %118

118:                                              ; preds = %117, %29
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %201

123:                                              ; preds = %118
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %129, %123
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %133 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %147 [
    i32 129, label %136
    i32 128, label %146
  ]

136:                                              ; preds = %131
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %138 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  %141 = load i32 (%struct.ixgbe_hw.3*, i32)*, i32 (%struct.ixgbe_hw.3*, i32)** %140, align 8
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %143 = bitcast %struct.ixgbe_hw* %142 to %struct.ixgbe_hw.3*
  %144 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %145 = call i32 %141(%struct.ixgbe_hw.3* %143, i32 %144)
  br label %150

146:                                              ; preds = %131
  br label %150

147:                                              ; preds = %131
  %148 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %149 = call i32 @hw_dbg(%struct.ixgbe_hw* %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %146, %136
  %151 = call i32 @msleep(i32 40)
  %152 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %153 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  %156 = load i64 (%struct.ixgbe_hw.2*, i32, i32)*, i64 (%struct.ixgbe_hw.2*, i32, i32)** %155, align 8
  %157 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %158 = bitcast %struct.ixgbe_hw* %157 to %struct.ixgbe_hw.2*
  %159 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i64 %156(%struct.ixgbe_hw.2* %158, i32 %159, i32 %160)
  store i64 %161, i64* %10, align 8
  %162 = load i64, i64* %10, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %150
  %165 = load i64, i64* %10, align 8
  store i64 %165, i64* %4, align 8
  br label %239

166:                                              ; preds = %150
  %167 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %168 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %170, align 8
  %172 = icmp ne i32 (%struct.ixgbe_hw.1*)* %171, null
  br i1 %172, label %173, label %182

173:                                              ; preds = %166
  %174 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %175 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %177, align 8
  %179 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %180 = bitcast %struct.ixgbe_hw* %179 to %struct.ixgbe_hw.1*
  %181 = call i32 %178(%struct.ixgbe_hw.1* %180)
  br label %182

182:                                              ; preds = %173, %166
  %183 = call i32 @msleep(i32 100)
  %184 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %185 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i64 (%struct.ixgbe_hw.0*, i32*, i32*, i32)*, i64 (%struct.ixgbe_hw.0*, i32*, i32*, i32)** %187, align 8
  %189 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %190 = bitcast %struct.ixgbe_hw* %189 to %struct.ixgbe_hw.0*
  %191 = call i64 %188(%struct.ixgbe_hw.0* %190, i32* %8, i32* %14, i32 0)
  store i64 %191, i64* %10, align 8
  %192 = load i64, i64* %10, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %182
  %195 = load i64, i64* %10, align 8
  store i64 %195, i64* %4, align 8
  br label %239

196:                                              ; preds = %182
  %197 = load i32, i32* %14, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  br label %210

200:                                              ; preds = %196
  br label %201

201:                                              ; preds = %200, %118
  %202 = load i32, i32* %11, align 4
  %203 = icmp sgt i32 %202, 1
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* %7, align 4
  %208 = call i64 @ixgbe_setup_mac_link_multispeed_fiber(%struct.ixgbe_hw* %205, i32 %206, i32 %207)
  store i64 %208, i64* %10, align 8
  br label %209

209:                                              ; preds = %204, %201
  br label %210

210:                                              ; preds = %209, %199, %112
  %211 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %212 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 1
  store i32 0, i32* %213, align 4
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %210
  %219 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %220 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %221 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %219
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %218, %210
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %232 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %233 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, %231
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %230, %225
  %238 = load i64, i64* %10, align 8
  store i64 %238, i64* %4, align 8
  br label %239

239:                                              ; preds = %237, %194, %164, %107, %73, %27
  %240 = load i64, i64* %4, align 8
  ret i64 %240
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
