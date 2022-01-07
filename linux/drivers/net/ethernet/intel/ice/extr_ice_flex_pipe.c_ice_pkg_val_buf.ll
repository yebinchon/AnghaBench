; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_pkg_val_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_pkg_val_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_buf_hdr = type { i32, i32 }
%struct.ice_buf = type { i64 }

@ICE_MIN_S_COUNT = common dso_local global i64 0, align 8
@ICE_MAX_S_COUNT = common dso_local global i64 0, align 8
@ICE_MIN_S_DATA_END = common dso_local global i64 0, align 8
@ICE_MAX_S_DATA_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ice_buf_hdr* (%struct.ice_buf*)* @ice_pkg_val_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ice_buf_hdr* @ice_pkg_val_buf(%struct.ice_buf* %0) #0 {
  %2 = alloca %struct.ice_buf_hdr*, align 8
  %3 = alloca %struct.ice_buf*, align 8
  %4 = alloca %struct.ice_buf_hdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ice_buf* %0, %struct.ice_buf** %3, align 8
  %7 = load %struct.ice_buf*, %struct.ice_buf** %3, align 8
  %8 = getelementptr inbounds %struct.ice_buf, %struct.ice_buf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ice_buf_hdr*
  store %struct.ice_buf_hdr* %10, %struct.ice_buf_hdr** %4, align 8
  %11 = load %struct.ice_buf_hdr*, %struct.ice_buf_hdr** %4, align 8
  %12 = getelementptr inbounds %struct.ice_buf_hdr, %struct.ice_buf_hdr* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le16_to_cpu(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @ICE_MIN_S_COUNT, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @ICE_MAX_S_COUNT, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %1
  store %struct.ice_buf_hdr* null, %struct.ice_buf_hdr** %2, align 8
  br label %38

23:                                               ; preds = %18
  %24 = load %struct.ice_buf_hdr*, %struct.ice_buf_hdr** %4, align 8
  %25 = getelementptr inbounds %struct.ice_buf_hdr, %struct.ice_buf_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le16_to_cpu(i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @ICE_MIN_S_DATA_END, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @ICE_MAX_S_DATA_END, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %23
  store %struct.ice_buf_hdr* null, %struct.ice_buf_hdr** %2, align 8
  br label %38

36:                                               ; preds = %31
  %37 = load %struct.ice_buf_hdr*, %struct.ice_buf_hdr** %4, align 8
  store %struct.ice_buf_hdr* %37, %struct.ice_buf_hdr** %2, align 8
  br label %38

38:                                               ; preds = %36, %35, %22
  %39 = load %struct.ice_buf_hdr*, %struct.ice_buf_hdr** %2, align 8
  ret %struct.ice_buf_hdr* %39
}

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
