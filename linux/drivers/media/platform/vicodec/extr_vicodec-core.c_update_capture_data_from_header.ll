; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_update_capture_data_from_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_update_capture_data_from_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vicodec_ctx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, %struct.fwht_cframe_hdr }
%struct.fwht_cframe_hdr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.vicodec_q_data = type { i32, i32, i32, %struct.v4l2_fwht_pixfmt_info*, i8*, i8* }
%struct.v4l2_fwht_pixfmt_info = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@FWHT_FL_CHROMA_FULL_WIDTH = common dso_local global i32 0, align 4
@FWHT_FL_CHROMA_FULL_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vicodec_ctx*)* @update_capture_data_from_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_capture_data_from_header(%struct.vicodec_ctx* %0) #0 {
  %2 = alloca %struct.vicodec_ctx*, align 8
  %3 = alloca %struct.vicodec_q_data*, align 8
  %4 = alloca %struct.fwht_cframe_hdr*, align 8
  %5 = alloca %struct.v4l2_fwht_pixfmt_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vicodec_ctx* %0, %struct.vicodec_ctx** %2, align 8
  %9 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %10 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %11 = call %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx* %9, i32 %10)
  store %struct.vicodec_q_data* %11, %struct.vicodec_q_data** %3, align 8
  %12 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  store %struct.fwht_cframe_hdr* %14, %struct.fwht_cframe_hdr** %4, align 8
  %15 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %4, align 8
  %16 = call %struct.v4l2_fwht_pixfmt_info* @info_from_header(%struct.fwht_cframe_hdr* %15)
  store %struct.v4l2_fwht_pixfmt_info* %16, %struct.v4l2_fwht_pixfmt_info** %5, align 8
  %17 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %4, align 8
  %18 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @ntohl(i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @FWHT_FL_CHROMA_FULL_WIDTH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 2
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @FWHT_FL_CHROMA_FULL_HEIGHT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 2
  store i32 %33, i32* %8, align 4
  %34 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %5, align 8
  %39 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %40 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %39, i32 0, i32 3
  store %struct.v4l2_fwht_pixfmt_info* %38, %struct.v4l2_fwht_pixfmt_info** %40, align 8
  %41 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %4, align 8
  %42 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @ntohl(i32 %43)
  %45 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %46 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %4, align 8
  %48 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @ntohl(i32 %49)
  %51 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %52 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %54 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %53, i32 0, i32 5
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i8* @vic_round_dim(i8* %55, i32 %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %60 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %62 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i8* @vic_round_dim(i8* %63, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %68 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %70 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %73 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %71, %74
  %76 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %77 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %76, i32 0, i32 3
  %78 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %77, align 8
  %79 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %75, %80
  %82 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %83 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %82, i32 0, i32 3
  %84 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %83, align 8
  %85 = getelementptr inbounds %struct.v4l2_fwht_pixfmt_info, %struct.v4l2_fwht_pixfmt_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %81, %86
  %88 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %3, align 8
  %89 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %4, align 8
  %91 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @ntohl(i32 %92)
  %94 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %95 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store i8* %93, i8** %96, align 8
  %97 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %4, align 8
  %98 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @ntohl(i32 %99)
  %101 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %102 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  store i8* %100, i8** %103, align 8
  %104 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %4, align 8
  %105 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @ntohl(i32 %106)
  %108 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %109 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  store i8* %107, i8** %110, align 8
  %111 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %4, align 8
  %112 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @ntohl(i32 %113)
  %115 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %2, align 8
  %116 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i8* %114, i8** %117, align 8
  ret void
}

declare dso_local %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx*, i32) #1

declare dso_local %struct.v4l2_fwht_pixfmt_info* @info_from_header(%struct.fwht_cframe_hdr*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @vic_round_dim(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
