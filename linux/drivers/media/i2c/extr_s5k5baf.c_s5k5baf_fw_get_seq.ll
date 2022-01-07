; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_fw_get_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_fw_get_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { %struct.s5k5baf_fw* }
%struct.s5k5baf_fw = type { i32, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.s5k5baf*, i64)* @s5k5baf_fw_get_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @s5k5baf_fw_get_seq(%struct.s5k5baf* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.s5k5baf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.s5k5baf_fw*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %10 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %9, i32 0, i32 0
  %11 = load %struct.s5k5baf_fw*, %struct.s5k5baf_fw** %10, align 8
  store %struct.s5k5baf_fw* %11, %struct.s5k5baf_fw** %6, align 8
  %12 = load %struct.s5k5baf_fw*, %struct.s5k5baf_fw** %6, align 8
  %13 = icmp eq %struct.s5k5baf_fw* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64* null, i64** %3, align 8
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.s5k5baf_fw*, %struct.s5k5baf_fw** %6, align 8
  %17 = getelementptr inbounds %struct.s5k5baf_fw, %struct.s5k5baf_fw* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = load %struct.s5k5baf_fw*, %struct.s5k5baf_fw** %6, align 8
  %20 = getelementptr inbounds %struct.s5k5baf_fw, %struct.s5k5baf_fw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 2, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %18, i64 %23
  store i64* %24, i64** %7, align 8
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %55, %15
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.s5k5baf_fw*, %struct.s5k5baf_fw** %6, align 8
  %28 = getelementptr inbounds %struct.s5k5baf_fw, %struct.s5k5baf_fw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load %struct.s5k5baf_fw*, %struct.s5k5baf_fw** %6, align 8
  %33 = getelementptr inbounds %struct.s5k5baf_fw, %struct.s5k5baf_fw* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %31
  %43 = load i64*, i64** %7, align 8
  %44 = load %struct.s5k5baf_fw*, %struct.s5k5baf_fw** %6, align 8
  %45 = getelementptr inbounds %struct.s5k5baf_fw, %struct.s5k5baf_fw* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %43, i64 %52
  store i64* %53, i64** %3, align 8
  br label %59

54:                                               ; preds = %31
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %25

58:                                               ; preds = %25
  store i64* null, i64** %3, align 8
  br label %59

59:                                               ; preds = %58, %42, %14
  %60 = load i64*, i64** %3, align 8
  ret i64* %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
