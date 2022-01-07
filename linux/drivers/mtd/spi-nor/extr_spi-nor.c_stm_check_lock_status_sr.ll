; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_stm_check_lock_status_sr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_stm_check_lock_status_sr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i64, i64, i32, i32)* @stm_check_lock_status_sr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm_check_lock_status_sr(%struct.spi_nor* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_nor*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %53

17:                                               ; preds = %5
  %18 = load %struct.spi_nor*, %struct.spi_nor** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @stm_get_locked_range(%struct.spi_nor* %18, i32 %19, i64* %12, i64* %13)
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = add nsw i64 %27, %28
  %30 = icmp sle i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp sge i64 %32, %33
  br label %35

35:                                               ; preds = %31, %23
  %36 = phi i1 [ false, %23 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %6, align 4
  br label %53

38:                                               ; preds = %17
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* %12, align 8
  %49 = icmp sle i64 %47, %48
  br label %50

50:                                               ; preds = %44, %38
  %51 = phi i1 [ true, %38 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %35, %16
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @stm_get_locked_range(%struct.spi_nor*, i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
