; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_handle_irq_noise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_handle_irq_noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i64** }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i64* }

@B43_PHYTYPE_G = common dso_local global i64 0, align 8
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @handle_irq_noise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_irq_noise(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_g*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.b43_phy_g*, %struct.b43_phy_g** %11, align 8
  store %struct.b43_phy_g* %12, %struct.b43_phy_g** %3, align 8
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @B43_PHYTYPE_G, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %251

20:                                               ; preds = %1
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @B43_WARN_ON(i32 %27)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = call i32 @b43_jssi_read(%struct.b43_wldev* %29)
  %31 = call i32 @cpu_to_le32(i32 %30)
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %31, i32* %32, align 16
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = icmp eq i32 %34, 127
  br i1 %35, label %48, label %36

36:                                               ; preds = %20
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 127
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 127
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 127
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %40, %36, %20
  br label %248

49:                                               ; preds = %44
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 8
  %55 = zext i1 %54 to i32
  %56 = call i32 @B43_WARN_ON(i32 %55)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %6, align 4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = load %struct.b43_phy_g*, %struct.b43_phy_g** %3, align 8
  %64 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = call i64 @ARRAY_SIZE(i64* %65)
  %67 = sub nsw i64 %66, 1
  %68 = call i32 @clamp_val(i32 %62, i32 0, i64 %67)
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %68, i32* %69, align 16
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.b43_phy_g*, %struct.b43_phy_g** %3, align 8
  %73 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = call i64 @ARRAY_SIZE(i64* %74)
  %76 = sub nsw i64 %75, 1
  %77 = call i32 @clamp_val(i32 %71, i32 0, i64 %76)
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.b43_phy_g*, %struct.b43_phy_g** %3, align 8
  %82 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = call i64 @ARRAY_SIZE(i64* %83)
  %85 = sub nsw i64 %84, 1
  %86 = call i32 @clamp_val(i32 %80, i32 0, i64 %85)
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %86, i32* %87, align 8
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.b43_phy_g*, %struct.b43_phy_g** %3, align 8
  %91 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = call i64 @ARRAY_SIZE(i64* %92)
  %94 = sub nsw i64 %93, 1
  %95 = call i32 @clamp_val(i32 %89, i32 0, i64 %94)
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 %95, i32* %96, align 4
  %97 = load %struct.b43_phy_g*, %struct.b43_phy_g** %3, align 8
  %98 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %101 = load i32, i32* %100, align 16
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %106 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i64**, i64*** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64*, i64** %108, i64 %110
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  store i64 %104, i64* %113, align 8
  %114 = load %struct.b43_phy_g*, %struct.b43_phy_g** %3, align 8
  %115 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %116, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %123 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i64**, i64*** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64*, i64** %125, i64 %127
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  store i64 %121, i64* %130, align 8
  %131 = load %struct.b43_phy_g*, %struct.b43_phy_g** %3, align 8
  %132 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %133, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %140 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  %142 = load i64**, i64*** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64*, i64** %142, i64 %144
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 2
  store i64 %138, i64* %147, align 8
  %148 = load %struct.b43_phy_g*, %struct.b43_phy_g** %3, align 8
  %149 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %157 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load i64**, i64*** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64*, i64** %159, i64 %161
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 3
  store i64 %155, i64* %164, align 8
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %166 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %171 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 8
  br i1 %174, label %175, label %247

175:                                              ; preds = %49
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %204, %175
  %177 = load i32, i32* %6, align 4
  %178 = icmp slt i32 %177, 8
  br i1 %178, label %179, label %207

179:                                              ; preds = %176
  store i32 0, i32* %7, align 4
  br label %180

180:                                              ; preds = %200, %179
  %181 = load i32, i32* %7, align 4
  %182 = icmp slt i32 %181, 4
  br i1 %182, label %183, label %203

183:                                              ; preds = %180
  %184 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %185 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  %187 = load i64**, i64*** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64*, i64** %187, i64 %189
  %191 = load i64*, i64** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %195
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %183
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %180

203:                                              ; preds = %180
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  br label %176

207:                                              ; preds = %176
  %208 = load i32, i32* %8, align 4
  %209 = sdiv i32 %208, 32
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = mul nsw i32 %210, 125
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, 64
  store i32 %213, i32* %8, align 4
  %214 = load i32, i32* %8, align 4
  %215 = sdiv i32 %214, 128
  store i32 %215, i32* %8, align 4
  %216 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %217 = load i32, i32* @B43_SHM_SHARED, align 4
  %218 = call i32 @b43_shm_read16(%struct.b43_wldev* %216, i32 %217, i32 1036)
  store i32 %218, i32* %4, align 4
  %219 = load i32, i32* %4, align 4
  %220 = sdiv i32 %219, 128
  %221 = and i32 %220, 31
  store i32 %221, i32* %4, align 4
  %222 = load i32, i32* %4, align 4
  %223 = icmp sge i32 %222, 8
  br i1 %223, label %224, label %227

224:                                              ; preds = %207
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 2
  store i32 %226, i32* %8, align 4
  br label %230

227:                                              ; preds = %207
  %228 = load i32, i32* %8, align 4
  %229 = sub nsw i32 %228, 25
  store i32 %229, i32* %8, align 4
  br label %230

230:                                              ; preds = %227, %224
  %231 = load i32, i32* %4, align 4
  %232 = icmp eq i32 %231, 8
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32, i32* %8, align 4
  %235 = sub nsw i32 %234, 72
  store i32 %235, i32* %8, align 4
  br label %239

236:                                              ; preds = %230
  %237 = load i32, i32* %8, align 4
  %238 = sub nsw i32 %237, 48
  store i32 %238, i32* %8, align 4
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i32, i32* %8, align 4
  %241 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %242 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  store i32 %240, i32* %243, align 8
  %244 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %245 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  store i32 0, i32* %246, align 8
  br label %251

247:                                              ; preds = %49
  br label %248

248:                                              ; preds = %247, %48
  %249 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %250 = call i32 @b43_generate_noise_sample(%struct.b43_wldev* %249)
  br label %251

251:                                              ; preds = %248, %239, %19
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @b43_jssi_read(%struct.b43_wldev*) #1

declare dso_local i32 @clamp_val(i32, i32, i64) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @b43_shm_read16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_generate_noise_sample(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
