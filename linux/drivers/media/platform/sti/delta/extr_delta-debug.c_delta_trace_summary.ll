; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-debug.c_delta_trace_summary.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-debug.c_delta_trace_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, i32, i32, i32, i32, i32, i32, %struct.delta_streaminfo, %struct.delta_dev* }
%struct.delta_streaminfo = type { i32 }
%struct.delta_dev = type { i32 }

@DELTA_FLAG_STREAMINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"%s %s, %d frames decoded, %d frames output, %d frames dropped, %d stream errors, %d decode errors\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delta_trace_summary(%struct.delta_ctx* %0) #0 {
  %2 = alloca %struct.delta_ctx*, align 8
  %3 = alloca %struct.delta_dev*, align 8
  %4 = alloca %struct.delta_streaminfo*, align 8
  %5 = alloca [100 x i8], align 16
  store %struct.delta_ctx* %0, %struct.delta_ctx** %2, align 8
  %6 = load %struct.delta_ctx*, %struct.delta_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %6, i32 0, i32 8
  %8 = load %struct.delta_dev*, %struct.delta_dev** %7, align 8
  store %struct.delta_dev* %8, %struct.delta_dev** %3, align 8
  %9 = load %struct.delta_ctx*, %struct.delta_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %9, i32 0, i32 7
  store %struct.delta_streaminfo* %10, %struct.delta_streaminfo** %4, align 8
  %11 = bitcast [100 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 100, i1 false)
  %12 = load %struct.delta_ctx*, %struct.delta_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DELTA_FLAG_STREAMINFO, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %45

19:                                               ; preds = %1
  %20 = load %struct.delta_dev*, %struct.delta_dev** %3, align 8
  %21 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.delta_ctx*, %struct.delta_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.delta_streaminfo*, %struct.delta_streaminfo** %4, align 8
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %28 = call i32 @delta_streaminfo_str(%struct.delta_streaminfo* %26, i8* %27, i32 100)
  %29 = load %struct.delta_ctx*, %struct.delta_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.delta_ctx*, %struct.delta_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.delta_ctx*, %struct.delta_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.delta_ctx*, %struct.delta_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.delta_ctx*, %struct.delta_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %19, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @delta_streaminfo_str(%struct.delta_streaminfo*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
