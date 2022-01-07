; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_find_datafmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_find_datafmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rj54n1_datafmt = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rj54n1_datafmt* (i64, %struct.rj54n1_datafmt*, i32)* @rj54n1_find_datafmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rj54n1_datafmt* @rj54n1_find_datafmt(i64 %0, %struct.rj54n1_datafmt* %1, i32 %2) #0 {
  %4 = alloca %struct.rj54n1_datafmt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rj54n1_datafmt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.rj54n1_datafmt* %1, %struct.rj54n1_datafmt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %28, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.rj54n1_datafmt*, %struct.rj54n1_datafmt** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.rj54n1_datafmt, %struct.rj54n1_datafmt* %14, i64 %16
  %18 = getelementptr inbounds %struct.rj54n1_datafmt, %struct.rj54n1_datafmt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.rj54n1_datafmt*, %struct.rj54n1_datafmt** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.rj54n1_datafmt, %struct.rj54n1_datafmt* %23, i64 %25
  store %struct.rj54n1_datafmt* %26, %struct.rj54n1_datafmt** %4, align 8
  br label %32

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %9

31:                                               ; preds = %9
  store %struct.rj54n1_datafmt* null, %struct.rj54n1_datafmt** %4, align 8
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.rj54n1_datafmt*, %struct.rj54n1_datafmt** %4, align 8
  ret %struct.rj54n1_datafmt* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
