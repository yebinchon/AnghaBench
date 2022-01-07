; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_nvm.c_igb_read_part_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_nvm.c_igb_read_part_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [28 x i8] c"PBA string buffer was null\0A\00", align 1
@E1000_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@NVM_PBA_OFFSET_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@NVM_PBA_OFFSET_1 = common dso_local global i32 0, align 4
@NVM_PBA_PTR_GUARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"NVM PBA number is not stored as string\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"PBA string buffer too small\0A\00", align 1
@E1000_ERR_NO_SPACE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"NVM PBA number section invalid length\0A\00", align 1
@E1000_ERR_NVM_PBA_SECTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_read_part_string(%struct.e1000_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = call i32 @hw_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @E1000_ERR_INVALID_ARGUMENT, align 8
  store i64 %17, i64* %8, align 8
  br label %221

18:                                               ; preds = %3
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %22, align 8
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %25 = bitcast %struct.e1000_hw* %24 to %struct.e1000_hw.0*
  %26 = load i32, i32* @NVM_PBA_OFFSET_0, align 4
  %27 = call i64 %23(%struct.e1000_hw.0* %25, i32 %26, i32 1, i32* %9)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = call i32 @hw_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %221

32:                                               ; preds = %18
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %36, align 8
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %39 = bitcast %struct.e1000_hw* %38 to %struct.e1000_hw.0*
  %40 = load i32, i32* @NVM_PBA_OFFSET_1, align 4
  %41 = call i64 %37(%struct.e1000_hw.0* %39, i32 %40, i32 1, i32* %10)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = call i32 @hw_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %221

46:                                               ; preds = %32
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @NVM_PBA_PTR_GUARD, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %139

50:                                               ; preds = %46
  %51 = call i32 @hw_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 11
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = call i32 @hw_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i64, i64* @E1000_ERR_NO_SPACE, align 8
  store i64 %56, i64* %4, align 8
  br label %223

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 12
  %60 = and i32 %59, 15
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 8
  %65 = and i32 %64, 15
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = ashr i32 %68, 4
  %70 = and i32 %69, 15
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, 15
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %10, align 4
  %78 = ashr i32 %77, 12
  %79 = and i32 %78, 15
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %10, align 4
  %83 = ashr i32 %82, 8
  %84 = and i32 %83, 15
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 5
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 6
  store i32 45, i32* %88, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 7
  store i32 0, i32* %90, align 4
  %91 = load i32, i32* %10, align 4
  %92 = ashr i32 %91, 4
  %93 = and i32 %92, 15
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 8
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %96, 15
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 9
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 10
  store i32 0, i32* %101, align 4
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %135, %57
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 10
  br i1 %104, label %105, label %138

105:                                              ; preds = %102
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %110, 10
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 48
  store i32 %118, i32* %116, align 4
  br label %134

119:                                              ; preds = %105
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %124, 16
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 55
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %126, %119
  br label %134

134:                                              ; preds = %133, %112
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %102

138:                                              ; preds = %102
  br label %221

139:                                              ; preds = %46
  %140 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %141 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %143, align 8
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %146 = bitcast %struct.e1000_hw* %145 to %struct.e1000_hw.0*
  %147 = load i32, i32* %10, align 4
  %148 = call i64 %144(%struct.e1000_hw.0* %146, i32 %147, i32 1, i32* %12)
  store i64 %148, i64* %8, align 8
  %149 = load i64, i64* %8, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %139
  %152 = call i32 @hw_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %221

153:                                              ; preds = %139
  %154 = load i32, i32* %12, align 4
  %155 = icmp eq i32 %154, 65535
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %12, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156, %153
  %160 = call i32 @hw_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %161 = load i64, i64* @E1000_ERR_NVM_PBA_SECTION, align 8
  store i64 %161, i64* %8, align 8
  br label %221

162:                                              ; preds = %156
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %12, align 4
  %165 = mul nsw i32 %164, 2
  %166 = sub nsw i32 %165, 1
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = call i32 @hw_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %170 = load i64, i64* @E1000_ERR_NO_SPACE, align 8
  store i64 %170, i64* %8, align 8
  br label %221

171:                                              ; preds = %162
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %176

176:                                              ; preds = %212, %171
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %215

180:                                              ; preds = %176
  %181 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %182 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i64 (%struct.e1000_hw.0*, i32, i32, i32*)*, i64 (%struct.e1000_hw.0*, i32, i32, i32*)** %184, align 8
  %186 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %187 = bitcast %struct.e1000_hw* %186 to %struct.e1000_hw.0*
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %188, %189
  %191 = call i64 %185(%struct.e1000_hw.0* %187, i32 %190, i32 1, i32* %9)
  store i64 %191, i64* %8, align 8
  %192 = load i64, i64* %8, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %180
  %195 = call i32 @hw_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %221

196:                                              ; preds = %180
  %197 = load i32, i32* %9, align 4
  %198 = ashr i32 %197, 8
  %199 = load i32*, i32** %6, align 8
  %200 = load i32, i32* %11, align 4
  %201 = mul nsw i32 %200, 2
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  store i32 %198, i32* %203, align 4
  %204 = load i32, i32* %9, align 4
  %205 = and i32 %204, 255
  %206 = load i32*, i32** %6, align 8
  %207 = load i32, i32* %11, align 4
  %208 = mul nsw i32 %207, 2
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %206, i64 %210
  store i32 %205, i32* %211, align 4
  br label %212

212:                                              ; preds = %196
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %11, align 4
  br label %176

215:                                              ; preds = %176
  %216 = load i32*, i32** %6, align 8
  %217 = load i32, i32* %11, align 4
  %218 = mul nsw i32 %217, 2
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  store i32 0, i32* %220, align 4
  br label %221

221:                                              ; preds = %215, %194, %168, %159, %151, %138, %44, %30, %15
  %222 = load i64, i64* %8, align 8
  store i64 %222, i64* %4, align 8
  br label %223

223:                                              ; preds = %221, %54
  %224 = load i64, i64* %4, align 8
  ret i64 %224
}

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
