; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_write_user_prot_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_write_user_prot_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { {}* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_write_user_prot_reg(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i64*, i64** %10, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %15 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.mtd_info*, i32, i64, i64*, i32*)**
  %17 = load i32 (%struct.mtd_info*, i32, i64, i64*, i32*)*, i32 (%struct.mtd_info*, i32, i64, i64*, i32*)** %16, align 8
  %18 = icmp ne i32 (%struct.mtd_info*, i32, i64, i64*, i32*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %51

22:                                               ; preds = %5
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %51

26:                                               ; preds = %22
  %27 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.mtd_info*, i32, i64, i64*, i32*)**
  %30 = load i32 (%struct.mtd_info*, i32, i64, i64*, i32*)*, i32 (%struct.mtd_info*, i32, i64, i64*, i32*)** %29, align 8
  %31 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load i64*, i64** %10, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 %30(%struct.mtd_info* %31, i32 %32, i64 %33, i64* %34, i32* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %6, align 4
  br label %51

41:                                               ; preds = %26
  %42 = load i64*, i64** %10, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  br label %49

49:                                               ; preds = %46, %45
  %50 = phi i32 [ 0, %45 ], [ %48, %46 ]
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %39, %25, %19
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
