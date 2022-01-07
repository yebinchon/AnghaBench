; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_parser_trx.c_parser_trx_data_part_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_parser_trx.c_parser_trx_data_part_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"mtd_read error while parsing (offset: 0x%zX): %d\0A\00", align 1
@UBI_EC_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"ubi\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rootfs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mtd_info*, i64)* @parser_trx_data_part_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parser_trx_data_part_name(%struct.mtd_info* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = bitcast i64* %6 to i32*
  %12 = call i32 @mtd_read(%struct.mtd_info* %9, i64 %10, i32 8, i64* %7, i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @mtd_is_bitflip(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %21)
  br label %29

23:                                               ; preds = %15, %2
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @UBI_EC_MAGIC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %30

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %19
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i8*, i8** %3, align 8
  ret i8* %31
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i64, i32, i64*, i32*) #1

declare dso_local i32 @mtd_is_bitflip(i32) #1

declare dso_local i32 @pr_err(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
