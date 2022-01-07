; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_tx_update_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_tx_update_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i64, i32, i32, i32, i64, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@TX_DESC_POS_OFFSET = common dso_local global i32 0, align 4
@TX_DESC_SIZE_OFFSET = common dso_local global i32 0, align 4
@TX_DESC_HOST_LENGTH_OFFSET = common dso_local global i32 0, align 4
@TX_DESC_PACKET_TYPE_OFFSET = common dso_local global i32 0, align 4
@TX_DESC_RATE_OFFSET = common dso_local global i32 0, align 4
@TX_DESC_RETRY_OFFSET = common dso_local global i32 0, align 4
@CIPHER_SUITE_WEP_64 = common dso_local global i32 0, align 4
@CIPHER_SUITE_WEP_128 = common dso_local global i32 0, align 4
@CIPHER_SUITE_TKIP = common dso_local global i32 0, align 4
@CIPHER_SUITE_NONE = common dso_local global i32 0, align 4
@TX_DESC_CIPHER_TYPE_OFFSET = common dso_local global i32 0, align 4
@TX_DESC_CIPHER_LENGTH_OFFSET = common dso_local global i32 0, align 4
@TX_DESC_NEXT_OFFSET = common dso_local global i32 0, align 4
@TX_DESC_FLAGS_OFFSET = common dso_local global i32 0, align 4
@TX_FIRM_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*, i32, i64, i64, i32)* @tx_update_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_update_descriptor(%struct.atmel_private* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.atmel_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.atmel_private* %0, %struct.atmel_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %14 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %15 = load i32, i32* @TX_DESC_POS_OFFSET, align 4
  %16 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %17 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @atmel_tx(%struct.atmel_private* %14, i32 %15, i64 %18)
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @atmel_wmem16(%struct.atmel_private* %13, i32 %19, i64 %20)
  %22 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %23 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %24 = load i32, i32* @TX_DESC_SIZE_OFFSET, align 4
  %25 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %26 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @atmel_tx(%struct.atmel_private* %23, i32 %24, i64 %27)
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @atmel_wmem16(%struct.atmel_private* %22, i32 %28, i64 %29)
  %31 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %32 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %5
  %36 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %37 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %38 = load i32, i32* @TX_DESC_HOST_LENGTH_OFFSET, align 4
  %39 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %40 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @atmel_tx(%struct.atmel_private* %37, i32 %38, i64 %41)
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @atmel_wmem16(%struct.atmel_private* %36, i32 %42, i64 %43)
  br label %45

45:                                               ; preds = %35, %5
  %46 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %47 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %48 = load i32, i32* @TX_DESC_PACKET_TYPE_OFFSET, align 4
  %49 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %50 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @atmel_tx(%struct.atmel_private* %47, i32 %48, i64 %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @atmel_wmem8(%struct.atmel_private* %46, i32 %52, i32 %53)
  %55 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %56 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %57 = load i32, i32* @TX_DESC_RATE_OFFSET, align 4
  %58 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %59 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @atmel_tx(%struct.atmel_private* %56, i32 %57, i64 %60)
  %62 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %63 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @atmel_wmem8(%struct.atmel_private* %55, i32 %61, i32 %64)
  %66 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %67 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %68 = load i32, i32* @TX_DESC_RETRY_OFFSET, align 4
  %69 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %70 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @atmel_tx(%struct.atmel_private* %67, i32 %68, i64 %71)
  %73 = call i32 @atmel_wmem8(%struct.atmel_private* %66, i32 %72, i32 0)
  %74 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %75 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %176

78:                                               ; preds = %45
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %119

81:                                               ; preds = %78
  %82 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %83 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @CIPHER_SUITE_WEP_64, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @CIPHER_SUITE_WEP_128, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %81
  store i32 8, i32* %12, align 4
  br label %118

93:                                               ; preds = %88
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @CIPHER_SUITE_TKIP, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 12, i32* %12, align 4
  br label %117

98:                                               ; preds = %93
  %99 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %100 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @CIPHER_SUITE_WEP_64, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %106 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CIPHER_SUITE_WEP_128, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104, %98
  %111 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %112 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %11, align 4
  store i32 8, i32* %12, align 4
  br label %116

114:                                              ; preds = %104
  %115 = load i32, i32* @CIPHER_SUITE_NONE, align 4
  store i32 %115, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %114, %110
  br label %117

117:                                              ; preds = %116, %97
  br label %118

118:                                              ; preds = %117, %92
  br label %157

119:                                              ; preds = %78
  %120 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %121 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @CIPHER_SUITE_WEP_64, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @CIPHER_SUITE_WEP_128, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126, %119
  store i32 8, i32* %12, align 4
  br label %156

131:                                              ; preds = %126
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @CIPHER_SUITE_TKIP, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 12, i32* %12, align 4
  br label %155

136:                                              ; preds = %131
  %137 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %138 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @CIPHER_SUITE_WEP_64, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %148, label %142

142:                                              ; preds = %136
  %143 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %144 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @CIPHER_SUITE_WEP_128, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %142, %136
  %149 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %150 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %11, align 4
  store i32 8, i32* %12, align 4
  br label %154

152:                                              ; preds = %142
  %153 = load i32, i32* @CIPHER_SUITE_NONE, align 4
  store i32 %153, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %154

154:                                              ; preds = %152, %148
  br label %155

155:                                              ; preds = %154, %135
  br label %156

156:                                              ; preds = %155, %130
  br label %157

157:                                              ; preds = %156, %118
  %158 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %159 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %160 = load i32, i32* @TX_DESC_CIPHER_TYPE_OFFSET, align 4
  %161 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %162 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @atmel_tx(%struct.atmel_private* %159, i32 %160, i64 %163)
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @atmel_wmem8(%struct.atmel_private* %158, i32 %164, i32 %165)
  %167 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %168 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %169 = load i32, i32* @TX_DESC_CIPHER_LENGTH_OFFSET, align 4
  %170 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %171 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @atmel_tx(%struct.atmel_private* %168, i32 %169, i64 %172)
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @atmel_wmem8(%struct.atmel_private* %167, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %157, %45
  %177 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %178 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %179 = load i32, i32* @TX_DESC_NEXT_OFFSET, align 4
  %180 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %181 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @atmel_tx(%struct.atmel_private* %178, i32 %179, i64 %182)
  %184 = call i32 @atmel_wmem32(%struct.atmel_private* %177, i32 %183, i32 -2147483648)
  %185 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %186 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %187 = load i32, i32* @TX_DESC_FLAGS_OFFSET, align 4
  %188 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %189 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @atmel_tx(%struct.atmel_private* %186, i32 %187, i64 %190)
  %192 = load i32, i32* @TX_FIRM_OWN, align 4
  %193 = call i32 @atmel_wmem8(%struct.atmel_private* %185, i32 %191, i32 %192)
  %194 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %195 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %198 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %196, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %176
  %202 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %203 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %204 = load i32, i32* @TX_DESC_NEXT_OFFSET, align 4
  %205 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %206 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @atmel_tx(%struct.atmel_private* %203, i32 %204, i64 %207)
  %209 = call i32 @atmel_wmem32(%struct.atmel_private* %202, i32 %208, i32 0)
  br label %210

210:                                              ; preds = %201, %176
  %211 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %212 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %215 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %214, i32 0, i32 4
  store i64 %213, i64* %215, align 8
  %216 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %217 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %220 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %219, i32 0, i32 7
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sub nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = icmp slt i64 %218, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %210
  %227 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %228 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %229, 1
  store i64 %230, i64* %228, align 8
  br label %234

231:                                              ; preds = %210
  %232 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %233 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %232, i32 0, i32 0
  store i64 0, i64* %233, align 8
  br label %234

234:                                              ; preds = %231, %226
  %235 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %236 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %236, align 4
  %239 = load i64, i64* %8, align 8
  %240 = load %struct.atmel_private*, %struct.atmel_private** %6, align 8
  %241 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = sub nsw i64 %243, %239
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %241, align 8
  ret void
}

declare dso_local i32 @atmel_wmem16(%struct.atmel_private*, i32, i64) #1

declare dso_local i32 @atmel_tx(%struct.atmel_private*, i32, i64) #1

declare dso_local i32 @atmel_wmem8(%struct.atmel_private*, i32, i32) #1

declare dso_local i32 @atmel_wmem32(%struct.atmel_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
