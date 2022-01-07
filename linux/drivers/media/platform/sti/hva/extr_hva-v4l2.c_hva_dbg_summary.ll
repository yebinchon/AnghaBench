; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_dbg_summary.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-v4l2.c_hva_dbg_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { i32, i32, i32, i32, i32, i32, %struct.hva_frameinfo, %struct.hva_streaminfo }
%struct.hva_frameinfo = type { i32, i32, i32 }
%struct.hva_streaminfo = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@HVA_FLAG_STREAMINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [110 x i8] c"%s %4.4s %dx%d > %4.4s %dx%d %s %s: %d frames encoded, %d system errors, %d encoding errors, %d frame errors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hva_ctx*)* @hva_dbg_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hva_dbg_summary(%struct.hva_ctx* %0) #0 {
  %2 = alloca %struct.hva_ctx*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hva_streaminfo*, align 8
  %5 = alloca %struct.hva_frameinfo*, align 8
  store %struct.hva_ctx* %0, %struct.hva_ctx** %2, align 8
  %6 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %7 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %6)
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %8, i32 0, i32 7
  store %struct.hva_streaminfo* %9, %struct.hva_streaminfo** %4, align 8
  %10 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %10, i32 0, i32 6
  store %struct.hva_frameinfo* %11, %struct.hva_frameinfo** %5, align 8
  %12 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HVA_FLAG_STREAMINFO, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %5, align 8
  %25 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %24, i32 0, i32 2
  %26 = bitcast i32* %25 to i8*
  %27 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %5, align 8
  %28 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hva_frameinfo*, %struct.hva_frameinfo** %5, align 8
  %31 = getelementptr inbounds %struct.hva_frameinfo, %struct.hva_frameinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hva_streaminfo*, %struct.hva_streaminfo** %4, align 8
  %34 = getelementptr inbounds %struct.hva_streaminfo, %struct.hva_streaminfo* %33, i32 0, i32 4
  %35 = bitcast i32* %34 to i8*
  %36 = load %struct.hva_streaminfo*, %struct.hva_streaminfo** %4, align 8
  %37 = getelementptr inbounds %struct.hva_streaminfo, %struct.hva_streaminfo* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hva_streaminfo*, %struct.hva_streaminfo** %4, align 8
  %40 = getelementptr inbounds %struct.hva_streaminfo, %struct.hva_streaminfo* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hva_streaminfo*, %struct.hva_streaminfo** %4, align 8
  %43 = getelementptr inbounds %struct.hva_streaminfo, %struct.hva_streaminfo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hva_streaminfo*, %struct.hva_streaminfo** %4, align 8
  %46 = getelementptr inbounds %struct.hva_streaminfo, %struct.hva_streaminfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %49 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hva_ctx*, %struct.hva_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %26, i32 %29, i32 %32, i8* %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
