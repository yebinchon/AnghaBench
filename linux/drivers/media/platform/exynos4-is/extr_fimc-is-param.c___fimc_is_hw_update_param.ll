; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-param.c___fimc_is_hw_update_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-param.c___fimc_is_hw_update_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i64, %struct.chain_config*, %struct.TYPE_8__* }
%struct.chain_config = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.is_param_region }
%struct.is_param_region = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fimc_is_hw_update_param(%struct.fimc_is* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_is*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.is_param_region*, align 8
  %7 = alloca %struct.chain_config*, align 8
  store %struct.fimc_is* %0, %struct.fimc_is** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %9 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store %struct.is_param_region* %11, %struct.is_param_region** %6, align 8
  %12 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %13 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %12, i32 0, i32 1
  %14 = load %struct.chain_config*, %struct.chain_config** %13, align 8
  %15 = load %struct.fimc_is*, %struct.fimc_is** %4, align 8
  %16 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %14, i64 %17
  store %struct.chain_config* %18, %struct.chain_config** %7, align 8
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %204 [
    i32 138, label %20
    i32 129, label %28
    i32 137, label %36
    i32 135, label %44
    i32 142, label %52
    i32 133, label %60
    i32 139, label %68
    i32 132, label %76
    i32 131, label %84
    i32 141, label %92
    i32 130, label %100
    i32 140, label %108
    i32 128, label %116
    i32 136, label %124
    i32 134, label %132
    i32 150, label %140
    i32 148, label %148
    i32 149, label %156
    i32 147, label %164
    i32 145, label %172
    i32 143, label %180
    i32 144, label %188
    i32 146, label %196
  ]

20:                                               ; preds = %2
  %21 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %22 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 14
  %24 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %25 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 14
  %27 = call i32 @__hw_param_copy(i32* %23, i32* %26)
  br label %207

28:                                               ; preds = %2
  %29 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %30 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 13
  %32 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %33 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 13
  %35 = call i32 @__hw_param_copy(i32* %31, i32* %34)
  br label %207

36:                                               ; preds = %2
  %37 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %38 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 12
  %40 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %41 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 12
  %43 = call i32 @__hw_param_copy(i32* %39, i32* %42)
  br label %207

44:                                               ; preds = %2
  %45 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %46 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 11
  %48 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %49 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 11
  %51 = call i32 @__hw_param_copy(i32* %47, i32* %50)
  br label %207

52:                                               ; preds = %2
  %53 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %54 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 10
  %56 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %57 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 10
  %59 = call i32 @__hw_param_copy(i32* %55, i32* %58)
  br label %207

60:                                               ; preds = %2
  %61 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %62 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 9
  %64 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %65 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 9
  %67 = call i32 @__hw_param_copy(i32* %63, i32* %66)
  br label %207

68:                                               ; preds = %2
  %69 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %70 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 8
  %72 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %73 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 8
  %75 = call i32 @__hw_param_copy(i32* %71, i32* %74)
  br label %207

76:                                               ; preds = %2
  %77 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %78 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 7
  %80 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %81 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 7
  %83 = call i32 @__hw_param_copy(i32* %79, i32* %82)
  br label %207

84:                                               ; preds = %2
  %85 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %86 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 6
  %88 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %89 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 6
  %91 = call i32 @__hw_param_copy(i32* %87, i32* %90)
  br label %207

92:                                               ; preds = %2
  %93 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %94 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 5
  %96 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %97 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 5
  %99 = call i32 @__hw_param_copy(i32* %95, i32* %98)
  br label %207

100:                                              ; preds = %2
  %101 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %102 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 4
  %104 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %105 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 4
  %107 = call i32 @__hw_param_copy(i32* %103, i32* %106)
  br label %207

108:                                              ; preds = %2
  %109 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %110 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  %112 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %113 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = call i32 @__hw_param_copy(i32* %111, i32* %114)
  br label %207

116:                                              ; preds = %2
  %117 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %118 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %121 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = call i32 @__hw_param_copy(i32* %119, i32* %122)
  br label %207

124:                                              ; preds = %2
  %125 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %126 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %129 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = call i32 @__hw_param_copy(i32* %127, i32* %130)
  br label %207

132:                                              ; preds = %2
  %133 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %134 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %137 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = call i32 @__hw_param_copy(i32* %135, i32* %138)
  br label %207

140:                                              ; preds = %2
  %141 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %142 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 3
  %144 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %145 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 3
  %147 = call i32 @__hw_param_copy(i32* %143, i32* %146)
  br label %207

148:                                              ; preds = %2
  %149 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %150 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %153 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  %155 = call i32 @__hw_param_copy(i32* %151, i32* %154)
  br label %207

156:                                              ; preds = %2
  %157 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %158 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 1
  %160 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %161 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = call i32 @__hw_param_copy(i32* %159, i32* %162)
  br label %207

164:                                              ; preds = %2
  %165 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %166 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %169 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = call i32 @__hw_param_copy(i32* %167, i32* %170)
  br label %207

172:                                              ; preds = %2
  %173 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %174 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 3
  %176 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %177 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 3
  %179 = call i32 @__hw_param_copy(i32* %175, i32* %178)
  br label %207

180:                                              ; preds = %2
  %181 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %182 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 2
  %184 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %185 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 2
  %187 = call i32 @__hw_param_copy(i32* %183, i32* %186)
  br label %207

188:                                              ; preds = %2
  %189 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %190 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  %192 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %193 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = call i32 @__hw_param_copy(i32* %191, i32* %194)
  br label %207

196:                                              ; preds = %2
  %197 = load %struct.is_param_region*, %struct.is_param_region** %6, align 8
  %198 = getelementptr inbounds %struct.is_param_region, %struct.is_param_region* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load %struct.chain_config*, %struct.chain_config** %7, align 8
  %201 = getelementptr inbounds %struct.chain_config, %struct.chain_config* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = call i32 @__hw_param_copy(i32* %199, i32* %202)
  br label %207

204:                                              ; preds = %2
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %3, align 4
  br label %208

207:                                              ; preds = %196, %188, %180, %172, %164, %156, %148, %140, %132, %124, %116, %108, %100, %92, %84, %76, %68, %60, %52, %44, %36, %28, %20
  store i32 0, i32* %3, align 4
  br label %208

208:                                              ; preds = %207, %204
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @__hw_param_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
