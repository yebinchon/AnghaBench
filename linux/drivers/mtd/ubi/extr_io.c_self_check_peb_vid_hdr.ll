; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_self_check_peb_vid_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_self_check_peb_vid_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32 }
%struct.ubi_vid_io_buf = type { i8* }
%struct.ubi_vid_hdr = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_VID_HDR_SIZE_CRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"bad VID header CRC at PEB %d, calculated %#08x, read %#08x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"self-check failed for PEB %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32)* @self_check_peb_vid_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @self_check_peb_vid_hdr(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ubi_vid_io_buf*, align 8
  %10 = alloca %struct.ubi_vid_hdr*, align 8
  %11 = alloca i8*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %13 = call i32 @ubi_dbg_chk_io(%struct.ubi_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

16:                                               ; preds = %2
  %17 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %18 = load i32, i32* @GFP_NOFS, align 4
  %19 = call %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device* %17, i32 %18)
  store %struct.ubi_vid_io_buf* %19, %struct.ubi_vid_io_buf** %9, align 8
  %20 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %9, align 8
  %21 = icmp ne %struct.ubi_vid_io_buf* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %87

25:                                               ; preds = %16
  %26 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %9, align 8
  %27 = call %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf* %26)
  store %struct.ubi_vid_hdr* %27, %struct.ubi_vid_hdr** %10, align 8
  %28 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %9, align 8
  %29 = getelementptr inbounds %struct.ubi_vid_io_buf, %struct.ubi_vid_io_buf* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %11, align 8
  %31 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %35 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %38 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ubi_io_read(%struct.ubi_device* %31, i8* %32, i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %25
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @mtd_is_eccerr(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %83

52:                                               ; preds = %47, %43, %25
  %53 = load i32, i32* @UBI_CRC32_INIT, align 4
  %54 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %10, align 8
  %55 = load i32, i32* @UBI_VID_HDR_SIZE_CRC, align 4
  %56 = call i64 @crc32(i32 %53, %struct.ubi_vid_hdr* %54, i32 %55)
  store i64 %56, i64* %7, align 8
  %57 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %10, align 8
  %58 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @be32_to_cpu(i32 %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %52
  %65 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %65, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %66, i64 %67, i64 %68)
  %70 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %10, align 8
  %74 = call i32 @ubi_dump_vid_hdr(%struct.ubi_vid_hdr* %73)
  %75 = call i32 (...) @dump_stack()
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %83

78:                                               ; preds = %52
  %79 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %10, align 8
  %82 = call i32 @self_check_vid_hdr(%struct.ubi_device* %79, i32 %80, %struct.ubi_vid_hdr* %81)
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %78, %64, %51
  %84 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %9, align 8
  %85 = call i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf* %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %22, %15
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ubi_dbg_chk_io(%struct.ubi_device*) #1

declare dso_local %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device*, i32) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf*) #1

declare dso_local i32 @ubi_io_read(%struct.ubi_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @mtd_is_eccerr(i32) #1

declare dso_local i64 @crc32(i32, %struct.ubi_vid_hdr*, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, ...) #1

declare dso_local i32 @ubi_dump_vid_hdr(%struct.ubi_vid_hdr*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @self_check_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_hdr*) #1

declare dso_local i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
