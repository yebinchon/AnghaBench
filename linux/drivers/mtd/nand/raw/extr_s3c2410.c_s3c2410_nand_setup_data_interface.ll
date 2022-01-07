; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c2410_nand_setup_data_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c2410_nand_setup_data_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_data_interface = type { i32 }
%struct.mtd_info = type { i32 }
%struct.s3c2410_nand_info = type { %struct.s3c2410_platform_nand* }
%struct.s3c2410_platform_nand = type { i8*, i8*, i8* }
%struct.nand_sdr_timings = type { i32, i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, %struct.nand_data_interface*)* @s3c2410_nand_setup_data_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_nand_setup_data_interface(%struct.nand_chip* %0, i32 %1, %struct.nand_data_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_data_interface*, align 8
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca %struct.s3c2410_nand_info*, align 8
  %10 = alloca %struct.s3c2410_platform_nand*, align 8
  %11 = alloca %struct.nand_sdr_timings*, align 8
  %12 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nand_data_interface* %2, %struct.nand_data_interface** %7, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %8, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %16 = call %struct.s3c2410_nand_info* @s3c2410_nand_mtd_toinfo(%struct.mtd_info* %15)
  store %struct.s3c2410_nand_info* %16, %struct.s3c2410_nand_info** %9, align 8
  %17 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %9, align 8
  %18 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %17, i32 0, i32 0
  %19 = load %struct.s3c2410_platform_nand*, %struct.s3c2410_platform_nand** %18, align 8
  store %struct.s3c2410_platform_nand* %19, %struct.s3c2410_platform_nand** %10, align 8
  %20 = load %struct.nand_data_interface*, %struct.nand_data_interface** %7, align 8
  %21 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface* %20)
  store %struct.nand_sdr_timings* %21, %struct.nand_sdr_timings** %11, align 8
  %22 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %11, align 8
  %23 = call i64 @IS_ERR(%struct.nand_sdr_timings* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %58

28:                                               ; preds = %3
  %29 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %11, align 8
  %30 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %11, align 8
  %33 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i32, i32* %12, align 4
  %41 = call i8* @DIV_ROUND_UP(i32 %40, i32 1000)
  %42 = load %struct.s3c2410_platform_nand*, %struct.s3c2410_platform_nand** %10, align 8
  %43 = getelementptr inbounds %struct.s3c2410_platform_nand, %struct.s3c2410_platform_nand* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %11, align 8
  %45 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @DIV_ROUND_UP(i32 %46, i32 1000)
  %48 = load %struct.s3c2410_platform_nand*, %struct.s3c2410_platform_nand** %10, align 8
  %49 = getelementptr inbounds %struct.s3c2410_platform_nand, %struct.s3c2410_platform_nand* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %11, align 8
  %51 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @DIV_ROUND_UP(i32 %52, i32 1000)
  %54 = load %struct.s3c2410_platform_nand*, %struct.s3c2410_platform_nand** %10, align 8
  %55 = getelementptr inbounds %struct.s3c2410_platform_nand, %struct.s3c2410_platform_nand* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %9, align 8
  %57 = call i32 @s3c2410_nand_setrate(%struct.s3c2410_nand_info* %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %39, %25
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.s3c2410_nand_info* @s3c2410_nand_mtd_toinfo(%struct.mtd_info*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_data_interface*) #1

declare dso_local i64 @IS_ERR(%struct.nand_sdr_timings*) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @s3c2410_nand_setrate(%struct.s3c2410_nand_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
