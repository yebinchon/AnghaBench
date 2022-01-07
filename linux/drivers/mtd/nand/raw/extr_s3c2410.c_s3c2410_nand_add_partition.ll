; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c2410_nand_add_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_s3c2410.c_s3c2410_nand_add_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_nand_info = type { i32 }
%struct.s3c2410_nand_mtd = type { i32 }
%struct.s3c2410_nand_set = type { i32, i32, i32 }
%struct.mtd_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c2410_nand_info*, %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_set*)* @s3c2410_nand_add_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_nand_add_partition(%struct.s3c2410_nand_info* %0, %struct.s3c2410_nand_mtd* %1, %struct.s3c2410_nand_set* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c2410_nand_info*, align 8
  %6 = alloca %struct.s3c2410_nand_mtd*, align 8
  %7 = alloca %struct.s3c2410_nand_set*, align 8
  %8 = alloca %struct.mtd_info*, align 8
  store %struct.s3c2410_nand_info* %0, %struct.s3c2410_nand_info** %5, align 8
  store %struct.s3c2410_nand_mtd* %1, %struct.s3c2410_nand_mtd** %6, align 8
  store %struct.s3c2410_nand_set* %2, %struct.s3c2410_nand_set** %7, align 8
  %9 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %7, align 8
  %10 = icmp ne %struct.s3c2410_nand_set* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %6, align 8
  %13 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %12, i32 0, i32 0
  %14 = call %struct.mtd_info* @nand_to_mtd(i32* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %8, align 8
  %15 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %7, align 8
  %16 = getelementptr inbounds %struct.s3c2410_nand_set, %struct.s3c2410_nand_set* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %21 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %7, align 8
  %22 = getelementptr inbounds %struct.s3c2410_nand_set, %struct.s3c2410_nand_set* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.s3c2410_nand_set*, %struct.s3c2410_nand_set** %7, align 8
  %25 = getelementptr inbounds %struct.s3c2410_nand_set, %struct.s3c2410_nand_set* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mtd_device_register(%struct.mtd_info* %20, i32 %23, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %11
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.mtd_info* @nand_to_mtd(i32*) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
