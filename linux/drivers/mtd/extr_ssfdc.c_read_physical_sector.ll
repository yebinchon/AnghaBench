; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_ssfdc.c_read_physical_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_ssfdc.c_read_physical_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32)* @read_physical_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_physical_sector(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SECTOR_SHIFT, align 4
  %13 = shl i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i64, i64* @SECTOR_SIZE, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @mtd_read(%struct.mtd_info* %14, i32 %15, i64 %16, i64* %9, i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @SECTOR_SIZE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %3
  store i32 -1, i32* %4, align 4
  br label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
