; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_block_markbad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_block_markbad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64)* @concat_block_markbad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_block_markbad(%struct.mtd_info* %0, i64 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mtd_concat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %10 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %9)
  store %struct.mtd_concat* %10, %struct.mtd_concat** %5, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %51, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.mtd_concat*, %struct.mtd_concat** %5, align 8
  %16 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %13
  %20 = load %struct.mtd_concat*, %struct.mtd_concat** %5, align 8
  %21 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %20, i32 0, i32 1
  %22 = load %struct.mtd_info**, %struct.mtd_info*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %22, i64 %24
  %26 = load %struct.mtd_info*, %struct.mtd_info** %25, align 8
  store %struct.mtd_info* %26, %struct.mtd_info** %8, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %19
  %33 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = sub nsw i64 %36, %35
  store i64 %37, i64* %4, align 8
  br label %51

38:                                               ; preds = %19
  %39 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @mtd_block_markbad(%struct.mtd_info* %39, i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %46 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %38
  br label %54

51:                                               ; preds = %32
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %13

54:                                               ; preds = %50, %13
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

declare dso_local i32 @mtd_block_markbad(%struct.mtd_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
