; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_flashio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_flashio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { %struct.ddb_link* }
%struct.ddb_link = type { i32 }

@SPI_CONTROL = common dso_local global i64 0, align 8
@SPI_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb*, i64, i64*, i64, i64*, i64)* @flashio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flashio(%struct.ddb* %0, i64 %1, i64* %2, i64 %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ddb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ddb_link*, align 8
  store %struct.ddb* %0, %struct.ddb** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @DDB_LINK_TAG(i64 %18)
  store i64 %19, i64* %16, align 8
  %20 = load %struct.ddb*, %struct.ddb** %8, align 8
  %21 = getelementptr inbounds %struct.ddb, %struct.ddb* %20, i32 0, i32 0
  %22 = load %struct.ddb_link*, %struct.ddb_link** %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %22, i64 %23
  store %struct.ddb_link* %24, %struct.ddb_link** %17, align 8
  %25 = load %struct.ddb_link*, %struct.ddb_link** %17, align 8
  %26 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i64, i64* %11, align 8
  %29 = icmp ugt i64 %28, 4
  br i1 %29, label %30, label %36

30:                                               ; preds = %6
  %31 = load %struct.ddb*, %struct.ddb** %8, align 8
  %32 = load i64, i64* %16, align 8
  %33 = load i64, i64* @SPI_CONTROL, align 8
  %34 = or i64 %32, %33
  %35 = call i32 @ddbwritel(%struct.ddb* %31, i32 1, i64 %34)
  br label %36

36:                                               ; preds = %30, %6
  br label %37

37:                                               ; preds = %62, %36
  %38 = load i64, i64* %11, align 8
  %39 = icmp ugt i64 %38, 4
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load i64*, i64** %10, align 8
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @swab32(i64 %42)
  store i64 %43, i64* %14, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 4
  store i64* %45, i64** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = sub i64 %46, 4
  store i64 %47, i64* %11, align 8
  %48 = load %struct.ddb*, %struct.ddb** %8, align 8
  %49 = load i64, i64* %14, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* @SPI_DATA, align 8
  %53 = or i64 %51, %52
  %54 = call i32 @ddbwritel(%struct.ddb* %48, i32 %50, i64 %53)
  %55 = load %struct.ddb*, %struct.ddb** %8, align 8
  %56 = load i64, i64* %16, align 8
  %57 = load i64, i64* @SPI_CONTROL, align 8
  %58 = or i64 %56, %57
  %59 = call i64 @reg_wait(%struct.ddb* %55, i64 %58, i32 4)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %40
  br label %238

62:                                               ; preds = %40
  br label %37

63:                                               ; preds = %37
  %64 = load i64, i64* %13, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load %struct.ddb*, %struct.ddb** %8, align 8
  %68 = load i64, i64* %11, align 8
  %69 = shl i64 %68, 11
  %70 = and i64 %69, 7936
  %71 = or i64 1, %70
  %72 = trunc i64 %71 to i32
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* @SPI_CONTROL, align 8
  %75 = or i64 %73, %74
  %76 = call i32 @ddbwritel(%struct.ddb* %67, i32 %72, i64 %75)
  br label %88

77:                                               ; preds = %63
  %78 = load %struct.ddb*, %struct.ddb** %8, align 8
  %79 = load i64, i64* %11, align 8
  %80 = shl i64 %79, 11
  %81 = and i64 %80, 7936
  %82 = or i64 3, %81
  %83 = trunc i64 %82 to i32
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* @SPI_CONTROL, align 8
  %86 = or i64 %84, %85
  %87 = call i32 @ddbwritel(%struct.ddb* %78, i32 %83, i64 %86)
  br label %88

88:                                               ; preds = %77, %66
  store i64 0, i64* %14, align 8
  %89 = load i64, i64* %11, align 8
  %90 = sub i64 4, %89
  %91 = mul i64 %90, 8
  store i64 %91, i64* %15, align 8
  br label %92

92:                                               ; preds = %95, %88
  %93 = load i64, i64* %11, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load i64, i64* %14, align 8
  %97 = shl i64 %96, 8
  store i64 %97, i64* %14, align 8
  %98 = load i64*, i64** %10, align 8
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %14, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %14, align 8
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %102, -1
  store i64 %103, i64* %11, align 8
  %104 = load i64*, i64** %10, align 8
  %105 = getelementptr inbounds i64, i64* %104, i32 1
  store i64* %105, i64** %10, align 8
  br label %92

106:                                              ; preds = %92
  %107 = load i64, i64* %15, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* %14, align 8
  %112 = shl i64 %111, %110
  store i64 %112, i64* %14, align 8
  br label %113

113:                                              ; preds = %109, %106
  %114 = load %struct.ddb*, %struct.ddb** %8, align 8
  %115 = load i64, i64* %14, align 8
  %116 = trunc i64 %115 to i32
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* @SPI_DATA, align 8
  %119 = or i64 %117, %118
  %120 = call i32 @ddbwritel(%struct.ddb* %114, i32 %116, i64 %119)
  %121 = load %struct.ddb*, %struct.ddb** %8, align 8
  %122 = load i64, i64* %16, align 8
  %123 = load i64, i64* @SPI_CONTROL, align 8
  %124 = or i64 %122, %123
  %125 = call i64 @reg_wait(%struct.ddb* %121, i64 %124, i32 4)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %113
  br label %238

128:                                              ; preds = %113
  %129 = load i64, i64* %13, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = load %struct.ddb*, %struct.ddb** %8, align 8
  %133 = load i64, i64* %16, align 8
  %134 = load i64, i64* @SPI_CONTROL, align 8
  %135 = or i64 %133, %134
  %136 = call i32 @ddbwritel(%struct.ddb* %132, i32 0, i64 %135)
  br label %234

137:                                              ; preds = %128
  %138 = load i64, i64* %13, align 8
  %139 = icmp ugt i64 %138, 4
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load %struct.ddb*, %struct.ddb** %8, align 8
  %142 = load i64, i64* %16, align 8
  %143 = load i64, i64* @SPI_CONTROL, align 8
  %144 = or i64 %142, %143
  %145 = call i32 @ddbwritel(%struct.ddb* %141, i32 1, i64 %144)
  br label %146

146:                                              ; preds = %140, %137
  br label %147

147:                                              ; preds = %163, %146
  %148 = load i64, i64* %13, align 8
  %149 = icmp ugt i64 %148, 4
  br i1 %149, label %150, label %176

150:                                              ; preds = %147
  %151 = load %struct.ddb*, %struct.ddb** %8, align 8
  %152 = load i64, i64* %16, align 8
  %153 = load i64, i64* @SPI_DATA, align 8
  %154 = or i64 %152, %153
  %155 = call i32 @ddbwritel(%struct.ddb* %151, i32 -1, i64 %154)
  %156 = load %struct.ddb*, %struct.ddb** %8, align 8
  %157 = load i64, i64* %16, align 8
  %158 = load i64, i64* @SPI_CONTROL, align 8
  %159 = or i64 %157, %158
  %160 = call i64 @reg_wait(%struct.ddb* %156, i64 %159, i32 4)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %150
  br label %238

163:                                              ; preds = %150
  %164 = load %struct.ddb*, %struct.ddb** %8, align 8
  %165 = load i64, i64* %16, align 8
  %166 = load i64, i64* @SPI_DATA, align 8
  %167 = or i64 %165, %166
  %168 = call i64 @ddbreadl(%struct.ddb* %164, i64 %167)
  store i64 %168, i64* %14, align 8
  %169 = load i64, i64* %14, align 8
  %170 = call i64 @swab32(i64 %169)
  %171 = load i64*, i64** %12, align 8
  store i64 %170, i64* %171, align 8
  %172 = load i64*, i64** %12, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 4
  store i64* %173, i64** %12, align 8
  %174 = load i64, i64* %13, align 8
  %175 = sub i64 %174, 4
  store i64 %175, i64* %13, align 8
  br label %147

176:                                              ; preds = %147
  %177 = load %struct.ddb*, %struct.ddb** %8, align 8
  %178 = load i64, i64* %13, align 8
  %179 = shl i64 %178, 11
  %180 = and i64 %179, 7936
  %181 = or i64 3, %180
  %182 = trunc i64 %181 to i32
  %183 = load i64, i64* %16, align 8
  %184 = load i64, i64* @SPI_CONTROL, align 8
  %185 = or i64 %183, %184
  %186 = call i32 @ddbwritel(%struct.ddb* %177, i32 %182, i64 %185)
  %187 = load %struct.ddb*, %struct.ddb** %8, align 8
  %188 = load i64, i64* %16, align 8
  %189 = load i64, i64* @SPI_DATA, align 8
  %190 = or i64 %188, %189
  %191 = call i32 @ddbwritel(%struct.ddb* %187, i32 -1, i64 %190)
  %192 = load %struct.ddb*, %struct.ddb** %8, align 8
  %193 = load i64, i64* %16, align 8
  %194 = load i64, i64* @SPI_CONTROL, align 8
  %195 = or i64 %193, %194
  %196 = call i64 @reg_wait(%struct.ddb* %192, i64 %195, i32 4)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %176
  br label %238

199:                                              ; preds = %176
  %200 = load %struct.ddb*, %struct.ddb** %8, align 8
  %201 = load i64, i64* %16, align 8
  %202 = load i64, i64* @SPI_DATA, align 8
  %203 = or i64 %201, %202
  %204 = call i64 @ddbreadl(%struct.ddb* %200, i64 %203)
  store i64 %204, i64* %14, align 8
  %205 = load %struct.ddb*, %struct.ddb** %8, align 8
  %206 = load i64, i64* %16, align 8
  %207 = load i64, i64* @SPI_CONTROL, align 8
  %208 = or i64 %206, %207
  %209 = call i32 @ddbwritel(%struct.ddb* %205, i32 0, i64 %208)
  %210 = load i64, i64* %13, align 8
  %211 = icmp ult i64 %210, 4
  br i1 %211, label %212, label %218

212:                                              ; preds = %199
  %213 = load i64, i64* %13, align 8
  %214 = sub i64 4, %213
  %215 = mul i64 %214, 8
  %216 = load i64, i64* %14, align 8
  %217 = shl i64 %216, %215
  store i64 %217, i64* %14, align 8
  br label %218

218:                                              ; preds = %212, %199
  br label %219

219:                                              ; preds = %222, %218
  %220 = load i64, i64* %13, align 8
  %221 = icmp ugt i64 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %219
  %223 = load i64, i64* %14, align 8
  %224 = lshr i64 %223, 24
  %225 = and i64 %224, 255
  %226 = load i64*, i64** %12, align 8
  store i64 %225, i64* %226, align 8
  %227 = load i64, i64* %14, align 8
  %228 = shl i64 %227, 8
  store i64 %228, i64* %14, align 8
  %229 = load i64*, i64** %12, align 8
  %230 = getelementptr inbounds i64, i64* %229, i32 1
  store i64* %230, i64** %12, align 8
  %231 = load i64, i64* %13, align 8
  %232 = add i64 %231, -1
  store i64 %232, i64* %13, align 8
  br label %219

233:                                              ; preds = %219
  br label %234

234:                                              ; preds = %233, %131
  %235 = load %struct.ddb_link*, %struct.ddb_link** %17, align 8
  %236 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %235, i32 0, i32 0
  %237 = call i32 @mutex_unlock(i32* %236)
  store i32 0, i32* %7, align 4
  br label %242

238:                                              ; preds = %198, %162, %127, %61
  %239 = load %struct.ddb_link*, %struct.ddb_link** %17, align 8
  %240 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %239, i32 0, i32 0
  %241 = call i32 @mutex_unlock(i32* %240)
  store i32 -1, i32* %7, align 4
  br label %242

242:                                              ; preds = %238, %234
  %243 = load i32, i32* %7, align 4
  ret i32 %243
}

declare dso_local i64 @DDB_LINK_TAG(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i64) #1

declare dso_local i64 @swab32(i64) #1

declare dso_local i64 @reg_wait(%struct.ddb*, i64, i32) #1

declare dso_local i64 @ddbreadl(%struct.ddb*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
