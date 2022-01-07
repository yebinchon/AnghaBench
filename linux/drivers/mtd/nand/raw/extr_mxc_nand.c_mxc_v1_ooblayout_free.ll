; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_v1_ooblayout_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_v1_ooblayout_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@MXC_V1_ECCBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @mxc_v1_ooblayout_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_v1_ooblayout_free(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %10 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %9)
  store %struct.nand_chip* %10, %struct.nand_chip** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %11, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ERANGE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %76

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %20
  %24 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %26, 512
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %30 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %32 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %31, i32 0, i32 1
  store i32 5, i32* %32, align 4
  br label %38

33:                                               ; preds = %23
  %34 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %35 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %34, i32 0, i32 0
  store i32 2, i32* %35, align 4
  %36 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %37 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %36, i32 0, i32 1
  store i32 4, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %28
  br label %75

39:                                               ; preds = %20
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  %42 = mul nsw i32 %41, 16
  %43 = load i32, i32* @MXC_V1_ECCBYTES, align 4
  %44 = add nsw i32 %42, %43
  %45 = add nsw i32 %44, 6
  %46 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %47 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %50 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %39
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %55, 16
  %57 = add nsw i32 %56, 6
  %58 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %59 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  %62 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %63 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %74

64:                                               ; preds = %39
  %65 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %66 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %69 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %73 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %64, %54
  br label %75

75:                                               ; preds = %74, %38
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
