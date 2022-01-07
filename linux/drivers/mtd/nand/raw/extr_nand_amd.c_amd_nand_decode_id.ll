; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_amd.c_amd_nand_decode_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_amd.c_amd_nand_decode_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.mtd_info = type { i32 }
%struct.nand_memory_organization = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @amd_nand_decode_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_nand_decode_id(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nand_memory_organization*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %5 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %6 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %5)
  store %struct.mtd_info* %6, %struct.mtd_info** %3, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %8 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 1
  %9 = call %struct.nand_memory_organization* @nanddev_get_memorg(i32* %8)
  store %struct.nand_memory_organization* %9, %struct.nand_memory_organization** %4, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %11 = call i32 @nand_decode_ext_id(%struct.nand_chip* %10)
  %12 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %72

19:                                               ; preds = %1
  %20 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %19
  %28 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 6
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %72

35:                                               ; preds = %27
  %36 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 7
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %35
  %44 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %45 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 512
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %50 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %49, i32 0, i32 1
  store i32 256, i32* %50, align 4
  %51 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 3
  %58 = shl i32 %57, 1
  %59 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %60 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %64 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %67 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %71 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %48, %43, %35, %27, %19, %1
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.nand_memory_organization* @nanddev_get_memorg(i32*) #1

declare dso_local i32 @nand_decode_ext_id(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
