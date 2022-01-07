; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_new_fm_vbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_new_fm_vbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_vid_io_buf = type { i32 }
%struct.ubi_device = type { i32 }
%struct.ubi_vid_hdr = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@UBI_VID_DYNAMIC = common dso_local global i32 0, align 4
@UBI_COMPAT_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubi_vid_io_buf* (%struct.ubi_device*, i32)* @new_fm_vbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubi_vid_io_buf* @new_fm_vbuf(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_vid_io_buf*, align 8
  %6 = alloca %struct.ubi_vid_hdr*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device* %7, i32 %8)
  store %struct.ubi_vid_io_buf* %9, %struct.ubi_vid_io_buf** %5, align 8
  %10 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %5, align 8
  %11 = icmp ne %struct.ubi_vid_io_buf* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %5, align 8
  %15 = call %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf* %14)
  store %struct.ubi_vid_hdr* %15, %struct.ubi_vid_hdr** %6, align 8
  %16 = load i32, i32* @UBI_VID_DYNAMIC, align 4
  %17 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %6, align 8
  %18 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @cpu_to_be32(i32 %19)
  %21 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %6, align 8
  %22 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @UBI_COMPAT_DELETE, align 4
  %24 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %13, %12
  %27 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %5, align 8
  ret %struct.ubi_vid_io_buf* %27
}

declare dso_local %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device*, i32) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
