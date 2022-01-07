; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_erase_varsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_erase_varsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.mtd_erase_region_info*, %struct.map_info* }
%struct.mtd_erase_region_info = type { i32, i32, i64 }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, i32, i32* }
%struct.erase_info = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @cfi_staa_erase_varsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_staa_erase_varsize(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.erase_info*, align 8
  %6 = alloca %struct.map_info*, align 8
  %7 = alloca %struct.cfi_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mtd_erase_region_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.erase_info* %1, %struct.erase_info** %5, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 2
  %17 = load %struct.map_info*, %struct.map_info** %16, align 8
  store %struct.map_info* %17, %struct.map_info** %6, align 8
  %18 = load %struct.map_info*, %struct.map_info** %6, align 8
  %19 = getelementptr inbounds %struct.map_info, %struct.map_info* %18, i32 0, i32 0
  %20 = load %struct.cfi_private*, %struct.cfi_private** %19, align 8
  store %struct.cfi_private* %20, %struct.cfi_private** %7, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 1
  %23 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %22, align 8
  store %struct.mtd_erase_region_info* %23, %struct.mtd_erase_region_info** %14, align 8
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %43, %2
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %32 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %34, i64 %36
  %38 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %33, %39
  br label %41

41:                                               ; preds = %30, %24
  %42 = phi i1 [ false, %24 ], [ %40, %30 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %24

46:                                               ; preds = %41
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %12, align 4
  %49 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %50 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %52, i64 %54
  %56 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %51, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %46
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %235

64:                                               ; preds = %46
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %91, %64
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %69 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  %73 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %74 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %78 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %81, i64 %83
  %85 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = icmp sge i64 %80, %87
  br label %89

89:                                               ; preds = %72, %66
  %90 = phi i1 [ false, %66 ], [ %88, %72 ]
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %66

94:                                               ; preds = %89
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %12, align 4
  %97 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %98 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %102 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %105, i64 %107
  %109 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = and i64 %104, %112
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %94
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %235

118:                                              ; preds = %94
  %119 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %120 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %123 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = ashr i32 %121, %124
  store i32 %125, i32* %10, align 4
  %126 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %127 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %131 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = shl i32 %129, %132
  %134 = sub nsw i32 %128, %133
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %8, align 8
  %136 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %137 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %9, align 8
  %139 = load i32, i32* %13, align 4
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %233, %118
  %141 = load i64, i64* %9, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %234

143:                                              ; preds = %140
  %144 = load %struct.map_info*, %struct.map_info** %6, align 8
  %145 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %146 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i64, i64* %8, align 8
  %152 = call i32 @do_erase_oneblock(%struct.map_info* %144, i32* %150, i64 %151)
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %143
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %3, align 4
  br label %235

157:                                              ; preds = %143
  %158 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %158, i64 %160
  %162 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* %8, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %8, align 8
  %167 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %167, i64 %169
  %171 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %9, align 8
  %175 = sub i64 %174, %173
  store i64 %175, i64* %9, align 8
  %176 = load i64, i64* %8, align 8
  %177 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %178 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = shl i32 1, %179
  %181 = sext i32 %180 to i64
  %182 = urem i64 %176, %181
  %183 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %183, i64 %185
  %187 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %190, i64 %192
  %194 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %197, i64 %199
  %201 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = mul i64 %196, %202
  %204 = add i64 %189, %203
  %205 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %206 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = shl i32 1, %207
  %209 = sext i32 %208 to i64
  %210 = urem i64 %204, %209
  %211 = icmp eq i64 %182, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %157
  %213 = load i32, i32* %12, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %12, align 4
  br label %215

215:                                              ; preds = %212, %157
  %216 = load i64, i64* %8, align 8
  %217 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %218 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = zext i32 %219 to i64
  %221 = lshr i64 %216, %220
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %215
  store i64 0, i64* %8, align 8
  %224 = load i32, i32* %10, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %10, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %228 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp sge i32 %226, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  br label %234

232:                                              ; preds = %223
  br label %233

233:                                              ; preds = %232, %215
  br label %140

234:                                              ; preds = %231, %140
  store i32 0, i32* %3, align 4
  br label %235

235:                                              ; preds = %234, %155, %115, %61
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i32 @do_erase_oneblock(%struct.map_info*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
