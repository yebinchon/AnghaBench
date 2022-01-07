; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i32)* @cfi_staa_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_staa_lock(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.map_info*, align 8
  %9 = alloca %struct.cfi_private*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 1
  %15 = load %struct.map_info*, %struct.map_info** %14, align 8
  store %struct.map_info* %15, %struct.map_info** %8, align 8
  %16 = load %struct.map_info*, %struct.map_info** %8, align 8
  %17 = getelementptr inbounds %struct.map_info, %struct.map_info* %16, i32 0, i32 0
  %18 = load %struct.cfi_private*, %struct.cfi_private** %17, align 8
  store %struct.cfi_private* %18, %struct.cfi_private** %9, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %19, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %102

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = and i32 %30, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %102

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %43 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %41, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %49 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 %47, %50
  %52 = sub nsw i32 %46, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %100, %40
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %101

57:                                               ; preds = %54
  %58 = load %struct.map_info*, %struct.map_info** %8, align 8
  %59 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %60 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @do_lock_oneblock(%struct.map_info* %58, i32* %64, i64 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %4, align 4
  br label %102

71:                                               ; preds = %57
  %72 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %73 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %10, align 8
  %78 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %79 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %85 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = zext i32 %86 to i64
  %88 = lshr i64 %83, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %71
  store i64 0, i64* %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.cfi_private*, %struct.cfi_private** %9, align 8
  %95 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp sge i32 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %101

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %71
  br label %54

101:                                              ; preds = %98, %54
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %69, %37, %26
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @do_lock_oneblock(%struct.map_info*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
