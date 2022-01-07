; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_check_oob_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_check_oob_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_oob_ops = type { i64, i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)* @mtd_check_oob_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtd_check_oob_ops(%struct.mtd_info* %0, i64 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mtd_oob_ops*, align 8
  %8 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %7, align 8
  %9 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %10 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %15 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %18 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %23 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %30 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27, %24
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %84

40:                                               ; preds = %27
  %41 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %42 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %40
  %46 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %47 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %50 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %51 = call i64 @mtd_oobavail(%struct.mtd_info* %49, %struct.mtd_oob_ops* %50)
  %52 = icmp uge i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %84

56:                                               ; preds = %45
  %57 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %58 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %61 = call i64 @mtd_div_by_ws(i64 %59, %struct.mtd_info* %60)
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %64 = call i64 @mtd_div_by_ws(i64 %62, %struct.mtd_info* %63)
  %65 = sub nsw i64 %61, %64
  %66 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %67 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %68 = call i64 @mtd_oobavail(%struct.mtd_info* %66, %struct.mtd_oob_ops* %67)
  %69 = mul i64 %65, %68
  %70 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %71 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %69, %72
  store i64 %73, i64* %8, align 8
  %74 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %75 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %56
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %84

82:                                               ; preds = %56
  br label %83

83:                                               ; preds = %82, %40
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %79, %53, %37
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @mtd_oobavail(%struct.mtd_info*, %struct.mtd_oob_ops*) #1

declare dso_local i64 @mtd_div_by_ws(i64, %struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
