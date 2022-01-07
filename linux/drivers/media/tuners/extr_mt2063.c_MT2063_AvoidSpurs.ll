; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_MT2063_AvoidSpurs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_MT2063_AvoidSpurs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MT2063_AvoidSpursData_t = type { i32, i32, i64, i32, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MT2063_SPUR_PRESENT_ERR = common dso_local global i32 0, align 4
@MT2063_SPUR_SHIFT = common dso_local global i32 0, align 4
@MT2063_SPUR_CNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MT2063_AvoidSpursData_t*)* @MT2063_AvoidSpurs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MT2063_AvoidSpurs(%struct.MT2063_AvoidSpursData_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.MT2063_AvoidSpursData_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.MT2063_AvoidSpursData_t* %0, %struct.MT2063_AvoidSpursData_t** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %13 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %15 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %18 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %168

22:                                               ; preds = %1
  %23 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %24 = call i8* @IsSpurInBand(%struct.MT2063_AvoidSpursData_t* %23, i32* %5, i32* %6)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %27 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %29 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %157

32:                                               ; preds = %22
  %33 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %34 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %37 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %41 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %44 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %136, %32
  %47 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %48 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t* %51, i32 %54, i32 %57)
  %59 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %60 = call i32 @MT2063_ChooseFirstIF(%struct.MT2063_AvoidSpursData_t* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %46
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %69 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %76 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %94

79:                                               ; preds = %46
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %84 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %87, %88
  %90 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %91 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %79, %64
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %98 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 8
  %100 = icmp sgt i32 %96, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %104 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %102, %105
  store i32 %106, i32* %10, align 4
  br label %113

107:                                              ; preds = %94
  %108 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %109 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %107, %101
  %114 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %115 = call i8* @IsSpurInBand(%struct.MT2063_AvoidSpursData_t* %114, i32* %5, i32* %6)
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %118 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %113
  %120 = load i32, i32* %10, align 4
  %121 = mul nsw i32 2, %120
  %122 = sext i32 %121 to i64
  %123 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %124 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %128 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %127, i32 0, i32 8
  %129 = load i64, i64* %128, align 8
  %130 = icmp sle i64 %126, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %119
  %132 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %133 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br label %136

136:                                              ; preds = %131, %119
  %137 = phi i1 [ false, %119 ], [ %135, %131 ]
  br i1 %137, label %46, label %138

138:                                              ; preds = %136
  %139 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %140 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = load i32, i32* @MT2063_SPUR_PRESENT_ERR, align 4
  %145 = load i32, i32* %4, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %149 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %152 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %151, i32 0, i32 6
  store i32 %150, i32* %152, align 4
  br label %156

153:                                              ; preds = %138
  %154 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %155 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  br label %156

156:                                              ; preds = %153, %143
  br label %157

157:                                              ; preds = %156, %22
  %158 = load %struct.MT2063_AvoidSpursData_t*, %struct.MT2063_AvoidSpursData_t** %3, align 8
  %159 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, %struct.MT2063_AvoidSpursData_t* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @MT2063_SPUR_SHIFT, align 4
  %162 = shl i32 %160, %161
  %163 = load i32, i32* @MT2063_SPUR_CNT_MASK, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* %4, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %157, %21
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i8* @IsSpurInBand(%struct.MT2063_AvoidSpursData_t*, i32*, i32*) #1

declare dso_local i32 @MT2063_AddExclZone(%struct.MT2063_AvoidSpursData_t*, i32, i32) #1

declare dso_local i32 @MT2063_ChooseFirstIF(%struct.MT2063_AvoidSpursData_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
