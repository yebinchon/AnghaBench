; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_umv_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_umv_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Alloc umv space failed, want %d, get %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_init_umv_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_init_umv_space(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %7 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @hclge_set_umv_space(%struct.hclge_dev* %6, i64 %9, i64* %4, i32 1)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 6
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @dev_warn(i32* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29)
  br label %31

31:                                               ; preds = %21, %15
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %33 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %32, i32 0, i32 5
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load i64, i64* %4, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %38 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %40 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %43 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 2
  %46 = sdiv i32 %41, %45
  %47 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %48 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %50 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %53 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %56 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 2
  %59 = srem i32 %54, %58
  %60 = add nsw i32 %51, %59
  %61 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %62 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %31, %13
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @hclge_set_umv_space(%struct.hclge_dev*, i64, i64*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
