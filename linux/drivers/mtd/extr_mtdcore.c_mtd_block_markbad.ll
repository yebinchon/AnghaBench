; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_block_markbad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_block_markbad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { {}*, i64, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_block_markbad(%struct.mtd_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i32 (%struct.mtd_info*, i64)**
  %9 = load i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)** %8, align 8
  %10 = icmp ne i32 (%struct.mtd_info*, i64)* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %44

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %20 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %14
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %17
  %27 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MTD_WRITEABLE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @EROFS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %26
  %37 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.mtd_info*, i64)**
  %40 = load i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)** %39, align 8
  %41 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 %40(%struct.mtd_info* %41, i64 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %36, %33, %23, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
