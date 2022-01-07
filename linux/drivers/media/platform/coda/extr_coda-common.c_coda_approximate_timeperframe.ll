; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_approximate_timeperframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_approximate_timeperframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fract = type { i32, i32, i32, i32 }

@__const.coda_approximate_timeperframe.f1 = private unnamed_addr constant %struct.v4l2_fract { i32 1, i32 0, i32 0, i32 0 }, align 4
@__const.coda_approximate_timeperframe.f2 = private unnamed_addr constant %struct.v4l2_fract { i32 0, i32 1, i32 0, i32 0 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_fract*)* @coda_approximate_timeperframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_approximate_timeperframe(%struct.v4l2_fract* %0) #0 {
  %2 = alloca %struct.v4l2_fract*, align 8
  %3 = alloca %struct.v4l2_fract, align 4
  %4 = alloca %struct.v4l2_fract, align 4
  %5 = alloca %struct.v4l2_fract, align 4
  %6 = alloca %struct.v4l2_fract, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_fract* %0, %struct.v4l2_fract** %2, align 8
  %10 = load %struct.v4l2_fract*, %struct.v4l2_fract** %2, align 8
  %11 = bitcast %struct.v4l2_fract* %3 to i8*
  %12 = bitcast %struct.v4l2_fract* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 16, i1 false)
  %13 = bitcast %struct.v4l2_fract* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.v4l2_fract* @__const.coda_approximate_timeperframe.f1 to i8*), i64 16, i1 false)
  %14 = bitcast %struct.v4l2_fract* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.v4l2_fract* @__const.coda_approximate_timeperframe.f2 to i8*), i64 16, i1 false)
  %15 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %20, %22
  %24 = icmp sgt i32 %23, 65535
  br i1 %24, label %25, label %30

25:                                               ; preds = %18, %1
  %26 = load %struct.v4l2_fract*, %struct.v4l2_fract** %2, align 8
  %27 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %26, i32 0, i32 2
  store i32 1, i32* %27, align 4
  %28 = load %struct.v4l2_fract*, %struct.v4l2_fract** %2, align 8
  %29 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %28, i32 0, i32 3
  store i32 65535, i32* %29, align 4
  br label %131

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %36, %38
  %40 = icmp sgt i32 %39, 65536
  br i1 %40, label %41, label %46

41:                                               ; preds = %34, %30
  %42 = load %struct.v4l2_fract*, %struct.v4l2_fract** %2, align 8
  %43 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %42, i32 0, i32 2
  store i32 65536, i32* %43, align 4
  %44 = load %struct.v4l2_fract*, %struct.v4l2_fract** %2, align 8
  %45 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  br label %131

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gcd(i32 %48, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ugt i32 %52, 1
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  %56 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = udiv i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = udiv i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %54, %46
  %64 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp sle i32 %65, 65536
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %69, 65536
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.v4l2_fract*, %struct.v4l2_fract** %2, align 8
  %73 = bitcast %struct.v4l2_fract* %72 to i8*
  %74 = bitcast %struct.v4l2_fract* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 16, i1 false)
  br label %131

75:                                               ; preds = %67, %63
  br label %76

76:                                               ; preds = %95, %75
  %77 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %6, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp sle i32 %78, 65536
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %6, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 65536
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i1 [ false, %76 ], [ %83, %80 ]
  br i1 %85, label %86, label %127

86:                                               ; preds = %84
  %87 = bitcast %struct.v4l2_fract* %4 to i8*
  %88 = bitcast %struct.v4l2_fract* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 16, i1 false)
  %89 = bitcast %struct.v4l2_fract* %5 to i8*
  %90 = bitcast %struct.v4l2_fract* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 16, i1 false)
  %91 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %127

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %97, %99
  store i32 %100, i32* %7, align 4
  %101 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %4, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %5, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = mul i32 %103, %105
  %107 = add i32 %102, %106
  %108 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %6, i32 0, i32 2
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %4, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %6, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = mul i32 %111, %113
  %115 = add i32 %110, %114
  %116 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %6, i32 0, i32 3
  store i32 %115, i32* %116, align 4
  %117 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %9, align 4
  %119 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = srem i32 %120, %122
  %124 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 2
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %9, align 4
  %126 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %3, i32 0, i32 3
  store i32 %125, i32* %126, align 4
  br label %76

127:                                              ; preds = %94, %84
  %128 = load %struct.v4l2_fract*, %struct.v4l2_fract** %2, align 8
  %129 = bitcast %struct.v4l2_fract* %128 to i8*
  %130 = bitcast %struct.v4l2_fract* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %129, i8* align 4 %130, i64 16, i1 false)
  br label %131

131:                                              ; preds = %127, %71, %41, %25
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gcd(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
