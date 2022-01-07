; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-cap.c_vivid_raw_vbi_cap_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-cap.c_vivid_raw_vbi_cap_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32, i64, i64, i32, i32* }
%struct.vivid_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.v4l2_vbi_format = type { i32 }

@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vivid_raw_vbi_cap_process(%struct.vivid_dev* %0, %struct.vivid_buffer* %1) #0 {
  %3 = alloca %struct.vivid_dev*, align 8
  %4 = alloca %struct.vivid_buffer*, align 8
  %5 = alloca %struct.v4l2_vbi_format, align 4
  %6 = alloca i32*, align 8
  store %struct.vivid_dev* %0, %struct.vivid_dev** %3, align 8
  store %struct.vivid_buffer* %1, %struct.vivid_buffer** %4, align 8
  %7 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = call i32* @vb2_plane_vaddr(i32* %9, i32 0)
  store i32* %10, i32** %6, align 8
  %11 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %12 = call i32 @vivid_g_fmt_vbi_cap(%struct.vivid_dev* %11, %struct.v4l2_vbi_format* %5)
  %13 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %14 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %20 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %2
  %31 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %32 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @vivid_sliced_vbi_cap_fill(%struct.vivid_dev* %31, i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @vb2_plane_size(i32* %40, i32 0)
  %42 = call i32 @memset(i32* %37, i32 16, i32 %41)
  %43 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %44 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %47 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @VIVID_INVALID_SIGNAL(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %30
  %54 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %55 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %54, i32 0, i32 3
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @vivid_vbi_gen_raw(i32* %55, %struct.v4l2_vbi_format* %5, i32* %56)
  br label %58

58:                                               ; preds = %53, %30
  ret void
}

declare dso_local i32* @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @vivid_g_fmt_vbi_cap(%struct.vivid_dev*, %struct.v4l2_vbi_format*) #1

declare dso_local i32 @vivid_sliced_vbi_cap_fill(%struct.vivid_dev*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vb2_plane_size(i32*, i32) #1

declare dso_local i32 @VIVID_INVALID_SIGNAL(i32) #1

declare dso_local i32 @vivid_vbi_gen_raw(i32*, %struct.v4l2_vbi_format*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
