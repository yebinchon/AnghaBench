; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/echo/extr_echo.c_oslec_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/echo/extr_echo.c_oslec_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oslec_state = type { i32, i32, i32, i32, i32, %struct.oslec_state**, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i64*, i64*, i64*, i64*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.oslec_state* @oslec_create(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.oslec_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.oslec_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.oslec_state* @kzalloc(i32 216, i32 %9)
  store %struct.oslec_state* %10, %struct.oslec_state** %6, align 8
  %11 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %12 = icmp ne %struct.oslec_state* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.oslec_state* null, %struct.oslec_state** %3, align 8
  br label %210

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %17 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @top_bit(i32 %18)
  %20 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %21 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %20, i32 0, i32 29
  store i32 %19, i32* %21, align 8
  %22 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %23 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %27 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %29 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kcalloc(i32 %30, i32 4, i32 %31)
  %33 = bitcast i8* %32 to %struct.oslec_state*
  %34 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %35 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %34, i32 0, i32 5
  %36 = load %struct.oslec_state**, %struct.oslec_state*** %35, align 8
  %37 = getelementptr inbounds %struct.oslec_state*, %struct.oslec_state** %36, i64 0
  store %struct.oslec_state* %33, %struct.oslec_state** %37, align 8
  %38 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %39 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %38, i32 0, i32 5
  %40 = load %struct.oslec_state**, %struct.oslec_state*** %39, align 8
  %41 = getelementptr inbounds %struct.oslec_state*, %struct.oslec_state** %40, i64 0
  %42 = load %struct.oslec_state*, %struct.oslec_state** %41, align 8
  %43 = icmp ne %struct.oslec_state* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %14
  br label %207

45:                                               ; preds = %14
  %46 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %47 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kcalloc(i32 %48, i32 4, i32 %49)
  %51 = bitcast i8* %50 to %struct.oslec_state*
  %52 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %53 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %52, i32 0, i32 5
  %54 = load %struct.oslec_state**, %struct.oslec_state*** %53, align 8
  %55 = getelementptr inbounds %struct.oslec_state*, %struct.oslec_state** %54, i64 1
  store %struct.oslec_state* %51, %struct.oslec_state** %55, align 8
  %56 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %57 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %56, i32 0, i32 5
  %58 = load %struct.oslec_state**, %struct.oslec_state*** %57, align 8
  %59 = getelementptr inbounds %struct.oslec_state*, %struct.oslec_state** %58, i64 1
  %60 = load %struct.oslec_state*, %struct.oslec_state** %59, align 8
  %61 = icmp ne %struct.oslec_state* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %45
  br label %200

63:                                               ; preds = %45
  %64 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %65 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %64, i32 0, i32 6
  %66 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %67 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %66, i32 0, i32 5
  %68 = load %struct.oslec_state**, %struct.oslec_state*** %67, align 8
  %69 = getelementptr inbounds %struct.oslec_state*, %struct.oslec_state** %68, i64 0
  %70 = load %struct.oslec_state*, %struct.oslec_state** %69, align 8
  %71 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %72 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32* @fir16_create(i32* %65, %struct.oslec_state* %70, i32 %73)
  store i32* %74, i32** %8, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %63
  br label %193

78:                                               ; preds = %63
  %79 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %80 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %79, i32 0, i32 7
  %81 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %82 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %81, i32 0, i32 5
  %83 = load %struct.oslec_state**, %struct.oslec_state*** %82, align 8
  %84 = getelementptr inbounds %struct.oslec_state*, %struct.oslec_state** %83, i64 1
  %85 = load %struct.oslec_state*, %struct.oslec_state** %84, align 8
  %86 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %87 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32* @fir16_create(i32* %80, %struct.oslec_state* %85, i32 %88)
  store i32* %89, i32** %8, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %78
  br label %189

93:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %122, %93
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 5
  br i1 %96, label %97, label %125

97:                                               ; preds = %94
  %98 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %99 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %98, i32 0, i32 25
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64 0, i64* %103, align 8
  %104 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %105 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %104, i32 0, i32 26
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  store i64 0, i64* %109, align 8
  %110 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %111 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %110, i32 0, i32 27
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 0, i64* %115, align 8
  %116 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %117 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %116, i32 0, i32 28
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %97
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %94

125:                                              ; preds = %94
  %126 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %127 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %126, i32 0, i32 2
  store i32 1000, i32* %127, align 8
  %128 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @oslec_adaption_mode(%struct.oslec_state* %128, i32 %129)
  %131 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %132 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call i8* @kcalloc(i32 %133, i32 4, i32 %134)
  %136 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %137 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %136, i32 0, i32 24
  store i8* %135, i8** %137, align 8
  %138 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %139 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %138, i32 0, i32 24
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %125
  br label %185

143:                                              ; preds = %125
  %144 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %145 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %144, i32 0, i32 23
  store i64 0, i64* %145, align 8
  %146 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %147 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %146, i32 0, i32 22
  store i64 0, i64* %147, align 8
  %148 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %149 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %148, i32 0, i32 18
  store i64 0, i64* %149, align 8
  %150 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %151 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %150, i32 0, i32 19
  store i64 0, i64* %151, align 8
  %152 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %153 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %152, i32 0, i32 20
  store i64 0, i64* %153, align 8
  %154 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %155 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %154, i32 0, i32 21
  store i64 0, i64* %155, align 8
  %156 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %157 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %156, i32 0, i32 14
  store i64 0, i64* %157, align 8
  %158 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %159 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %158, i32 0, i32 15
  store i64 0, i64* %159, align 8
  %160 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %161 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %160, i32 0, i32 16
  store i64 0, i64* %161, align 8
  %162 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %163 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %162, i32 0, i32 17
  store i64 0, i64* %163, align 8
  %164 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %165 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %164, i32 0, i32 10
  store i64 0, i64* %165, align 8
  %166 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %167 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %166, i32 0, i32 11
  store i64 0, i64* %167, align 8
  %168 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %169 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %168, i32 0, i32 12
  store i64 0, i64* %169, align 8
  %170 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %171 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %170, i32 0, i32 13
  store i64 0, i64* %171, align 8
  %172 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %173 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %172, i32 0, i32 8
  store i64 0, i64* %173, align 8
  %174 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %175 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %174, i32 0, i32 9
  store i64 0, i64* %175, align 8
  %176 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %177 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %176, i32 0, i32 3
  store i32 200, i32* %177, align 4
  %178 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %179 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 13
  %182 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %183 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 8
  %184 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  store %struct.oslec_state* %184, %struct.oslec_state** %3, align 8
  br label %210

185:                                              ; preds = %142
  %186 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %187 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %186, i32 0, i32 7
  %188 = call i32 @fir16_free(i32* %187)
  br label %189

189:                                              ; preds = %185, %92
  %190 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %191 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %190, i32 0, i32 6
  %192 = call i32 @fir16_free(i32* %191)
  br label %193

193:                                              ; preds = %189, %77
  %194 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %195 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %194, i32 0, i32 5
  %196 = load %struct.oslec_state**, %struct.oslec_state*** %195, align 8
  %197 = getelementptr inbounds %struct.oslec_state*, %struct.oslec_state** %196, i64 1
  %198 = load %struct.oslec_state*, %struct.oslec_state** %197, align 8
  %199 = call i32 @kfree(%struct.oslec_state* %198)
  br label %200

200:                                              ; preds = %193, %62
  %201 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %202 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %201, i32 0, i32 5
  %203 = load %struct.oslec_state**, %struct.oslec_state*** %202, align 8
  %204 = getelementptr inbounds %struct.oslec_state*, %struct.oslec_state** %203, i64 0
  %205 = load %struct.oslec_state*, %struct.oslec_state** %204, align 8
  %206 = call i32 @kfree(%struct.oslec_state* %205)
  br label %207

207:                                              ; preds = %200, %44
  %208 = load %struct.oslec_state*, %struct.oslec_state** %6, align 8
  %209 = call i32 @kfree(%struct.oslec_state* %208)
  store %struct.oslec_state* null, %struct.oslec_state** %3, align 8
  br label %210

210:                                              ; preds = %207, %143, %13
  %211 = load %struct.oslec_state*, %struct.oslec_state** %3, align 8
  ret %struct.oslec_state* %211
}

declare dso_local %struct.oslec_state* @kzalloc(i32, i32) #1

declare dso_local i32 @top_bit(i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32* @fir16_create(i32*, %struct.oslec_state*, i32) #1

declare dso_local i32 @oslec_adaption_mode(%struct.oslec_state*, i32) #1

declare dso_local i32 @fir16_free(i32*) #1

declare dso_local i32 @kfree(%struct.oslec_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
