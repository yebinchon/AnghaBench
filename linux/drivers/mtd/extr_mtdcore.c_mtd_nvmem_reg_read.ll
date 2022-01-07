; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_nvmem_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_nvmem_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@EUCLEAN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @mtd_nvmem_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtd_nvmem_reg_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.mtd_info*
  store %struct.mtd_info* %14, %struct.mtd_info** %10, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i64, i64* %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @mtd_read(%struct.mtd_info* %15, i32 %16, i64 %17, i64* %11, i8* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @EUCLEAN, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %5, align 4
  br label %39

29:                                               ; preds = %22, %4
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ 0, %33 ], [ %36, %34 ]
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %27
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i64, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
