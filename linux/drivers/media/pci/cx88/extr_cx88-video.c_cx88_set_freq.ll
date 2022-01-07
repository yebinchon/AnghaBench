; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_cx88_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_cx88_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.v4l2_frequency = type { i64, i32 }

@UNSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@g_frequency = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_set_freq(%struct.cx88_core* %0, %struct.v4l2_frequency* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca %struct.v4l2_frequency*, align 8
  %6 = alloca %struct.v4l2_frequency, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %4, align 8
  store %struct.v4l2_frequency* %1, %struct.v4l2_frequency** %5, align 8
  %7 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %8 = bitcast %struct.v4l2_frequency* %6 to i8*
  %9 = bitcast %struct.v4l2_frequency* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %11 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @UNSET, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %52

33:                                               ; preds = %22
  %34 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %35 = call i32 @cx88_newstation(%struct.cx88_core* %34)
  %36 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %37 = load i32, i32* @tuner, align 4
  %38 = load i32, i32* @s_frequency, align 4
  %39 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %40 = call i32 @call_all(%struct.cx88_core* %36, i32 %37, i32 %38, %struct.v4l2_frequency* %39)
  %41 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %42 = load i32, i32* @tuner, align 4
  %43 = load i32, i32* @g_frequency, align 4
  %44 = call i32 @call_all(%struct.cx88_core* %41, i32 %42, i32 %43, %struct.v4l2_frequency* %6)
  %45 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %48 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = call i32 @usleep_range(i32 10000, i32 20000)
  %50 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %51 = call i32 @cx88_set_tvaudio(%struct.cx88_core* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %33, %30, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @cx88_newstation(%struct.cx88_core*) #2

declare dso_local i32 @call_all(%struct.cx88_core*, i32, i32, %struct.v4l2_frequency*) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i32 @cx88_set_tvaudio(%struct.cx88_core*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
