; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_writev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 (%struct.mtd_info*, %struct.kvec*, i64, i32, i64*)* }
%struct.kvec = type opaque
%struct.kvec.0 = type { i32 }

@MTD_WRITEABLE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_writev(%struct.mtd_info* %0, %struct.kvec.0* %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.kvec.0*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store %struct.kvec.0* %1, %struct.kvec.0** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %12 = load i64*, i64** %11, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MTD_WRITEABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EROFS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %45

22:                                               ; preds = %5
  %23 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 1
  %25 = load i32 (%struct.mtd_info*, %struct.kvec*, i64, i32, i64*)*, i32 (%struct.mtd_info*, %struct.kvec*, i64, i32, i64*)** %24, align 8
  %26 = icmp ne i32 (%struct.mtd_info*, %struct.kvec*, i64, i32, i64*)* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %29 = load %struct.kvec.0*, %struct.kvec.0** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i64*, i64** %11, align 8
  %33 = call i32 @default_mtd_writev(%struct.mtd_info* %28, %struct.kvec.0* %29, i64 %30, i32 %31, i64* %32)
  store i32 %33, i32* %6, align 4
  br label %45

34:                                               ; preds = %22
  %35 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 1
  %37 = load i32 (%struct.mtd_info*, %struct.kvec*, i64, i32, i64*)*, i32 (%struct.mtd_info*, %struct.kvec*, i64, i32, i64*)** %36, align 8
  %38 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %39 = load %struct.kvec.0*, %struct.kvec.0** %8, align 8
  %40 = bitcast %struct.kvec.0* %39 to %struct.kvec*
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i64*, i64** %11, align 8
  %44 = call i32 %37(%struct.mtd_info* %38, %struct.kvec* %40, i64 %41, i32 %42, i64* %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %34, %27, %19
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @default_mtd_writev(%struct.mtd_info*, %struct.kvec.0*, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
