; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_write_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_write_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, {}*, i32 (%struct.mtd_info*, i32, i32, i64*, i32)* }
%struct.mtd_oob_ops = type { i32, i64, i32, i64, i64 }

@MTD_WRITEABLE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_write_oob(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %7, align 8
  %9 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %10 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %12 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MTD_WRITEABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EROFS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %81

22:                                               ; preds = %3
  %23 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %26 = call i32 @mtd_check_oob_ops(%struct.mtd_info* %23, i32 %24, %struct.mtd_oob_ops* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %81

31:                                               ; preds = %22
  %32 = call i32 (...) @ledtrig_mtd_activity()
  %33 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 1
  %35 = bitcast {}** %34 to i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)**
  %36 = load i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)** %35, align 8
  %37 = icmp ne i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)* %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %31
  %39 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %40 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %39, i32 0, i32 2
  %41 = load i32 (%struct.mtd_info*, i32, i32, i64*, i32)*, i32 (%struct.mtd_info*, i32, i32, i64*, i32)** %40, align 8
  %42 = icmp ne i32 (%struct.mtd_info*, i32, i32, i64*, i32)* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %45 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %38
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %81

51:                                               ; preds = %43, %31
  %52 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 1
  %54 = bitcast {}** %53 to i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)**
  %55 = load i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)** %54, align 8
  %56 = icmp ne i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %59 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 1
  %60 = bitcast {}** %59 to i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)**
  %61 = load i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)** %60, align 8
  %62 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %65 = call i32 %61(%struct.mtd_info* %62, i32 %63, %struct.mtd_oob_ops* %64)
  store i32 %65, i32* %4, align 4
  br label %81

66:                                               ; preds = %51
  %67 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 2
  %69 = load i32 (%struct.mtd_info*, i32, i32, i64*, i32)*, i32 (%struct.mtd_info*, i32, i32, i64*, i32)** %68, align 8
  %70 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %73 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %76 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %75, i32 0, i32 1
  %77 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %78 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 %69(%struct.mtd_info* %70, i32 %71, i32 %74, i64* %76, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %66, %57, %48, %29, %19
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @mtd_check_oob_ops(%struct.mtd_info*, i32, %struct.mtd_oob_ops*) #1

declare dso_local i32 @ledtrig_mtd_activity(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
