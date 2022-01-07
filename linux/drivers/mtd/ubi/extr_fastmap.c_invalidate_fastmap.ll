; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_invalidate_fastmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_invalidate_fastmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { %struct.ubi_fastmap_layout* }
%struct.ubi_fastmap_layout = type { i32, %struct.ubi_wl_entry** }
%struct.ubi_wl_entry = type { i32 }
%struct.ubi_vid_io_buf = type { i32 }
%struct.ubi_vid_hdr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@UBI_FM_SB_VOLUME_ID = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*)* @invalidate_fastmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidate_fastmap(%struct.ubi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_fastmap_layout*, align 8
  %6 = alloca %struct.ubi_wl_entry*, align 8
  %7 = alloca %struct.ubi_vid_io_buf*, align 8
  %8 = alloca %struct.ubi_vid_hdr*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  store %struct.ubi_vid_io_buf* null, %struct.ubi_vid_io_buf** %7, align 8
  %9 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %10 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %9, i32 0, i32 0
  %11 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %10, align 8
  %12 = icmp ne %struct.ubi_fastmap_layout* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

14:                                               ; preds = %1
  %15 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %16 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %15, i32 0, i32 0
  store %struct.ubi_fastmap_layout* null, %struct.ubi_fastmap_layout** %16, align 8
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ubi_fastmap_layout* @kzalloc(i32 16, i32 %19)
  store %struct.ubi_fastmap_layout* %20, %struct.ubi_fastmap_layout** %5, align 8
  %21 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %5, align 8
  %22 = icmp ne %struct.ubi_fastmap_layout* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %70

24:                                               ; preds = %14
  %25 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %26 = load i32, i32* @UBI_FM_SB_VOLUME_ID, align 4
  %27 = call %struct.ubi_vid_io_buf* @new_fm_vbuf(%struct.ubi_device* %25, i32 %26)
  store %struct.ubi_vid_io_buf* %27, %struct.ubi_vid_io_buf** %7, align 8
  %28 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %7, align 8
  %29 = icmp ne %struct.ubi_vid_io_buf* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %74

31:                                               ; preds = %24
  %32 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %7, align 8
  %33 = call %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf* %32)
  store %struct.ubi_vid_hdr* %33, %struct.ubi_vid_hdr** %8, align 8
  %34 = load i32, i32* @ENOSPC, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  %36 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %37 = call %struct.ubi_wl_entry* @ubi_wl_get_fm_peb(%struct.ubi_device* %36, i32 1)
  store %struct.ubi_wl_entry* %37, %struct.ubi_wl_entry** %6, align 8
  %38 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %39 = icmp ne %struct.ubi_wl_entry* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  br label %74

41:                                               ; preds = %31
  %42 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %43 = call i32 @ubi_next_sqnum(%struct.ubi_device* %42)
  %44 = call i32 @cpu_to_be64(i32 %43)
  %45 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %46 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %48 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %49 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %7, align 8
  %52 = call i32 @ubi_io_write_vid_hdr(%struct.ubi_device* %47, i32 %50, %struct.ubi_vid_io_buf* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %57 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %58 = call i32 @ubi_wl_put_fm_peb(%struct.ubi_device* %56, %struct.ubi_wl_entry* %57, i32 0, i32 0)
  br label %74

59:                                               ; preds = %41
  %60 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %5, align 8
  %61 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %63 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %5, align 8
  %64 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %63, i32 0, i32 1
  %65 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %64, align 8
  %66 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %65, i64 0
  store %struct.ubi_wl_entry* %62, %struct.ubi_wl_entry** %66, align 8
  %67 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %5, align 8
  %68 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %69 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %68, i32 0, i32 0
  store %struct.ubi_fastmap_layout* %67, %struct.ubi_fastmap_layout** %69, align 8
  br label %70

70:                                               ; preds = %74, %59, %23
  %71 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %7, align 8
  %72 = call i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf* %71)
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %77

74:                                               ; preds = %55, %40, %30
  %75 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %5, align 8
  %76 = call i32 @kfree(%struct.ubi_fastmap_layout* %75)
  br label %70

77:                                               ; preds = %70, %13
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.ubi_fastmap_layout* @kzalloc(i32, i32) #1

declare dso_local %struct.ubi_vid_io_buf* @new_fm_vbuf(%struct.ubi_device*, i32) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf*) #1

declare dso_local %struct.ubi_wl_entry* @ubi_wl_get_fm_peb(%struct.ubi_device*, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ubi_next_sqnum(%struct.ubi_device*) #1

declare dso_local i32 @ubi_io_write_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_io_buf*) #1

declare dso_local i32 @ubi_wl_put_fm_peb(%struct.ubi_device*, %struct.ubi_wl_entry*, i32, i32) #1

declare dso_local i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf*) #1

declare dso_local i32 @kfree(%struct.ubi_fastmap_layout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
