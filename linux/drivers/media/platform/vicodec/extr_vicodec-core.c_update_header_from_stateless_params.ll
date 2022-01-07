; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_update_header_from_stateless_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_update_header_from_stateless_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vicodec_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fwht_cframe_hdr }
%struct.fwht_cframe_hdr = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.v4l2_ctrl_fwht_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@FWHT_MAGIC1 = common dso_local global i32 0, align 4
@FWHT_MAGIC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vicodec_ctx*, %struct.v4l2_ctrl_fwht_params*)* @update_header_from_stateless_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_header_from_stateless_params(%struct.vicodec_ctx* %0, %struct.v4l2_ctrl_fwht_params* %1) #0 {
  %3 = alloca %struct.vicodec_ctx*, align 8
  %4 = alloca %struct.v4l2_ctrl_fwht_params*, align 8
  %5 = alloca %struct.fwht_cframe_hdr*, align 8
  store %struct.vicodec_ctx* %0, %struct.vicodec_ctx** %3, align 8
  store %struct.v4l2_ctrl_fwht_params* %1, %struct.v4l2_ctrl_fwht_params** %4, align 8
  %6 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.fwht_cframe_hdr* %8, %struct.fwht_cframe_hdr** %5, align 8
  %9 = load i32, i32* @FWHT_MAGIC1, align 4
  %10 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %5, align 8
  %11 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @FWHT_MAGIC2, align 4
  %13 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 8
  %15 = load %struct.v4l2_ctrl_fwht_params*, %struct.v4l2_ctrl_fwht_params** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, %struct.v4l2_ctrl_fwht_params* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @htonl(i32 %17)
  %19 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %5, align 8
  %20 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %19, i32 0, i32 7
  store i8* %18, i8** %20, align 8
  %21 = load %struct.v4l2_ctrl_fwht_params*, %struct.v4l2_ctrl_fwht_params** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, %struct.v4l2_ctrl_fwht_params* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @htonl(i32 %23)
  %25 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %5, align 8
  %26 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load %struct.v4l2_ctrl_fwht_params*, %struct.v4l2_ctrl_fwht_params** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, %struct.v4l2_ctrl_fwht_params* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @htonl(i32 %29)
  %31 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %5, align 8
  %32 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load %struct.v4l2_ctrl_fwht_params*, %struct.v4l2_ctrl_fwht_params** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, %struct.v4l2_ctrl_fwht_params* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @htonl(i32 %35)
  %37 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %5, align 8
  %38 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load %struct.v4l2_ctrl_fwht_params*, %struct.v4l2_ctrl_fwht_params** %4, align 8
  %40 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, %struct.v4l2_ctrl_fwht_params* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @htonl(i32 %41)
  %43 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %5, align 8
  %44 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.v4l2_ctrl_fwht_params*, %struct.v4l2_ctrl_fwht_params** %4, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, %struct.v4l2_ctrl_fwht_params* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @htonl(i32 %47)
  %49 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %5, align 8
  %50 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.v4l2_ctrl_fwht_params*, %struct.v4l2_ctrl_fwht_params** %4, align 8
  %52 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, %struct.v4l2_ctrl_fwht_params* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @htonl(i32 %53)
  %55 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %5, align 8
  %56 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.v4l2_ctrl_fwht_params*, %struct.v4l2_ctrl_fwht_params** %4, align 8
  %58 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, %struct.v4l2_ctrl_fwht_params* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @htonl(i32 %59)
  %61 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %5, align 8
  %62 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  ret void
}

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
