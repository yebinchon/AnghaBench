; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_buf_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_buf_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.solo_enc_dev = type { i32, i32, i32, i32, i32 }
%struct.sg_table = type { i32, i32 }

@V4L2_BUF_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @solo_enc_buf_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_enc_buf_finish(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.solo_enc_dev*, align 8
  %5 = alloca %struct.sg_table*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %6 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %7 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %6)
  store %struct.vb2_v4l2_buffer* %7, %struct.vb2_v4l2_buffer** %3, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.solo_enc_dev* @vb2_get_drv_priv(i32 %10)
  store %struct.solo_enc_dev* %11, %struct.solo_enc_dev** %4, align 8
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %13 = call %struct.sg_table* @vb2_dma_sg_plane_desc(%struct.vb2_buffer* %12, i32 0)
  store %struct.sg_table* %13, %struct.sg_table** %5, align 8
  %14 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %4, align 8
  %15 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %39 [
    i32 128, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %1, %1
  %18 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %19 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @V4L2_BUF_FLAG_KEYFRAME, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %17
  %25 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %26 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %29 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %4, align 8
  %32 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %4, align 8
  %35 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sg_copy_from_buffer(i32 %27, i32 %30, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %24, %17
  br label %53

39:                                               ; preds = %1
  %40 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %41 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %44 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %4, align 8
  %47 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %4, align 8
  %50 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sg_copy_from_buffer(i32 %42, i32 %45, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %39, %38
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.solo_enc_dev* @vb2_get_drv_priv(i32) #1

declare dso_local %struct.sg_table* @vb2_dma_sg_plane_desc(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
