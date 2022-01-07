; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_point.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { {}*, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_point(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i8** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  %14 = load i64*, i64** %11, align 8
  store i64 0, i64* %14, align 8
  %15 = load i8**, i8*** %12, align 8
  store i8* null, i8** %15, align 8
  %16 = load i64*, i64** %13, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i64*, i64** %13, align 8
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %18, %6
  %21 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i64*)**
  %24 = load i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i64*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i64*)** %23, align 8
  %25 = icmp ne i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i64*)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %65

29:                                               ; preds = %20
  %30 = load i64, i64* %9, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %35 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %41 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub nsw i64 %42, %43
  %45 = icmp ugt i64 %39, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38, %32, %29
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %65

49:                                               ; preds = %38
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %65

53:                                               ; preds = %49
  %54 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %55 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %54, i32 0, i32 0
  %56 = bitcast {}** %55 to i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i64*)**
  %57 = load i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i64*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8**, i64*)** %56, align 8
  %58 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64*, i64** %11, align 8
  %62 = load i8**, i8*** %12, align 8
  %63 = load i64*, i64** %13, align 8
  %64 = call i32 %57(%struct.mtd_info* %58, i64 %59, i64 %60, i64* %61, i8** %62, i64* %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %53, %52, %46, %26
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
