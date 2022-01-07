; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3_context_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3_context_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { i32, i32*, i32*, i32 (%struct.lis3lv02d*, i32, i32)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lis3lv02d*)* @lis3_context_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lis3_context_restore(%struct.lis3lv02d* %0) #0 {
  %2 = alloca %struct.lis3lv02d*, align 8
  %3 = alloca i32, align 4
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %2, align 8
  %4 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %5 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %35, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %12 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %17 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %16, i32 0, i32 3
  %18 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %17, align 8
  %19 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %20 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %21 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %28 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %18(%struct.lis3lv02d* %19, i32 %26, i32 %33)
  br label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %9

38:                                               ; preds = %9
  br label %39

39:                                               ; preds = %38, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
