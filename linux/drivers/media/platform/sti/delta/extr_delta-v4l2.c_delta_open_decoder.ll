; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_open_decoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_open_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, %struct.TYPE_2__, %struct.delta_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.delta_dev = type { i32, i32 }
%struct.delta_dec = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"%s no decoder found matching %4.4s => %4.4s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s one decoder matching %4.4s => %4.4s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"[%3d:%4.4s]\00", align 1
@open = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"%s failed to open decoder instance (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s %s decoder opened\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.delta_ctx*, i32, i32, %struct.delta_dec**)* @delta_open_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_open_decoder(%struct.delta_ctx* %0, i32 %1, i32 %2, %struct.delta_dec** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.delta_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.delta_dec**, align 8
  %10 = alloca %struct.delta_dev*, align 8
  %11 = alloca %struct.delta_dec*, align 8
  %12 = alloca i32, align 4
  store %struct.delta_ctx* %0, %struct.delta_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.delta_dec** %3, %struct.delta_dec*** %9, align 8
  %13 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %13, i32 0, i32 2
  %15 = load %struct.delta_dev*, %struct.delta_dev** %14, align 8
  store %struct.delta_dev* %15, %struct.delta_dev** %10, align 8
  %16 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.delta_dec* @delta_find_decoder(%struct.delta_ctx* %16, i32 %17, i32 %21)
  store %struct.delta_dec* %22, %struct.delta_dec** %11, align 8
  %23 = load %struct.delta_dec*, %struct.delta_dec** %11, align 8
  %24 = icmp ne %struct.delta_dec* %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %4
  %26 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %27 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = bitcast i32* %7 to i8*
  %33 = bitcast i32* %8 to i8*
  %34 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %32, i8* %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %87

37:                                               ; preds = %4
  %38 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %39 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = bitcast i32* %7 to i8*
  %45 = bitcast i32* %8 to i8*
  %46 = call i32 (i32, i8*, i32, i8*, ...) @dev_dbg(i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43, i8* %44, i8* %45)
  %47 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %51 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = bitcast i32* %7 to i8*
  %54 = call i32 @snprintf(i32 %49, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %52, i8* %53)
  %55 = load %struct.delta_dec*, %struct.delta_dec** %11, align 8
  %56 = load i32, i32* @open, align 4
  %57 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %58 = call i32 @call_dec_op(%struct.delta_dec* %55, i32 %56, %struct.delta_ctx* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %37
  %62 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %63 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %5, align 4
  br label %87

71:                                               ; preds = %37
  %72 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %73 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %76 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.delta_dec*, %struct.delta_dec** %11, align 8
  %79 = getelementptr inbounds %struct.delta_dec, %struct.delta_dec* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 (i32, i8*, i32, i8*, ...) @dev_dbg(i32 %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %77, i8* %82)
  %84 = load %struct.delta_dec*, %struct.delta_dec** %11, align 8
  %85 = load %struct.delta_dec**, %struct.delta_dec*** %9, align 8
  store %struct.delta_dec* %84, %struct.delta_dec** %85, align 8
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %71, %61, %25
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.delta_dec* @delta_find_decoder(%struct.delta_ctx*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @call_dec_op(%struct.delta_dec*, i32, %struct.delta_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
