; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_fc_enable_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_fc_enable_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_ERR_INVALID_LINK_SETTINGS = common dso_local global i32 0, align 4
@MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid water mark configuration\0A\00", align 1
@IXGBE_MFLCN = common dso_local global i32 0, align 4
@IXGBE_MFLCN_RPFCE_MASK = common dso_local global i32 0, align 4
@IXGBE_MFLCN_RFCE = common dso_local global i32 0, align 4
@IXGBE_FCCFG = common dso_local global i32 0, align 4
@IXGBE_FCCFG_TFCE_802_3X = common dso_local global i32 0, align 4
@IXGBE_FCCFG_TFCE_PRIORITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i32 0, align 4
@IXGBE_MFLCN_DPF = common dso_local global i32 0, align 4
@IXGBE_FCRTL_XONE = common dso_local global i32 0, align 4
@IXGBE_FCRTH_FCEN = common dso_local global i32 0, align 4
@IXGBE_FCRTV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fc_enable_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 4
  store i32 %16, i32* %2, align 4
  br label %236

17:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %73, %17
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %76

22:                                               ; preds = %18
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %22
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %29
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %39
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %51 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %59 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %57, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %49, %39
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %69 = call i32 @hw_dbg(%struct.ixgbe_hw* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 4
  store i32 %70, i32* %2, align 4
  br label %236

71:                                               ; preds = %49
  br label %72

72:                                               ; preds = %71, %29, %22
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %18

76:                                               ; preds = %18
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %80, align 8
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %83 = bitcast %struct.ixgbe_hw* %82 to %struct.ixgbe_hw.0*
  %84 = call i32 %81(%struct.ixgbe_hw.0* %83)
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %86 = load i32, i32* @IXGBE_MFLCN, align 4
  %87 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %85, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* @IXGBE_MFLCN_RPFCE_MASK, align 4
  %89 = load i32, i32* @IXGBE_MFLCN_RFCE, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %95 = load i32, i32* @IXGBE_FCCFG, align 4
  %96 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %94, i32 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* @IXGBE_FCCFG_TFCE_802_3X, align 4
  %98 = load i32, i32* @IXGBE_FCCFG_TFCE_PRIORITY, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %5, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %104 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %123 [
    i32 130, label %107
    i32 129, label %108
    i32 128, label %112
    i32 131, label %116
  ]

107:                                              ; preds = %76
  br label %127

108:                                              ; preds = %76
  %109 = load i32, i32* @IXGBE_MFLCN_RFCE, align 4
  %110 = load i32, i32* %4, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %4, align 4
  br label %127

112:                                              ; preds = %76
  %113 = load i32, i32* @IXGBE_FCCFG_TFCE_802_3X, align 4
  %114 = load i32, i32* %5, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %5, align 4
  br label %127

116:                                              ; preds = %76
  %117 = load i32, i32* @IXGBE_MFLCN_RFCE, align 4
  %118 = load i32, i32* %4, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* @IXGBE_FCCFG_TFCE_802_3X, align 4
  %121 = load i32, i32* %5, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %5, align 4
  br label %127

123:                                              ; preds = %76
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %125 = call i32 @hw_dbg(%struct.ixgbe_hw* %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i32, i32* @IXGBE_ERR_CONFIG, align 4
  store i32 %126, i32* %2, align 4
  br label %236

127:                                              ; preds = %116, %112, %108, %107
  %128 = load i32, i32* @IXGBE_MFLCN_DPF, align 4
  %129 = load i32, i32* %4, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %4, align 4
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %132 = load i32, i32* @IXGBE_MFLCN, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %131, i32 %132, i32 %133)
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %136 = load i32, i32* @IXGBE_FCCFG, align 4
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %135, i32 %136, i32 %137)
  store i32 0, i32* %9, align 4
  br label %139

139:                                              ; preds = %204, %127
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %207

143:                                              ; preds = %139
  %144 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %145 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 128
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %188

150:                                              ; preds = %143
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %152 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %188

160:                                              ; preds = %150
  %161 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %162 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 10
  %170 = load i32, i32* @IXGBE_FCRTL_XONE, align 4
  %171 = or i32 %169, %170
  store i32 %171, i32* %7, align 4
  %172 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @IXGBE_FCRTL_82599(i32 %173)
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %172, i32 %174, i32 %175)
  %177 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %178 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %184, 10
  %186 = load i32, i32* @IXGBE_FCRTH_FCEN, align 4
  %187 = or i32 %185, %186
  store i32 %187, i32* %8, align 4
  br label %198

188:                                              ; preds = %150, %143
  %189 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @IXGBE_FCRTL_82599(i32 %190)
  %192 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %189, i32 %191, i32 0)
  %193 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @IXGBE_RXPBSIZE(i32 %194)
  %196 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %193, i32 %195)
  %197 = sub nsw i32 %196, 24576
  store i32 %197, i32* %8, align 4
  br label %198

198:                                              ; preds = %188, %160
  %199 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @IXGBE_FCRTH_82599(i32 %200)
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %199, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %198
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %9, align 4
  br label %139

207:                                              ; preds = %139
  %208 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %209 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = mul nsw i32 %211, 65537
  store i32 %212, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %213

213:                                              ; preds = %224, %207
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %216 = sdiv i32 %215, 2
  %217 = icmp slt i32 %214, %216
  br i1 %217, label %218, label %227

218:                                              ; preds = %213
  %219 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @IXGBE_FCTTV(i32 %220)
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %219, i32 %221, i32 %222)
  br label %224

224:                                              ; preds = %218
  %225 = load i32, i32* %9, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %9, align 4
  br label %213

227:                                              ; preds = %213
  %228 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %229 = load i32, i32* @IXGBE_FCRTV, align 4
  %230 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %231 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sdiv i32 %233, 2
  %235 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %228, i32 %229, i32 %234)
  store i32 0, i32* %2, align 4
  br label %236

236:                                              ; preds = %227, %123, %67, %15
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_FCRTL_82599(i32) #1

declare dso_local i32 @IXGBE_RXPBSIZE(i32) #1

declare dso_local i32 @IXGBE_FCRTH_82599(i32) #1

declare dso_local i32 @IXGBE_FCTTV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
