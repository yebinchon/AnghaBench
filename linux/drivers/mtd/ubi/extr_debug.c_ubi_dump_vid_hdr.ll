; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_dump_vid_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_dump_vid_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_vid_hdr = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Volume identifier header dump:\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\09magic     %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"\09version   %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\09vol_type  %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"\09copy_flag %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\09compat    %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\09vol_id    %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"\09lnum      %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\09data_size %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"\09used_ebs  %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"\09data_pad  %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"\09sqnum     %llu\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"\09hdr_crc   %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Volume identifier header hexdump:\0A\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@UBI_VID_HDR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_dump_vid_hdr(%struct.ubi_vid_hdr* %0) #0 {
  %2 = alloca %struct.ubi_vid_hdr*, align 8
  store %struct.ubi_vid_hdr* %0, %struct.ubi_vid_hdr** %2, align 8
  %3 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %2, align 8
  %5 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %4, i32 0, i32 11
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @be32_to_cpu(i32 %6)
  %8 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %2, align 8
  %10 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %9, i32 0, i32 10
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %12)
  %14 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %2, align 8
  %15 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %14, i32 0, i32 9
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %2, align 8
  %20 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %22)
  %24 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %2, align 8
  %25 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %24, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %27)
  %29 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %2, align 8
  %30 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @be32_to_cpu(i32 %31)
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %32)
  %34 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %2, align 8
  %35 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be32_to_cpu(i32 %36)
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %37)
  %39 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %2, align 8
  %40 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @be32_to_cpu(i32 %41)
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %42)
  %44 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %2, align 8
  %45 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be32_to_cpu(i32 %46)
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %47)
  %49 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %2, align 8
  %50 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @be32_to_cpu(i32 %51)
  %53 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %52)
  %54 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %2, align 8
  %55 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @be64_to_cpu(i32 %56)
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i64 %57)
  %59 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %2, align 8
  %60 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @be32_to_cpu(i32 %61)
  %63 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %62)
  %64 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %65 = load i32, i32* @KERN_DEBUG, align 4
  %66 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %67 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %2, align 8
  %68 = load i32, i32* @UBI_VID_HDR_SIZE, align 4
  %69 = call i32 @print_hex_dump(i32 %65, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i32 %66, i32 32, i32 1, %struct.ubi_vid_hdr* %67, i32 %68, i32 1)
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, %struct.ubi_vid_hdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
