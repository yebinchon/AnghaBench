; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_streamzap.c_sz_push_full_pulse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_streamzap.c_sz_push_full_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.streamzap_ir = type { i32, i64, i32, i32 }
%struct.ir_raw_event = type { i32, i32 }

@USEC_PER_SEC = common dso_local global i32 0, align 4
@IR_MAX_DURATION = common dso_local global i8* null, align 8
@SZ_RESOLUTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.streamzap_ir*, i8)* @sz_push_full_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sz_push_full_pulse(%struct.streamzap_ir* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.streamzap_ir*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.ir_raw_event, align 4
  %6 = alloca i32, align 4
  store %struct.streamzap_ir* %0, %struct.streamzap_ir** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = bitcast %struct.ir_raw_event* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %9 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %79

12:                                               ; preds = %2
  %13 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %14 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %17 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = call i32 (...) @ktime_get_real()
  %19 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %20 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %22 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %25 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ktime_us_delta(i32 %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @USEC_PER_SEC, align 4
  %31 = mul nsw i32 15, %30
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %12
  %34 = load i8*, i8** @IR_MAX_DURATION, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  br label %70

37:                                               ; preds = %12
  %38 = load i32, i32* %6, align 4
  %39 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %41 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %45, %42
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  %48 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @US_TO_NS(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load i8*, i8** @IR_MAX_DURATION, align 8
  %58 = icmp ugt i8* %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %37
  %60 = load i8*, i8** @IR_MAX_DURATION, align 8
  br label %66

61:                                               ; preds = %37
  %62 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  br label %66

66:                                               ; preds = %61, %59
  %67 = phi i8* [ %60, %59 ], [ %65, %61 ]
  %68 = ptrtoint i8* %67 to i32
  %69 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %33
  %71 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %72 = bitcast %struct.ir_raw_event* %5 to i64*
  %73 = load i64, i64* %72, align 4
  %74 = call i32 @sz_push(%struct.streamzap_ir* %71, i64 %73)
  %75 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %76 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %78 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %70, %2
  %80 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load i8, i8* %4, align 1
  %82 = zext i8 %81 to i32
  %83 = load i32, i32* @SZ_RESOLUTION, align 4
  %84 = mul nsw i32 %82, %83
  %85 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* @SZ_RESOLUTION, align 4
  %87 = sdiv i32 %86, 2
  %88 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %87
  store i32 %90, i32* %88, align 4
  %91 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %95 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @US_TO_NS(i32 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = load i8*, i8** @IR_MAX_DURATION, align 8
  %108 = icmp ugt i8* %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %79
  %110 = load i8*, i8** @IR_MAX_DURATION, align 8
  br label %116

111:                                              ; preds = %79
  %112 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  br label %116

116:                                              ; preds = %111, %109
  %117 = phi i8* [ %110, %109 ], [ %115, %111 ]
  %118 = ptrtoint i8* %117 to i32
  %119 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  store i32 %118, i32* %119, align 4
  %120 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %121 = bitcast %struct.ir_raw_event* %5 to i64*
  %122 = load i64, i64* %121, align 4
  %123 = call i32 @sz_push(%struct.streamzap_ir* %120, i64 %122)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ktime_get_real(...) #2

declare dso_local i32 @ktime_us_delta(i32, i32) #2

declare dso_local i8* @US_TO_NS(i32) #2

declare dso_local i32 @sz_push(%struct.streamzap_ir*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
