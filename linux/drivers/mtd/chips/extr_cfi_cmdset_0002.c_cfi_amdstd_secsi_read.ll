; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_cfi_amdstd_secsi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_cfi_amdstd_secsi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i64*, i32*)* @cfi_amdstd_secsi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_amdstd_secsi_read(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i32* %4) #0 {
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
  %24 = ashr i32 %23, 3
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 7
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %13, align 8
  br label %28

28:                                               ; preds = %65, %5
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %78

31:                                               ; preds = %28
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %34 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %78

38:                                               ; preds = %31
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %13, align 8
  %41 = add i64 %39, %40
  %42 = sub i64 %41, 1
  %43 = lshr i64 %42, 3
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i64, i64* %13, align 8
  %47 = sub i64 8, %46
  store i64 %47, i64* %16, align 8
  br label %50

48:                                               ; preds = %38
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %16, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = load %struct.map_info*, %struct.map_info** %11, align 8
  %52 = load %struct.cfi_private*, %struct.cfi_private** %12, align 8
  %53 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @do_read_secsi_onechip(%struct.map_info* %51, i32* %57, i64 %58, i64 %59, i32* %60, i32 0)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %78

65:                                               ; preds = %50
  %66 = load i64, i64* %16, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, %66
  store i64 %69, i64* %67, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* %8, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 %73
  store i32* %75, i32** %10, align 8
  store i64 0, i64* %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %28

78:                                               ; preds = %64, %37, %28
  %79 = load i32, i32* %15, align 4
  ret i32 %79
}

declare dso_local i32 @do_read_secsi_onechip(%struct.map_info*, i32*, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
