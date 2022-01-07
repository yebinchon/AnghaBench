; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_self_check_vid_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_self_check_vid_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_vid_hdr = type { i32 }

@UBI_VID_HDR_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"bad VID header magic %#08x at PEB %d, must be %#08x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"self-check failed for PEB %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, i32, %struct.ubi_vid_hdr*)* @self_check_vid_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @self_check_vid_hdr(%struct.ubi_device* %0, i32 %1, %struct.ubi_vid_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_vid_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ubi_vid_hdr* %2, %struct.ubi_vid_hdr** %7, align 8
  %10 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %11 = call i32 @ubi_dbg_chk_io(%struct.ubi_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

14:                                               ; preds = %3
  %15 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %7, align 8
  %16 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @be32_to_cpu(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @UBI_VID_HDR_MAGIC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %24 = load i64, i64* %9, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* @UBI_VID_HDR_MAGIC, align 8
  %28 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %23, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i64 %27)
  br label %41

29:                                               ; preds = %14
  %30 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %31 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %7, align 8
  %32 = call i32 @validate_vid_hdr(%struct.ubi_device* %30, %struct.ubi_vid_hdr* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %50

41:                                               ; preds = %35, %22
  %42 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %7, align 8
  %46 = call i32 @ubi_dump_vid_hdr(%struct.ubi_vid_hdr* %45)
  %47 = call i32 (...) @dump_stack()
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %41, %39, %13
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @ubi_dbg_chk_io(%struct.ubi_device*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, ...) #1

declare dso_local i32 @validate_vid_hdr(%struct.ubi_device*, %struct.ubi_vid_hdr*) #1

declare dso_local i32 @ubi_dump_vid_hdr(%struct.ubi_vid_hdr*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
