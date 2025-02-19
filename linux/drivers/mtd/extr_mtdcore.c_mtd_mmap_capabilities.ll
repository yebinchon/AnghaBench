; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_mmap_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_mmap_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@NOMMU_MAP_COPY = common dso_local global i32 0, align 4
@NOMMU_MAP_DIRECT = common dso_local global i32 0, align 4
@NOMMU_MAP_EXEC = common dso_local global i32 0, align 4
@NOMMU_MAP_READ = common dso_local global i32 0, align 4
@NOMMU_MAP_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_mmap_capabilities(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %4 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %5 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %25 [
    i32 129, label %7
    i32 128, label %17
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @NOMMU_MAP_COPY, align 4
  %9 = load i32, i32* @NOMMU_MAP_DIRECT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @NOMMU_MAP_EXEC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @NOMMU_MAP_READ, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @NOMMU_MAP_WRITE, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %2, align 4
  br label %27

17:                                               ; preds = %1
  %18 = load i32, i32* @NOMMU_MAP_COPY, align 4
  %19 = load i32, i32* @NOMMU_MAP_DIRECT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @NOMMU_MAP_EXEC, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @NOMMU_MAP_READ, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @NOMMU_MAP_COPY, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %17, %7
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
