; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_ssfdc.c_ssfdcr_readsect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_ssfdc.c_ssfdcr_readsect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_blktrans_dev = type { i32 }
%struct.ssfdcr_record = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"SSFDC_RO: ssfdcr_readsect(%lu) sec_per_blk=%d, ofst=%d, block_addr=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"SSFDC_RO: ssfdcr_readsect() phys_block_addr=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"SSFDC_RO: ssfdcr_readsect() phys_sect_no=%lu\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_blktrans_dev*, i64, i8*)* @ssfdcr_readsect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssfdcr_readsect(%struct.mtd_blktrans_dev* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_blktrans_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ssfdcr_record*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %14 = bitcast %struct.mtd_blktrans_dev* %13 to %struct.ssfdcr_record*
  store %struct.ssfdcr_record* %14, %struct.ssfdcr_record** %8, align 8
  %15 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %8, align 8
  %16 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SECTOR_SHIFT, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = urem i64 %20, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %25, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %8, align 8
  %37 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %8, align 8
  %43 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 65535
  br i1 %53, label %54, label %77

54:                                               ; preds = %3
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %56, %58
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  %65 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %8, align 8
  %66 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i64 @read_physical_sector(i32 %68, i8* %69, i64 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %54
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %82

76:                                               ; preds = %54
  br label %81

77:                                               ; preds = %3
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* @SECTOR_SIZE, align 4
  %80 = call i32 @memset(i8* %78, i32 255, i32 %79)
  br label %81

81:                                               ; preds = %77, %76
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %73
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @read_physical_sector(i32, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
