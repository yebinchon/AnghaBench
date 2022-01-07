; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_write_vid_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_write_vid_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32 }
%struct.ubi_vid_io_buf = type { i8* }
%struct.ubi_vid_hdr = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [27 x i8] c"write VID header to PEB %d\00", align 1
@UBI_VID_HDR_MAGIC = common dso_local global i32 0, align 4
@UBI_VERSION = common dso_local global i32 0, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_VID_HDR_SIZE_CRC = common dso_local global i32 0, align 4
@POWER_CUT_VID_WRITE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_io_write_vid_hdr(%struct.ubi_device* %0, i32 %1, %struct.ubi_vid_io_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_vid_io_buf*, align 8
  %8 = alloca %struct.ubi_vid_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ubi_vid_io_buf* %2, %struct.ubi_vid_io_buf** %7, align 8
  %12 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %7, align 8
  %13 = call %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf* %12)
  store %struct.ubi_vid_hdr* %13, %struct.ubi_vid_hdr** %8, align 8
  %14 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %7, align 8
  %15 = getelementptr inbounds %struct.ubi_vid_io_buf, %struct.ubi_vid_io_buf* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dbg_io(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br label %27

27:                                               ; preds = %21, %3
  %28 = phi i1 [ false, %3 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @ubi_assert(i32 %29)
  %31 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @self_check_peb_ec_hdr(%struct.ubi_device* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %82

38:                                               ; preds = %27
  %39 = load i32, i32* @UBI_VID_HDR_MAGIC, align 4
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %42 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @UBI_VERSION, align 4
  %44 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %45 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @UBI_CRC32_INIT, align 4
  %47 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %48 = load i32, i32* @UBI_VID_HDR_SIZE_CRC, align 4
  %49 = call i32 @crc32(i32 %46, %struct.ubi_vid_hdr* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i8* @cpu_to_be32(i32 %50)
  %52 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %53 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %57 = call i32 @self_check_vid_hdr(%struct.ubi_device* %54, i32 %55, %struct.ubi_vid_hdr* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %38
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %82

62:                                               ; preds = %38
  %63 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %64 = load i32, i32* @POWER_CUT_VID_WRITE, align 4
  %65 = call i64 @ubi_dbg_power_cut(%struct.ubi_device* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @EROFS, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %82

70:                                               ; preds = %62
  %71 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %75 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %78 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ubi_io_write(%struct.ubi_device* %71, i8* %72, i32 %73, i32 %76, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %70, %67, %60, %36
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf*) #1

declare dso_local i32 @dbg_io(i8*, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @self_check_peb_ec_hdr(%struct.ubi_device*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @crc32(i32, %struct.ubi_vid_hdr*, i32) #1

declare dso_local i32 @self_check_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_hdr*) #1

declare dso_local i64 @ubi_dbg_power_cut(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_io_write(%struct.ubi_device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
