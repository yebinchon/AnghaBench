; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_decode_ext_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_decode_ext_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.nand_memory_organization = type { i32, i32, i32, i32 }
%struct.mtd_info = type { i32, i32, i32 }

@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nand_decode_ext_id(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.nand_memory_organization*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %8 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %7)
  store %struct.mtd_info* %8, %struct.mtd_info** %4, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 1
  %15 = call %struct.nand_memory_organization* @nanddev_get_memorg(i32* %14)
  store %struct.nand_memory_organization* %15, %struct.nand_memory_organization** %3, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @nand_get_bits_per_cell(i32 %18)
  %20 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %3, align 8
  %21 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 3
  %27 = shl i32 1024, %26
  %28 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %3, align 8
  %29 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %3, align 8
  %31 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 2
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 1
  %39 = shl i32 8, %38
  %40 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %41 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 9
  %44 = mul nsw i32 %39, %43
  %45 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %3, align 8
  %46 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %3, align 8
  %48 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %51 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 2
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 3
  %56 = shl i32 65536, %55
  %57 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %3, align 8
  %58 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %56, %59
  %61 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %3, align 8
  %62 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 3
  %65 = shl i32 65536, %64
  %66 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %67 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 %68, 2
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 1
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %1
  %74 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %75 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %76 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %1
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.nand_memory_organization* @nanddev_get_memorg(i32*) #1

declare dso_local i32 @nand_get_bits_per_cell(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
