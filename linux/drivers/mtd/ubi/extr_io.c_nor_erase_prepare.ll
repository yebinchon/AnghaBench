; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_nor_erase_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_nor_erase_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i64 }
%struct.ubi_ec_hdr = type { i32 }
%struct.ubi_vid_io_buf = type { i32 }
%struct.ubi_vid_hdr = type { i32 }

@UBI_IO_BAD_HDR_EBADMSG = common dso_local global i32 0, align 4
@UBI_IO_BAD_HDR = common dso_local global i32 0, align 4
@UBI_IO_FF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot invalidate PEB %d, write returned %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32)* @nor_erase_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nor_erase_prepare(%struct.ubi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ubi_ec_hdr, align 4
  %11 = alloca %struct.ubi_vid_io_buf, align 4
  %12 = alloca %struct.ubi_vid_hdr, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %15 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %13, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ubi_io_read_ec_hdr(%struct.ubi_device* %18, i32 %19, %struct.ubi_ec_hdr* %10, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @UBI_IO_BAD_HDR_EBADMSG, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @UBI_IO_BAD_HDR, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @UBI_IO_FF, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = bitcast i64* %9 to i8*
  %38 = call i32 @mtd_write(i32 %35, i32 %36, i32 4, i64* %7, i8* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %83

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %28, %24, %2
  %44 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %45 = call i32 @ubi_init_vid_buf(%struct.ubi_device* %44, %struct.ubi_vid_io_buf* %11, %struct.ubi_vid_hdr* %12)
  %46 = call %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf* %11)
  %47 = icmp eq %struct.ubi_vid_hdr* %12, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ubi_assert(i32 %48)
  %50 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ubi_io_read_vid_hdr(%struct.ubi_device* %50, i32 %51, %struct.ubi_vid_io_buf* %11, i32 0)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @UBI_IO_BAD_HDR_EBADMSG, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %43
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @UBI_IO_BAD_HDR, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @UBI_IO_FF, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %66 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %8, align 4
  %72 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %73 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = bitcast i64* %9 to i8*
  %77 = call i32 @mtd_write(i32 %74, i32 %75, i32 4, i64* %7, i8* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  br label %83

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81, %60, %56, %43
  store i32 0, i32* %3, align 4
  br label %96

83:                                               ; preds = %80, %41
  %84 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @ubi_err(%struct.ubi_device* %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %91 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @ubi_dump_flash(%struct.ubi_device* %88, i32 %89, i32 0, i32 %92)
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %83, %82
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @ubi_io_read_ec_hdr(%struct.ubi_device*, i32, %struct.ubi_ec_hdr*, i32) #1

declare dso_local i32 @mtd_write(i32, i32, i32, i64*, i8*) #1

declare dso_local i32 @ubi_init_vid_buf(%struct.ubi_device*, %struct.ubi_vid_io_buf*, %struct.ubi_vid_hdr*) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf*) #1

declare dso_local i32 @ubi_io_read_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_io_buf*, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, i32) #1

declare dso_local i32 @ubi_dump_flash(%struct.ubi_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
