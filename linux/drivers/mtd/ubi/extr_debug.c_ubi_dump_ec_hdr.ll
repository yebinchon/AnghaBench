; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_dump_ec_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_dump_ec_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_ec_hdr = type { i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Erase counter header dump:\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\09magic          %#08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\09version        %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"\09ec             %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\09vid_hdr_offset %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\09data_offset    %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"\09image_seq      %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"\09hdr_crc        %#08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"erase counter header hexdump:\0A\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@UBI_EC_HDR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_dump_ec_hdr(%struct.ubi_ec_hdr* %0) #0 {
  %2 = alloca %struct.ubi_ec_hdr*, align 8
  store %struct.ubi_ec_hdr* %0, %struct.ubi_ec_hdr** %2, align 8
  %3 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %2, align 8
  %5 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @be32_to_cpu(i32 %6)
  %8 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %2, align 8
  %10 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %12)
  %14 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %2, align 8
  %15 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @be64_to_cpu(i32 %16)
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %17)
  %19 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %2, align 8
  %20 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be32_to_cpu(i32 %21)
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %22)
  %24 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %2, align 8
  %25 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @be32_to_cpu(i32 %26)
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %27)
  %29 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %2, align 8
  %30 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be32_to_cpu(i32 %31)
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %32)
  %34 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %2, align 8
  %35 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @be32_to_cpu(i32 %36)
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %37)
  %39 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %40 = load i32, i32* @KERN_DEBUG, align 4
  %41 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %42 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %2, align 8
  %43 = load i32, i32* @UBI_EC_HDR_SIZE, align 4
  %44 = call i32 @print_hex_dump(i32 %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i32 %41, i32 32, i32 1, %struct.ubi_ec_hdr* %42, i32 %43, i32 1)
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, %struct.ubi_ec_hdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
