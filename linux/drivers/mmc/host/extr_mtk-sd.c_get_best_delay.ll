; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_get_best_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_get_best_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_delay_phase = type { i32, i32, i8*, i32 }
%struct.msdc_host = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"phase error: [map:%x]\0A\00", align 1
@PAD_DELAY_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"phase: [map:%x] [maxlen:%d] [final:%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdc_delay_phase*, %struct.msdc_host*, i64)* @get_best_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_best_delay(%struct.msdc_delay_phase* noalias sret %0, %struct.msdc_host* %1, i64 %2) #0 {
  %4 = alloca %struct.msdc_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.msdc_host* %1, %struct.msdc_host** %4, align 8
  store i64 %2, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* inttoptr (i64 255 to i8*), i8** %10, align 8
  %11 = bitcast %struct.msdc_delay_phase* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %16 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %0, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  br label %89

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %53, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PAD_DELAY_MAX, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @get_delay_len(i64 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  br label %43

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 1, %42 ]
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sge i32 %47, 12
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %54

53:                                               ; preds = %49, %43
  br label %23

54:                                               ; preds = %52, %23
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sdiv i32 %59, 3
  %61 = add nsw i32 %58, %60
  %62 = load i32, i32* @PAD_DELAY_MAX, align 4
  %63 = srem i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %10, align 8
  br label %75

66:                                               ; preds = %54
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sdiv i32 %68, 2
  %70 = add nsw i32 %67, %69
  %71 = load i32, i32* @PAD_DELAY_MAX, align 4
  %72 = srem i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %10, align 8
  br label %75

75:                                               ; preds = %66, %57
  %76 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %77 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @dev_info(i32 %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %79, i32 %80, i8* %81)
  %83 = load i32, i32* %9, align 4
  %84 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %0, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %0, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %0, i32 0, i32 2
  store i8* %87, i8** %88, align 8
  br label %89

89:                                               ; preds = %75, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #2

declare dso_local i32 @get_delay_len(i64, i32) #2

declare dso_local i32 @dev_info(i32, i8*, i64, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
