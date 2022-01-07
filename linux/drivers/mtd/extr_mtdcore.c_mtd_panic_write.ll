; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_panic_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_panic_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { {}*, i64, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_panic_write(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i64*, i64** %10, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.mtd_info*, i64, i64, i64*, i32*)**
  %16 = load i32 (%struct.mtd_info*, i64, i64, i64*, i32*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i32*)** %15, align 8
  %17 = icmp ne i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %74

21:                                               ; preds = %5
  %22 = load i64, i64* %8, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %33 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = sub nsw i64 %34, %35
  %37 = icmp ugt i64 %31, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30, %24, %21
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %74

41:                                               ; preds = %30
  %42 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %43 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MTD_WRITEABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @EROFS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %74

51:                                               ; preds = %41
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %74

55:                                               ; preds = %51
  %56 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %57 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %62 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %61, i32 0, i32 3
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %65 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %64, i32 0, i32 0
  %66 = bitcast {}** %65 to i32 (%struct.mtd_info*, i64, i64, i64*, i32*)**
  %67 = load i32 (%struct.mtd_info*, i64, i64, i64*, i32*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i32*)** %66, align 8
  %68 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64*, i64** %10, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 %67(%struct.mtd_info* %68, i64 %69, i64 %70, i64* %71, i32* %72)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %63, %54, %48, %38, %18
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
