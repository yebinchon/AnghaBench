; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_dump_au.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_dump_au.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, %struct.delta_dev* }
%struct.delta_dev = type { i32 }
%struct.delta_au = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"%s dump au[%d] dts=%lld size=%d data=%*ph\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%s dump au[%d] dts=%lld size=%d data=%*ph..%*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.delta_ctx*, %struct.delta_au*)* @dump_au to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_au(%struct.delta_ctx* %0, %struct.delta_au* %1) #0 {
  %3 = alloca %struct.delta_ctx*, align 8
  %4 = alloca %struct.delta_au*, align 8
  %5 = alloca %struct.delta_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %3, align 8
  store %struct.delta_au* %1, %struct.delta_au** %4, align 8
  %8 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %8, i32 0, i32 1
  %10 = load %struct.delta_dev*, %struct.delta_dev** %9, align 8
  store %struct.delta_dev* %10, %struct.delta_dev** %5, align 8
  store i32 10, i32* %6, align 4
  %11 = load %struct.delta_au*, %struct.delta_au** %4, align 8
  %12 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %7, align 8
  %15 = load %struct.delta_au*, %struct.delta_au** %4, align 8
  %16 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %18, 2
  %20 = icmp sle i32 %17, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %2
  %22 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %23 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.delta_au*, %struct.delta_au** %4, align 8
  %29 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.delta_au*, %struct.delta_au** %4, align 8
  %34 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.delta_au*, %struct.delta_au** %4, align 8
  %37 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.delta_au*, %struct.delta_au** %4, align 8
  %40 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 (i32, i8*, i32, i32, i32, i32, i32, i32*, ...) @dev_dbg(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %32, i32 %35, i32 %38, i32 %41, i32* %42)
  br label %76

44:                                               ; preds = %2
  %45 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %46 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.delta_au*, %struct.delta_au** %4, align 8
  %52 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.delta_au*, %struct.delta_au** %4, align 8
  %57 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.delta_au*, %struct.delta_au** %4, align 8
  %60 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.delta_au*, %struct.delta_au** %4, align 8
  %67 = getelementptr inbounds %struct.delta_au, %struct.delta_au* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 0, %72
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = call i32 (i32, i8*, i32, i32, i32, i32, i32, i32*, ...) @dev_dbg(i32 %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %55, i32 %58, i32 %61, i32 %62, i32* %63, i32 %64, i32* %74)
  br label %76

76:                                               ; preds = %44, %21
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
