; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_buffer_parse_headers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_buffer_parse_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*, %struct.vb2_v4l2_buffer*, i32)* @coda_buffer_parse_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_buffer_parse_headers(%struct.coda_ctx* %0, %struct.vb2_v4l2_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.coda_ctx*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %4, align 8
  store %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %10 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %9, i32 0, i32 0
  %11 = call i32* @vb2_plane_vaddr(i32* %10, i32 0)
  store i32* %11, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %27 [
    i32 129, label %17
    i32 128, label %22
  ]

17:                                               ; preds = %3
  %18 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @coda_mpeg2_parse_headers(%struct.coda_ctx* %18, i32* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  br label %28

22:                                               ; preds = %3
  %23 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @coda_mpeg4_parse_headers(%struct.coda_ctx* %23, i32* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %22, %17
  %29 = load i32, i32* %8, align 4
  ret i32 %29
}

declare dso_local i32* @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @coda_mpeg2_parse_headers(%struct.coda_ctx*, i32*, i32) #1

declare dso_local i32 @coda_mpeg4_parse_headers(%struct.coda_ctx*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
