; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_read_fact_prot_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_read_fact_prot_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { {}* }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_read_fact_prot_reg(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i64*, i64** %10, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.mtd_info*, i32, i64, i64*, i32*)**
  %16 = load i32 (%struct.mtd_info*, i32, i64, i64*, i32*)*, i32 (%struct.mtd_info*, i32, i64, i64*, i32*)** %15, align 8
  %17 = icmp ne i32 (%struct.mtd_info*, i32, i64, i64*, i32*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %36

21:                                               ; preds = %5
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %36

25:                                               ; preds = %21
  %26 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.mtd_info*, i32, i64, i64*, i32*)**
  %29 = load i32 (%struct.mtd_info*, i32, i64, i64*, i32*)*, i32 (%struct.mtd_info*, i32, i64, i64*, i32*)** %28, align 8
  %30 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i64, i64* %9, align 8
  %33 = load i64*, i64** %10, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 %29(%struct.mtd_info* %30, i32 %31, i64 %32, i64* %33, i32* %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %25, %24, %18
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
