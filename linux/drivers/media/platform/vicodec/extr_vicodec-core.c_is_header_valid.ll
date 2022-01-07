; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_is_header_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_is_header_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwht_cframe_hdr = type { i32, i32, i32, i32 }
%struct.v4l2_fwht_pixfmt_info = type { i32 }

@MIN_WIDTH = common dso_local global i32 0, align 4
@MAX_WIDTH = common dso_local global i32 0, align 4
@MIN_HEIGHT = common dso_local global i32 0, align 4
@MAX_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwht_cframe_hdr*)* @is_header_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_header_valid(%struct.fwht_cframe_hdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fwht_cframe_hdr*, align 8
  %4 = alloca %struct.v4l2_fwht_pixfmt_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fwht_cframe_hdr* %0, %struct.fwht_cframe_hdr** %3, align 8
  %9 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %3, align 8
  %10 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ntohl(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %3, align 8
  %14 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohl(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %3, align 8
  %18 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ntohl(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %3, align 8
  %22 = getelementptr inbounds %struct.fwht_cframe_hdr, %struct.fwht_cframe_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohl(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MIN_WIDTH, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MAX_WIDTH, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MIN_HEIGHT, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MAX_HEIGHT, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32, %28, %1
  store i32 0, i32* %2, align 4
  br label %54

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @validate_by_version(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %54

47:                                               ; preds = %41
  %48 = load %struct.fwht_cframe_hdr*, %struct.fwht_cframe_hdr** %3, align 8
  %49 = call %struct.v4l2_fwht_pixfmt_info* @info_from_header(%struct.fwht_cframe_hdr* %48)
  store %struct.v4l2_fwht_pixfmt_info* %49, %struct.v4l2_fwht_pixfmt_info** %4, align 8
  %50 = load %struct.v4l2_fwht_pixfmt_info*, %struct.v4l2_fwht_pixfmt_info** %4, align 8
  %51 = icmp ne %struct.v4l2_fwht_pixfmt_info* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %54

53:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %52, %46, %40
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @validate_by_version(i32, i32) #1

declare dso_local %struct.v4l2_fwht_pixfmt_info* @info_from_header(%struct.fwht_cframe_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
