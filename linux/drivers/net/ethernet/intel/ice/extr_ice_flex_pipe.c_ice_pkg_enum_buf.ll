; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_pkg_enum_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_pkg_enum_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_buf_hdr = type { i32 }
%struct.ice_seg = type { i32 }
%struct.ice_pkg_enum = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ice_buf_hdr* (%struct.ice_seg*, %struct.ice_pkg_enum*)* @ice_pkg_enum_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ice_buf_hdr* @ice_pkg_enum_buf(%struct.ice_seg* %0, %struct.ice_pkg_enum* %1) #0 {
  %3 = alloca %struct.ice_buf_hdr*, align 8
  %4 = alloca %struct.ice_seg*, align 8
  %5 = alloca %struct.ice_pkg_enum*, align 8
  store %struct.ice_seg* %0, %struct.ice_seg** %4, align 8
  store %struct.ice_pkg_enum* %1, %struct.ice_pkg_enum** %5, align 8
  %6 = load %struct.ice_seg*, %struct.ice_seg** %4, align 8
  %7 = icmp ne %struct.ice_seg* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load %struct.ice_seg*, %struct.ice_seg** %4, align 8
  %10 = call %struct.TYPE_2__* @ice_find_buf_table(%struct.ice_seg* %9)
  %11 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %5, align 8
  %12 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %11, i32 0, i32 1
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %12, align 8
  %13 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %5, align 8
  %14 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  store %struct.ice_buf_hdr* null, %struct.ice_buf_hdr** %3, align 8
  br label %51

18:                                               ; preds = %8
  %19 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %5, align 8
  %20 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %5, align 8
  %22 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.ice_buf_hdr* @ice_pkg_val_buf(i64 %25)
  store %struct.ice_buf_hdr* %26, %struct.ice_buf_hdr** %3, align 8
  br label %51

27:                                               ; preds = %2
  %28 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %5, align 8
  %29 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %5, align 8
  %33 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @le32_to_cpu(i32 %36)
  %38 = icmp slt i64 %31, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %27
  %40 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %5, align 8
  %41 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %5, align 8
  %46 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = call %struct.ice_buf_hdr* @ice_pkg_val_buf(i64 %48)
  store %struct.ice_buf_hdr* %49, %struct.ice_buf_hdr** %3, align 8
  br label %51

50:                                               ; preds = %27
  store %struct.ice_buf_hdr* null, %struct.ice_buf_hdr** %3, align 8
  br label %51

51:                                               ; preds = %50, %39, %18, %17
  %52 = load %struct.ice_buf_hdr*, %struct.ice_buf_hdr** %3, align 8
  ret %struct.ice_buf_hdr* %52
}

declare dso_local %struct.TYPE_2__* @ice_find_buf_table(%struct.ice_seg*) #1

declare dso_local %struct.ice_buf_hdr* @ice_pkg_val_buf(i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
