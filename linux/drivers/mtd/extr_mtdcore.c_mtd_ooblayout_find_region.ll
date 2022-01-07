; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_ooblayout_find_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_ooblayout_find_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_oob_region = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i32*, %struct.mtd_oob_region*, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)*)* @mtd_ooblayout_find_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtd_ooblayout_find_region(%struct.mtd_info* %0, i32 %1, i32* %2, %struct.mtd_oob_region* %3, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mtd_oob_region*, align 8
  %11 = alloca i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.mtd_oob_region* %3, %struct.mtd_oob_region** %10, align 8
  store i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* %4, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %10, align 8
  %16 = call i32 @memset(%struct.mtd_oob_region* %15, i32 0, i32 8)
  br label %17

17:                                               ; preds = %5, %36
  %18 = load i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)*, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)** %11, align 8
  %19 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %20 = load i32, i32* %14, align 4
  %21 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %10, align 8
  %22 = call i32 %18(%struct.mtd_info* %19, i32 %20, %struct.mtd_oob_region* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %6, align 4
  br label %61

27:                                               ; preds = %17
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %10, align 8
  %30 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %44

36:                                               ; preds = %27
  %37 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %10, align 8
  %38 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  br label %17

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %12, align 4
  %47 = sub nsw i32 %45, %46
  %48 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %10, align 8
  %49 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %10, align 8
  %56 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %44, %25
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.mtd_oob_region*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
