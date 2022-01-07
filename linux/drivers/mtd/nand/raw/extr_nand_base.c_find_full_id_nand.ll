; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_find_full_id_nand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_find_full_id_nand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_7__, i32, %struct.TYPE_8__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.nand_flash_dev = type { i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.mtd_info = type { i32, i32, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.nand_flash_dev*)* @find_full_id_nand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_full_id_nand(%struct.nand_chip* %0, %struct.nand_flash_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.nand_flash_dev*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.nand_memory_organization*, align 8
  %8 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store %struct.nand_flash_dev* %1, %struct.nand_flash_dev** %5, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %9)
  store %struct.mtd_info* %10, %struct.mtd_info** %6, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 2
  %17 = call %struct.nand_memory_organization* @nanddev_get_memorg(%struct.TYPE_8__* %16)
  store %struct.nand_memory_organization* %17, %struct.nand_memory_organization** %7, align 8
  %18 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %19 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %23 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strncmp(i32 %20, i32* %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %122, label %27

27:                                               ; preds = %2
  %28 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %29 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %7, align 8
  %32 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %7, align 8
  %34 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %39 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %42 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 %40, %43
  %45 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %7, align 8
  %46 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %48 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %51 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %53 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %7, align 8
  %56 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %7, align 8
  %58 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %61 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @nand_get_bits_per_cell(i32 %64)
  %66 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %7, align 8
  %67 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %69 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = shl i32 %71, 20
  %73 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %7, align 8
  %74 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %7, align 8
  %77 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = call i32 @DIV_ROUND_DOWN_ULL(i32 %72, i32 %79)
  %81 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %7, align 8
  %82 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %84 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %87 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %91 = call i32 @NAND_ECC_STRENGTH(%struct.nand_flash_dev* %90)
  %92 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %93 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 4
  %96 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %97 = call i32 @NAND_ECC_STEP(%struct.nand_flash_dev* %96)
  %98 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %99 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 8
  %102 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %103 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %106 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %108 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i32 @kstrdup(i32 %109, i32 %110)
  %112 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %113 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %116 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %27
  store i32 0, i32* %3, align 4
  br label %123

121:                                              ; preds = %27
  store i32 1, i32* %3, align 4
  br label %123

122:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %121, %120
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.nand_memory_organization* @nanddev_get_memorg(%struct.TYPE_8__*) #1

declare dso_local i32 @strncmp(i32, i32*, i32) #1

declare dso_local i32 @nand_get_bits_per_cell(i32) #1

declare dso_local i32 @DIV_ROUND_DOWN_ULL(i32, i32) #1

declare dso_local i32 @NAND_ECC_STRENGTH(%struct.nand_flash_dev*) #1

declare dso_local i32 @NAND_ECC_STEP(%struct.nand_flash_dev*) #1

declare dso_local i32 @kstrdup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
