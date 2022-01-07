; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0001.c_cfi_intelext_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0001.c_cfi_intelext_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i64*, i32*)* @cfi_intelext_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_intelext_read(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.map_info*, align 8
  %12 = alloca %struct.cfi_private*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load %struct.map_info*, %struct.map_info** %18, align 8
  store %struct.map_info* %19, %struct.map_info** %11, align 8
  %20 = load %struct.map_info*, %struct.map_info** %11, align 8
  %21 = getelementptr inbounds %struct.map_info, %struct.map_info* %20, i32 0, i32 0
  %22 = load %struct.cfi_private*, %struct.cfi_private** %21, align 8
  store %struct.cfi_private* %22, %struct.cfi_private** %12, align 8
  store i32 0, i32* %15, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %25 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %23, %26
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %31 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %29, %32
  %34 = sub nsw i32 %28, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %82, %5
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %95

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %42 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %95

46:                                               ; preds = %39
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %13, align 8
  %49 = add i64 %47, %48
  %50 = sub i64 %49, 1
  %51 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %52 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = zext i32 %53 to i64
  %55 = lshr i64 %50, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %59 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 1, %60
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %13, align 8
  %64 = sub i64 %62, %63
  store i64 %64, i64* %16, align 8
  br label %67

65:                                               ; preds = %46
  %66 = load i64, i64* %8, align 8
  store i64 %66, i64* %16, align 8
  br label %67

67:                                               ; preds = %65, %57
  %68 = load %struct.map_info*, %struct.map_info** %11, align 8
  %69 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %70 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @do_read_onechip(%struct.map_info* %68, i32* %74, i64 %75, i64 %76, i32* %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %95

82:                                               ; preds = %67
  %83 = load i64, i64* %16, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %83
  store i64 %86, i64* %84, align 8
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %8, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %16, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 %90
  store i32* %92, i32** %10, align 8
  store i64 0, i64* %13, align 8
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  br label %36

95:                                               ; preds = %81, %45, %36
  %96 = load i32, i32* %15, align 4
  ret i32 %96
}

declare dso_local i32 @do_read_onechip(%struct.map_info*, i32*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
