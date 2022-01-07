; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @concat_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_suspend(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.mtd_concat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %9 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %8)
  store %struct.mtd_concat* %9, %struct.mtd_concat** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.mtd_concat*, %struct.mtd_concat** %4, align 8
  %13 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load %struct.mtd_concat*, %struct.mtd_concat** %4, align 8
  %18 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %17, i32 0, i32 1
  %19 = load %struct.mtd_info**, %struct.mtd_info*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %19, i64 %21
  %23 = load %struct.mtd_info*, %struct.mtd_info** %22, align 8
  store %struct.mtd_info* %23, %struct.mtd_info** %7, align 8
  %24 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %25 = call i32 @mtd_suspend(%struct.mtd_info* %24)
  store i32 %25, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

declare dso_local i32 @mtd_suspend(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
