; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_sysfs.c_next_bitstream_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_sysfs.c_next_bitstream_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.genwqe_dev = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@IO_SLC_CFGREG_SOFTRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @next_bitstream_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @next_bitstream_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.genwqe_dev*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.genwqe_dev* @dev_get_drvdata(%struct.device* %12)
  store %struct.genwqe_dev* %13, %struct.genwqe_dev** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @kstrtoint(i8* %14, i32 0, i32* %10)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %39

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %28 [
    i32 0, label %22
    i32 1, label %25
  ]

22:                                               ; preds = %20
  %23 = load %struct.genwqe_dev*, %struct.genwqe_dev** %11, align 8
  %24 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %23, i32 0, i32 0
  store i32 120, i32* %24, align 4
  br label %31

25:                                               ; preds = %20
  %26 = load %struct.genwqe_dev*, %struct.genwqe_dev** %11, align 8
  %27 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %26, i32 0, i32 0
  store i32 124, i32* %27, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %39

31:                                               ; preds = %25, %22
  %32 = load %struct.genwqe_dev*, %struct.genwqe_dev** %11, align 8
  %33 = load i32, i32* @IO_SLC_CFGREG_SOFTRESET, align 4
  %34 = load %struct.genwqe_dev*, %struct.genwqe_dev** %11, align 8
  %35 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @__genwqe_writeq(%struct.genwqe_dev* %32, i32 %33, i32 %36)
  %38 = load i64, i64* %9, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %31, %28, %17
  %40 = load i64, i64* %5, align 8
  ret i64 %40
}

declare dso_local %struct.genwqe_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @__genwqe_writeq(%struct.genwqe_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
