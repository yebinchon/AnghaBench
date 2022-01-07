; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_toshiba.c_toshiba_nand_decode_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_toshiba.c_toshiba_nand_decode_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.mtd_info = type { i32 }
%struct.nand_memory_organization = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Could not get ECC info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @toshiba_nand_decode_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshiba_nand_decode_id(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nand_memory_organization*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %5 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %6 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %5)
  store %struct.mtd_info* %6, %struct.mtd_info** %3, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %8 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 0
  %9 = call %struct.nand_memory_organization* @nanddev_get_memorg(%struct.TYPE_6__* %8)
  store %struct.nand_memory_organization* %9, %struct.nand_memory_organization** %4, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %11 = call i32 @nand_decode_ext_id(%struct.nand_chip* %10)
  %12 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 6
  br i1 %16, label %17, label %52

17:                                               ; preds = %1
  %18 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %19 = call i64 @nand_is_slc(%struct.nand_chip* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 7
  %29 = icmp eq i32 %28, 6
  br i1 %29, label %30, label %52

30:                                               ; preds = %21
  %31 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 128
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %30
  %40 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %41 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 32, %42
  %44 = ashr i32 %43, 9
  %45 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %46 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %4, align 8
  %48 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %51 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %39, %30, %21, %17, %1
  %53 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %56, 6
  br i1 %57, label %58, label %96

58:                                               ; preds = %52
  %59 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %60 = call i64 @nand_is_slc(%struct.nand_chip* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  %63 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 512, i32* %66, align 8
  %67 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %68 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 7
  switch i32 %73, label %89 [
    i32 4, label %74
    i32 5, label %79
    i32 6, label %84
  ]

74:                                               ; preds = %62
  %75 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %76 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  br label %95

79:                                               ; preds = %62
  %80 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %81 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i32 4, i32* %83, align 4
  br label %95

84:                                               ; preds = %62
  %85 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %86 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 8, i32* %88, align 4
  br label %95

89:                                               ; preds = %62
  %90 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %92 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  br label %95

95:                                               ; preds = %89, %84, %79, %74
  br label %96

96:                                               ; preds = %95, %58, %52
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.nand_memory_organization* @nanddev_get_memorg(%struct.TYPE_6__*) #1

declare dso_local i32 @nand_decode_ext_id(%struct.nand_chip*) #1

declare dso_local i64 @nand_is_slc(%struct.nand_chip*) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
