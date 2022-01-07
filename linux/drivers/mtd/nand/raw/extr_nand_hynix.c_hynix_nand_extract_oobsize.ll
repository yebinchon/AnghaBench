; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_nand_extract_oobsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_nand_extract_oobsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.mtd_info = type { i32 }
%struct.nand_memory_organization = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Invalid OOB size\00", align 1
@SZ_8K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @hynix_nand_extract_oobsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hynix_nand_extract_oobsize(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_memory_organization*, align 8
  %7 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %8)
  store %struct.mtd_info* %9, %struct.mtd_info** %5, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 1
  %12 = call %struct.nand_memory_organization* @nanddev_get_memorg(i32* %11)
  store %struct.nand_memory_organization* %12, %struct.nand_memory_organization** %6, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 2
  %20 = and i32 %19, 3
  %21 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 4
  %28 = and i32 %27, 4
  %29 = or i32 %20, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %46 [
    i32 0, label %34
    i32 1, label %37
    i32 2, label %40
    i32 3, label %43
  ]

34:                                               ; preds = %32
  %35 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %36 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %35, i32 0, i32 0
  store i32 2048, i32* %36, align 4
  br label %48

37:                                               ; preds = %32
  %38 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %39 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %38, i32 0, i32 0
  store i32 1664, i32* %39, align 4
  br label %48

40:                                               ; preds = %32
  %41 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %42 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %41, i32 0, i32 0
  store i32 1024, i32* %42, align 4
  br label %48

43:                                               ; preds = %32
  %44 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %45 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %44, i32 0, i32 0
  store i32 640, i32* %45, align 4
  br label %48

46:                                               ; preds = %32
  %47 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43, %40, %37, %34
  br label %93

49:                                               ; preds = %2
  %50 = load i32, i32* %7, align 4
  switch i32 %50, label %72 [
    i32 0, label %51
    i32 1, label %54
    i32 2, label %57
    i32 3, label %60
    i32 4, label %63
    i32 5, label %66
    i32 6, label %69
  ]

51:                                               ; preds = %49
  %52 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %53 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %52, i32 0, i32 0
  store i32 128, i32* %53, align 4
  br label %74

54:                                               ; preds = %49
  %55 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %56 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %55, i32 0, i32 0
  store i32 224, i32* %56, align 4
  br label %74

57:                                               ; preds = %49
  %58 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %59 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %58, i32 0, i32 0
  store i32 448, i32* %59, align 4
  br label %74

60:                                               ; preds = %49
  %61 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %62 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %61, i32 0, i32 0
  store i32 64, i32* %62, align 4
  br label %74

63:                                               ; preds = %49
  %64 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %65 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %64, i32 0, i32 0
  store i32 32, i32* %65, align 4
  br label %74

66:                                               ; preds = %49
  %67 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %68 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %67, i32 0, i32 0
  store i32 16, i32* %68, align 4
  br label %74

69:                                               ; preds = %49
  %70 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %71 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %70, i32 0, i32 0
  store i32 640, i32* %71, align 4
  br label %74

72:                                               ; preds = %49
  %73 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69, %66, %63, %60, %57, %54, %51
  %75 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %76 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 222
  br i1 %81, label %82, label %92

82:                                               ; preds = %74
  %83 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %84 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SZ_8K, align 4
  %87 = sdiv i32 %85, %86
  %88 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %89 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %82, %74
  br label %93

93:                                               ; preds = %92, %48
  %94 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %95 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %98 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.nand_memory_organization* @nanddev_get_memorg(i32*) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
