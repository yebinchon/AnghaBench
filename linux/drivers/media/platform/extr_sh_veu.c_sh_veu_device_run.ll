; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_veu_dev = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sh_veu_device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_veu_device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sh_veu_dev*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.sh_veu_dev*
  store %struct.sh_veu_dev* %7, %struct.sh_veu_dev** %3, align 8
  %8 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %9 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %10)
  store %struct.vb2_v4l2_buffer* %11, %struct.vb2_v4l2_buffer** %4, align 8
  %12 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %13 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %14)
  store %struct.vb2_v4l2_buffer* %15, %struct.vb2_v4l2_buffer** %5, align 8
  %16 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %17 = icmp ne %struct.vb2_v4l2_buffer* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %20 = icmp ne %struct.vb2_v4l2_buffer* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %23 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %23, i32 0, i32 0
  %25 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %26 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %25, i32 0, i32 0
  %27 = call i32 @sh_veu_process(%struct.sh_veu_dev* %22, i32* %24, i32* %26)
  br label %28

28:                                               ; preds = %21, %18, %1
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

declare dso_local i32 @sh_veu_process(%struct.sh_veu_dev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
