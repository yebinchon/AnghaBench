; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tea5767.c_tea5767_autodetection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tea5767.c_tea5767_autodetection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.tuner_i2c_props = type { i32, %struct.i2c_adapter* }

@__const.tea5767_autodetection.buffer = private unnamed_addr constant [7 x i8] c"\FF\FF\FF\FF\FF\FF\FF", align 1
@.str = private unnamed_addr constant [41 x i8] c"It is not a TEA5767. Received %i bytes.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"All bytes are equal. It is not a TEA5767\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Chip ID is not zero. It is not a TEA5767\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tea5767_autodetection(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tuner_i2c_props, align 8
  %7 = alloca [7 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %6, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %6, i32 0, i32 1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %11, align 8
  %13 = bitcast [7 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.tea5767_autodetection.buffer, i32 0, i32 0), i64 7, i1 false)
  %14 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 0
  %15 = call i32 @tuner_i2c_xfer_recv(%struct.tuner_i2c_props* %6, i8* %14, i32 7)
  store i32 %15, i32* %8, align 4
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %74

22:                                               ; preds = %2
  %23 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %22
  %31 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %30
  %39 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 4
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %74

58:                                               ; preds = %46, %38, %30, %22
  %59 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 3
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 15
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 4
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64, %58
  %70 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %69, %54, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tuner_i2c_xfer_recv(%struct.tuner_i2c_props*, i8*, i32) #2

declare dso_local i32 @pr_warn(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
