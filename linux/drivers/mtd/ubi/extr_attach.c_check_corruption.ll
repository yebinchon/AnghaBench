; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_check_corruption.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_check_corruption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32 }
%struct.ubi_vid_hdr = type { i32 }

@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"PEB %d contains corrupted VID header, and the data does not contain all 0xFF\00", align 1
@.str.1 = private unnamed_addr constant [93 x i8] c"this may be a non-UBI PEB or a severe VID header corruption which requires manual inspection\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"hexdump of PEB %d offset %d, length %d\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_vid_hdr*, i32)* @check_corruption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_corruption(%struct.ubi_device* %0, %struct.ubi_vid_hdr* %1, i32 %2) #0 {
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_vid_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_vid_hdr* %1, %struct.ubi_vid_hdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %9 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %12 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %15 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @memset(i32 %13, i32 0, i32 %16)
  %18 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %19 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %20 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %27 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ubi_io_read(%struct.ubi_device* %18, i32 %21, i32 %22, i32 %25, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @mtd_is_eccerr(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %3
  store i32 0, i32* %7, align 4
  br label %77

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %77

42:                                               ; preds = %38
  %43 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %44 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %47 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ubi_check_pattern(i32 %45, i32 255, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %77

52:                                               ; preds = %42
  %53 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %53, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %57 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %56, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %59 = call i32 @ubi_dump_vid_hdr(%struct.ubi_vid_hdr* %58)
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %62 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %65 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %63, i32 %66)
  %68 = load i32, i32* @KERN_DEBUG, align 4
  %69 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %70 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %71 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %74 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ubi_dbg_print_hex_dump(i32 %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 32, i32 1, i32 %72, i32 %75, i32 1)
  store i32 1, i32* %7, align 4
  br label %77

77:                                               ; preds = %52, %51, %41, %37
  %78 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %79 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ubi_io_read(%struct.ubi_device*, i32, i32, i32, i32) #1

declare dso_local i64 @mtd_is_eccerr(i32) #1

declare dso_local i64 @ubi_check_pattern(i32, i32, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, ...) #1

declare dso_local i32 @ubi_dump_vid_hdr(%struct.ubi_vid_hdr*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @ubi_dbg_print_hex_dump(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
