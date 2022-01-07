; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_wext.c_orinoco_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_wext.c_orinoco_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i32*, i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@SMALL_KEY_SIZE = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orinoco_private*, i32, i32, i32*, i32, i32*, i32)* @orinoco_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_set_key(%struct.orinoco_private* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.orinoco_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %17 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kzfree(i32* %23)
  %25 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %26 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kzfree(i32* %32)
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %7
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call i8* @kzalloc(i32 %37, i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %42 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32* %40, i32** %47, align 8
  %48 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %49 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %36
  br label %204

58:                                               ; preds = %36
  br label %67

59:                                               ; preds = %7
  %60 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %61 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %59, %58
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @GFP_ATOMIC, align 4
  %73 = call i8* @kzalloc(i32 %71, i32 %72)
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %76 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  store i32* %74, i32** %81, align 8
  %82 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %83 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %70
  br label %187

92:                                               ; preds = %70
  br label %101

93:                                               ; preds = %67
  %94 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %95 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %93, %92
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %104 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %102, i32* %109, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %112 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i32 %110, i32* %117, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %101
  %121 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %122 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = bitcast i32* %128 to i8*
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @memcpy(i8* %129, i32* %130, i32 %131)
  br label %133

133:                                              ; preds = %120, %101
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %133
  %137 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %138 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %137, i32 0, i32 0
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = bitcast i32* %144 to i8*
  %146 = load i32*, i32** %14, align 8
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @memcpy(i8* %145, i32* %146, i32 %147)
  br label %149

149:                                              ; preds = %136, %133
  %150 = load i32, i32* %11, align 4
  switch i32 %150, label %178 [
    i32 129, label %151
    i32 128, label %160
    i32 130, label %177
  ]

151:                                              ; preds = %149
  %152 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %153 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %154 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 2
  store i64 %152, i64* %159, align 8
  br label %186

160:                                              ; preds = %149
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @SMALL_KEY_SIZE, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  br label %168

166:                                              ; preds = %160
  %167 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i64 [ %165, %164 ], [ %167, %166 ]
  %170 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %171 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %170, i32 0, i32 0
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 2
  store i64 %169, i64* %176, align 8
  br label %186

177:                                              ; preds = %149
  br label %178

178:                                              ; preds = %149, %177
  %179 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %180 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %179, i32 0, i32 0
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  store i64 0, i64* %185, align 8
  br label %186

186:                                              ; preds = %178, %168, %151
  store i32 0, i32* %8, align 4
  br label %228

187:                                              ; preds = %91
  %188 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %189 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %188, i32 0, i32 0
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @kfree(i32* %195)
  %197 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %198 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %197, i32 0, i32 0
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 3
  store i32* null, i32** %203, align 8
  br label %204

204:                                              ; preds = %187, %57
  %205 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %206 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %205, i32 0, i32 0
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  store i32 0, i32* %211, align 8
  %212 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %213 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %212, i32 0, i32 0
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 1
  store i32 0, i32* %218, align 4
  %219 = load %struct.orinoco_private*, %struct.orinoco_private** %9, align 8
  %220 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %219, i32 0, i32 0
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 2
  store i64 0, i64* %225, align 8
  %226 = load i32, i32* @ENOMEM, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %8, align 4
  br label %228

228:                                              ; preds = %204, %186
  %229 = load i32, i32* %8, align 4
  ret i32 %229
}

declare dso_local i32 @kzfree(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
