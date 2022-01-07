; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_video = type { i32, %struct.TYPE_3__, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_video*)* @aspeed_video_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_video_start(%struct.aspeed_video* %0) #0 {
  %2 = alloca %struct.aspeed_video*, align 8
  store %struct.aspeed_video* %0, %struct.aspeed_video** %2, align 8
  %3 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %4 = call i32 @aspeed_video_on(%struct.aspeed_video* %3)
  %5 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %6 = call i32 @aspeed_video_init_regs(%struct.aspeed_video* %5)
  %7 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %8 = call i32 @aspeed_video_get_resolution(%struct.aspeed_video* %7)
  %9 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %10 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %9, i32 0, i32 2
  %11 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %12 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %11, i32 0, i32 3
  %13 = bitcast %struct.TYPE_4__* %10 to i8*
  %14 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 8, i1 false)
  %15 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %16 = call i32 @aspeed_video_set_resolution(%struct.aspeed_video* %15)
  %17 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %18 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %22 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %25 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %29 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %32 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %35 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  ret void
}

declare dso_local i32 @aspeed_video_on(%struct.aspeed_video*) #1

declare dso_local i32 @aspeed_video_init_regs(%struct.aspeed_video*) #1

declare dso_local i32 @aspeed_video_get_resolution(%struct.aspeed_video*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @aspeed_video_set_resolution(%struct.aspeed_video*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
