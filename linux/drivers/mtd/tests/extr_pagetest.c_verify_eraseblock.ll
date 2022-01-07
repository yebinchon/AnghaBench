; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_pagetest.c_verify_eraseblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_pagetest.c_verify_eraseblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.rnd_state = type { i32 }

@mtd = common dso_local global %struct.TYPE_3__* null, align 8
@ebcnt = common dso_local global i32 0, align 4
@bbt = common dso_local global i64* null, align 8
@rnd_state = common dso_local global %struct.rnd_state zeroinitializer, align 4
@writebuf = common dso_local global i64 0, align 8
@pgcnt = common dso_local global i32 0, align 4
@bufsize = common dso_local global i32 0, align 4
@twopages = common dso_local global i32 0, align 4
@pgsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"error: verify failed at %#llx\0A\00", align 1
@errcnt = common dso_local global i32 0, align 4
@boundary = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @verify_eraseblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_eraseblock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rnd_state, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %35, %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ebcnt, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i64*, i64** @bbt, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i1 [ false, %16 ], [ %26, %20 ]
  br i1 %28, label %29, label %38

29:                                               ; preds = %27
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %16

38:                                               ; preds = %27
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %64, %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ebcnt, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i64*, i64** @bbt, align 8
  %48 = load i32, i32* @ebcnt, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %47, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %46, %42
  %57 = phi i1 [ false, %42 ], [ %55, %46 ]
  br i1 %57, label %58, label %67

58:                                               ; preds = %56
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %42

67:                                               ; preds = %56
  %68 = load i64, i64* @writebuf, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @prandom_bytes_state(%struct.rnd_state* @rnd_state, i64 %68, i32 %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %130, %67
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @pgcnt, align 4
  %76 = sub nsw i32 %75, 1
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %136

78:                                               ; preds = %73
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @bufsize, align 4
  %82 = load i32, i32* @twopages, align 4
  %83 = call i32 @mtdtest_read(%struct.TYPE_3__* %79, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %222

88:                                               ; preds = %78
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @bufsize, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* @bufsize, align 4
  %94 = load i32, i32* @twopages, align 4
  %95 = call i32 @mtdtest_read(%struct.TYPE_3__* %89, i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %222

100:                                              ; preds = %88
  %101 = load i32, i32* @twopages, align 4
  %102 = load i32, i32* @bufsize, align 4
  %103 = call i32 @memset(i32 %101, i32 0, i32 %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @bufsize, align 4
  %107 = load i32, i32* @twopages, align 4
  %108 = call i32 @mtdtest_read(%struct.TYPE_3__* %104, i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %136

112:                                              ; preds = %100
  %113 = load i32, i32* @twopages, align 4
  %114 = load i64, i64* @writebuf, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @pgsize, align 4
  %117 = mul nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %114, %118
  %120 = load i32, i32* @bufsize, align 4
  %121 = call i64 @memcmp(i32 %113, i64 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %112
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %125)
  %127 = load i32, i32* @errcnt, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @errcnt, align 4
  br label %129

129:                                              ; preds = %123, %112
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* @pgsize, align 4
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %9, align 4
  br label %73

136:                                              ; preds = %111, %73
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @pgsize, align 4
  %140 = sub nsw i32 %138, %139
  %141 = load i32, i32* @pgsize, align 4
  %142 = sub nsw i32 %140, %141
  %143 = icmp sle i32 %137, %142
  br i1 %143, label %144, label %220

144:                                              ; preds = %136
  %145 = load i64*, i64** @bbt, align 8
  %146 = load i32, i32* %3, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %145, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %220, label %152

152:                                              ; preds = %144
  %153 = bitcast %struct.rnd_state* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %153, i8* align 4 bitcast (%struct.rnd_state* @rnd_state to i8*), i64 4, i1 false)
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @bufsize, align 4
  %157 = load i32, i32* @twopages, align 4
  %158 = call i32 @mtdtest_read(%struct.TYPE_3__* %154, i32 %155, i32 %156, i32 %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %152
  %162 = load i32, i32* %5, align 4
  store i32 %162, i32* %2, align 4
  br label %222

163:                                              ; preds = %152
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @bufsize, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load i32, i32* @bufsize, align 4
  %169 = load i32, i32* @twopages, align 4
  %170 = call i32 @mtdtest_read(%struct.TYPE_3__* %164, i32 %167, i32 %168, i32 %169)
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %163
  %174 = load i32, i32* %5, align 4
  store i32 %174, i32* %2, align 4
  br label %222

175:                                              ; preds = %163
  %176 = load i32, i32* @twopages, align 4
  %177 = load i32, i32* @bufsize, align 4
  %178 = call i32 @memset(i32 %176, i32 0, i32 %177)
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @bufsize, align 4
  %182 = load i32, i32* @twopages, align 4
  %183 = call i32 @mtdtest_read(%struct.TYPE_3__* %179, i32 %180, i32 %181, i32 %182)
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %5, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %175
  %187 = load i32, i32* %5, align 4
  store i32 %187, i32* %2, align 4
  br label %222

188:                                              ; preds = %175
  %189 = load i64, i64* @boundary, align 8
  %190 = load i64, i64* @writebuf, align 8
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %190, %194
  %196 = load i32, i32* @pgsize, align 4
  %197 = sext i32 %196 to i64
  %198 = sub nsw i64 %195, %197
  %199 = load i32, i32* @pgsize, align 4
  %200 = call i32 @memcpy(i64 %189, i64 %198, i32 %199)
  %201 = load i64, i64* @boundary, align 8
  %202 = load i32, i32* @pgsize, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %201, %203
  %205 = load i32, i32* @pgsize, align 4
  %206 = call i32 @prandom_bytes_state(%struct.rnd_state* @rnd_state, i64 %204, i32 %205)
  %207 = load i32, i32* @twopages, align 4
  %208 = load i64, i64* @boundary, align 8
  %209 = load i32, i32* @bufsize, align 4
  %210 = call i64 @memcmp(i32 %207, i64 %208, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %188
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %214)
  %216 = load i32, i32* @errcnt, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* @errcnt, align 4
  br label %218

218:                                              ; preds = %212, %188
  %219 = bitcast %struct.rnd_state* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.rnd_state* @rnd_state to i8*), i8* align 4 %219, i64 4, i1 false)
  br label %220

220:                                              ; preds = %218, %144, %136
  %221 = load i32, i32* %5, align 4
  store i32 %221, i32* %2, align 4
  br label %222

222:                                              ; preds = %220, %186, %173, %161, %98, %86
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local i32 @prandom_bytes_state(%struct.rnd_state*, i64, i32) #1

declare dso_local i32 @mtdtest_read(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @memcmp(i32, i64, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
