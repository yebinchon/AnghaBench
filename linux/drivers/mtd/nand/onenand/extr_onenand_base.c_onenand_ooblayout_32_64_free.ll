; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_ooblayout_32_64_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_ooblayout_32_64_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_oob_region = type { i32, i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @onenand_ooblayout_32_64_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_ooblayout_32_64_free(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %11, 32
  %13 = mul nsw i32 %12, 2
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ERANGE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %42

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  %27 = mul nsw i32 %26, 16
  %28 = add nsw i32 %27, 14
  %29 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %30 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %32 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %31, i32 0, i32 1
  store i32 2, i32* %32, align 4
  br label %41

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %34, 16
  %36 = add nsw i32 %35, 2
  %37 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %38 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %40 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %39, i32 0, i32 1
  store i32 3, i32* %40, align 4
  br label %41

41:                                               ; preds = %33, %24
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
