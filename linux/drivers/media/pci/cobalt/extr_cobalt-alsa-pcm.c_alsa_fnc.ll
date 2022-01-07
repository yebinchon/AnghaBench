; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-alsa-pcm.c_alsa_fnc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-alsa-pcm.c_alsa_fnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.cobalt_stream = type { i32 }

@pcm_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"alsa: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*, i8*)* @alsa_fnc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsa_fnc(%struct.vb2_buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cobalt_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.cobalt_stream*
  store %struct.cobalt_stream* %9, %struct.cobalt_stream** %5, align 8
  %10 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %11 = call i8* @vb2_plane_vaddr(%struct.vb2_buffer* %10, i32 0)
  store i8* %11, i8** %6, align 8
  %12 = load i64, i64* @pcm_debug, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %33, %14
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 32
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %16

36:                                               ; preds = %16
  %37 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %2
  %39 = load %struct.cobalt_stream*, %struct.cobalt_stream** %5, align 8
  %40 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %43 = call i8* @vb2_plane_vaddr(%struct.vb2_buffer* %42, i32 0)
  %44 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %45 = call i32 @vb2_get_plane_payload(%struct.vb2_buffer* %44, i32 0)
  %46 = sdiv i32 %45, 32
  %47 = call i32 @cobalt_alsa_announce_pcm_data(i32 %41, i8* %43, i32 32, i32 %46)
  ret i32 0
}

declare dso_local i8* @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @cobalt_alsa_announce_pcm_data(i32, i8*, i32, i32) #1

declare dso_local i32 @vb2_get_plane_payload(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
