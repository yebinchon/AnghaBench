; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_info_from_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_info_from_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fwht_pixfmt_info = type { i32 }
%struct.fwht_cframe_hdr = type { i32, i32 }

@FWHT_FL_CHROMA_FULL_WIDTH = common dso_local global i32 0, align 4
@FWHT_FL_CHROMA_FULL_HEIGHT = common dso_local global i32 0, align 4
@FWHT_FL_COMPONENTS_NUM_MSK = common dso_local global i32 0, align 4
@FWHT_FL_COMPONENTS_NUM_OFFSET = common dso_local global i32 0, align 4
@FWHT_FL_PIXENC_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_fwht_pixfmt_info* (%struct.fwht_cframe_hdr*)* @info_from_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_fwht_pixfmt_info* @info_from_header(%struct.fwht_cframe_hdr* %0) #0 {
  %2 = alloca %struct.fwht_cframe_hdr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fwht_cframe_hdr* %0, %struct.fwht_cframe_hdr** %2, align 8
  %9 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %2, align 8
  %10 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ntohl(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @FWHT_FL_CHROMA_FULL_WIDTH, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 2
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @FWHT_FL_CHROMA_FULL_HEIGHT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 2
  store i32 %24, i32* %5, align 4
  store i32 3, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %25 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %2, align 8
  %26 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ntohl(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp uge i32 %29, 2
  br i1 %30, label %31, label %41

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @FWHT_FL_COMPONENTS_NUM_MSK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @FWHT_FL_COMPONENTS_NUM_OFFSET, align 4
  %36 = lshr i32 %34, %35
  %37 = add i32 1, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @FWHT_FL_PIXENC_MSK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %31, %1
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.v4l2_fwht_pixfmt_info* @v4l2_fwht_find_nth_fmt(i32 %42, i32 %43, i32 %44, i32 %45, i32 0)
  ret %struct.v4l2_fwht_pixfmt_info* %46
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.v4l2_fwht_pixfmt_info* @v4l2_fwht_find_nth_fmt(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
