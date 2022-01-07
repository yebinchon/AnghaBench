; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_default_mtd_writev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_default_mtd_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.kvec = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.kvec*, i64, i64, i64*)* @default_mtd_writev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_mtd_writev(%struct.mtd_info* %0, %struct.kvec* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store %struct.kvec* %1, %struct.kvec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %63, %5
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %15
  %20 = load %struct.kvec*, %struct.kvec** %7, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %20, i64 %21
  %23 = getelementptr inbounds %struct.kvec, %struct.kvec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %63

27:                                               ; preds = %19
  %28 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.kvec*, %struct.kvec** %7, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds %struct.kvec, %struct.kvec* %30, i64 %31
  %33 = getelementptr inbounds %struct.kvec, %struct.kvec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.kvec*, %struct.kvec** %7, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds %struct.kvec, %struct.kvec* %35, i64 %36
  %38 = getelementptr inbounds %struct.kvec, %struct.kvec* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @mtd_write(%struct.mtd_info* %28, i64 %29, i64 %34, i64* %13, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %12, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %12, align 8
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %27
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.kvec*, %struct.kvec** %7, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds %struct.kvec, %struct.kvec* %48, i64 %49
  %51 = getelementptr inbounds %struct.kvec, %struct.kvec* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %47, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46, %27
  br label %66

55:                                               ; preds = %46
  %56 = load %struct.kvec*, %struct.kvec** %7, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.kvec, %struct.kvec* %56, i64 %57
  %59 = getelementptr inbounds %struct.kvec, %struct.kvec* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %55, %26
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %11, align 8
  br label %15

66:                                               ; preds = %54, %15
  %67 = load i64, i64* %12, align 8
  %68 = load i64*, i64** %10, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* %14, align 4
  ret i32 %69
}

declare dso_local i32 @mtd_write(%struct.mtd_info*, i64, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
