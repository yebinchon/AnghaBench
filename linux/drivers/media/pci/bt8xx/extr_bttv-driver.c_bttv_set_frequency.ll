; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_set_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_set_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_frequency = type { i64, i32 }

@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@g_frequency = common dso_local global i32 0, align 4
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, %struct.v4l2_frequency*)* @bttv_set_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_set_frequency(%struct.bttv* %0, %struct.v4l2_frequency* %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca %struct.v4l2_frequency*, align 8
  %5 = alloca %struct.v4l2_frequency, align 8
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store %struct.v4l2_frequency* %1, %struct.v4l2_frequency** %4, align 8
  %6 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %4, align 8
  %7 = bitcast %struct.v4l2_frequency* %5 to i8*
  %8 = bitcast %struct.v4l2_frequency* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = load %struct.bttv*, %struct.bttv** %3, align 8
  %10 = load i32, i32* @tuner, align 4
  %11 = load i32, i32* @s_frequency, align 4
  %12 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %4, align 8
  %13 = call i32 @bttv_call_all(%struct.bttv* %9, i32 %10, i32 %11, %struct.v4l2_frequency* %12)
  %14 = load %struct.bttv*, %struct.bttv** %3, align 8
  %15 = load i32, i32* @tuner, align 4
  %16 = load i32, i32* @g_frequency, align 4
  %17 = call i32 @bttv_call_all(%struct.bttv* %14, i32 %15, i32 %16, %struct.v4l2_frequency* %5)
  %18 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %5, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %2
  %23 = load %struct.bttv*, %struct.bttv** %3, align 8
  %24 = call i32 @radio_enable(%struct.bttv* %23)
  %25 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %5, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.bttv*, %struct.bttv** %3, align 8
  %28 = getelementptr inbounds %struct.bttv, %struct.bttv* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.bttv*, %struct.bttv** %3, align 8
  %30 = getelementptr inbounds %struct.bttv, %struct.bttv* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %22
  %34 = load %struct.bttv*, %struct.bttv** %3, align 8
  %35 = getelementptr inbounds %struct.bttv, %struct.bttv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.bttv*, %struct.bttv** %3, align 8
  %38 = getelementptr inbounds %struct.bttv, %struct.bttv* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.bttv*, %struct.bttv** %3, align 8
  %41 = getelementptr inbounds %struct.bttv, %struct.bttv* %40, i32 0, i32 1
  %42 = call i32 @snd_tea575x_set_freq(%struct.TYPE_2__* %41)
  br label %43

43:                                               ; preds = %33, %22
  br label %49

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.bttv*, %struct.bttv** %3, align 8
  %48 = getelementptr inbounds %struct.bttv, %struct.bttv* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %44, %43
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bttv_call_all(%struct.bttv*, i32, i32, %struct.v4l2_frequency*) #2

declare dso_local i32 @radio_enable(%struct.bttv*) #2

declare dso_local i32 @snd_tea575x_set_freq(%struct.TYPE_2__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
