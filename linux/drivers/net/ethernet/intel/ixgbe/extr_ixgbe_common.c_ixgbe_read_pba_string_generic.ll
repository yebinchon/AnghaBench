; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_read_pba_string_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_read_pba_string_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@.str = private unnamed_addr constant [28 x i8] c"PBA string buffer was null\0A\00", align 1
@IXGBE_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@IXGBE_PBANUM0_PTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@IXGBE_PBANUM1_PTR = common dso_local global i32 0, align 4
@IXGBE_PBANUM_PTR_GUARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"NVM PBA number is not stored as string\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"PBA string buffer too small\0A\00", align 1
@IXGBE_ERR_NO_SPACE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"NVM PBA number section invalid length\0A\00", align 1
@IXGBE_ERR_PBA_SECTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_read_pba_string_generic(%struct.ixgbe_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %17 = call i32 @hw_dbg(%struct.ixgbe_hw* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @IXGBE_ERR_INVALID_ARGUMENT, align 8
  store i64 %18, i64* %4, align 8
  br label %234

19:                                               ; preds = %3
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %23, align 8
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %26 = bitcast %struct.ixgbe_hw* %25 to %struct.ixgbe_hw.0*
  %27 = load i32, i32* @IXGBE_PBANUM0_PTR, align 4
  %28 = call i64 %24(%struct.ixgbe_hw.0* %26, i32 %27, i32* %9)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %33 = call i32 @hw_dbg(%struct.ixgbe_hw* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %4, align 8
  br label %234

35:                                               ; preds = %19
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %39, align 8
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %42 = bitcast %struct.ixgbe_hw* %41 to %struct.ixgbe_hw.0*
  %43 = load i32, i32* @IXGBE_PBANUM1_PTR, align 4
  %44 = call i64 %40(%struct.ixgbe_hw.0* %42, i32 %43, i32* %10)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %49 = call i32 @hw_dbg(%struct.ixgbe_hw* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %4, align 8
  br label %234

51:                                               ; preds = %35
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @IXGBE_PBANUM_PTR_GUARD, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %146

55:                                               ; preds = %51
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %57 = call i32 @hw_dbg(%struct.ixgbe_hw* %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 11
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %62 = call i32 @hw_dbg(%struct.ixgbe_hw* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i64, i64* @IXGBE_ERR_NO_SPACE, align 8
  store i64 %63, i64* %4, align 8
  br label %234

64:                                               ; preds = %55
  %65 = load i32, i32* %9, align 4
  %66 = ashr i32 %65, 12
  %67 = and i32 %66, 15
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 15
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  %76 = ashr i32 %75, 4
  %77 = and i32 %76, 15
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, 15
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  %85 = ashr i32 %84, 12
  %86 = and i32 %85, 15
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %10, align 4
  %90 = ashr i32 %89, 8
  %91 = and i32 %90, 15
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 5
  store i32 %91, i32* %93, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 6
  store i32 45, i32* %95, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 7
  store i32 0, i32* %97, align 4
  %98 = load i32, i32* %10, align 4
  %99 = ashr i32 %98, 4
  %100 = and i32 %99, 15
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 8
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %103, 15
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 9
  store i32 %104, i32* %106, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 10
  store i32 0, i32* %108, align 4
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %142, %64
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 10
  br i1 %111, label %112, label %145

112:                                              ; preds = %109
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %117, 10
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 48
  store i32 %125, i32* %123, align 4
  br label %141

126:                                              ; preds = %112
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %131, 16
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 55
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %133, %126
  br label %141

141:                                              ; preds = %140, %119
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %109

145:                                              ; preds = %109
  store i64 0, i64* %4, align 8
  br label %234

146:                                              ; preds = %51
  %147 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %148 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %150, align 8
  %152 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %153 = bitcast %struct.ixgbe_hw* %152 to %struct.ixgbe_hw.0*
  %154 = load i32, i32* %10, align 4
  %155 = call i64 %151(%struct.ixgbe_hw.0* %153, i32 %154, i32* %12)
  store i64 %155, i64* %8, align 8
  %156 = load i64, i64* %8, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %146
  %159 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %160 = call i32 @hw_dbg(%struct.ixgbe_hw* %159, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %161 = load i64, i64* %8, align 8
  store i64 %161, i64* %4, align 8
  br label %234

162:                                              ; preds = %146
  %163 = load i32, i32* %12, align 4
  %164 = icmp eq i32 %163, 65535
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %12, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165, %162
  %169 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %170 = call i32 @hw_dbg(%struct.ixgbe_hw* %169, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %171 = load i64, i64* @IXGBE_ERR_PBA_SECTION, align 8
  store i64 %171, i64* %4, align 8
  br label %234

172:                                              ; preds = %165
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %12, align 4
  %175 = mul nsw i32 %174, 2
  %176 = sub nsw i32 %175, 1
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %180 = call i32 @hw_dbg(%struct.ixgbe_hw* %179, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %181 = load i64, i64* @IXGBE_ERR_NO_SPACE, align 8
  store i64 %181, i64* %4, align 8
  br label %234

182:                                              ; preds = %172
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %187

187:                                              ; preds = %225, %182
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %228

191:                                              ; preds = %187
  %192 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %193 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %195, align 8
  %197 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %198 = bitcast %struct.ixgbe_hw* %197 to %struct.ixgbe_hw.0*
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %199, %200
  %202 = call i64 %196(%struct.ixgbe_hw.0* %198, i32 %201, i32* %9)
  store i64 %202, i64* %8, align 8
  %203 = load i64, i64* %8, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %191
  %206 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %207 = call i32 @hw_dbg(%struct.ixgbe_hw* %206, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %208 = load i64, i64* %8, align 8
  store i64 %208, i64* %4, align 8
  br label %234

209:                                              ; preds = %191
  %210 = load i32, i32* %9, align 4
  %211 = ashr i32 %210, 8
  %212 = load i32*, i32** %6, align 8
  %213 = load i32, i32* %11, align 4
  %214 = mul nsw i32 %213, 2
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  store i32 %211, i32* %216, align 4
  %217 = load i32, i32* %9, align 4
  %218 = and i32 %217, 255
  %219 = load i32*, i32** %6, align 8
  %220 = load i32, i32* %11, align 4
  %221 = mul nsw i32 %220, 2
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %219, i64 %223
  store i32 %218, i32* %224, align 4
  br label %225

225:                                              ; preds = %209
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %187

228:                                              ; preds = %187
  %229 = load i32*, i32** %6, align 8
  %230 = load i32, i32* %11, align 4
  %231 = mul nsw i32 %230, 2
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  store i32 0, i32* %233, align 4
  store i64 0, i64* %4, align 8
  br label %234

234:                                              ; preds = %228, %205, %178, %168, %158, %145, %60, %47, %31, %15
  %235 = load i64, i64* %4, align 8
  ret i64 %235
}

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
