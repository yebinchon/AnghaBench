; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_sysfs.c_reload_bitstream_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_sysfs.c_reload_bitstream_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.genwqe_dev = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@GENWQE_CARD_UNUSED = common dso_local global i64 0, align 8
@GENWQE_CARD_USED = common dso_local global i64 0, align 8
@GENWQE_CARD_RELOAD_BITSTREAM = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @reload_bitstream_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reload_bitstream_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %48

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load %struct.genwqe_dev*, %struct.genwqe_dev** %11, align 8
  %25 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GENWQE_CARD_UNUSED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.genwqe_dev*, %struct.genwqe_dev** %11, align 8
  %31 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GENWQE_CARD_USED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29, %23
  %36 = load i64, i64* @GENWQE_CARD_RELOAD_BITSTREAM, align 8
  %37 = load %struct.genwqe_dev*, %struct.genwqe_dev** %11, align 8
  %38 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %42

39:                                               ; preds = %29
  %40 = load i64, i64* @EIO, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %5, align 8
  br label %48

42:                                               ; preds = %35
  br label %46

43:                                               ; preds = %20
  %44 = load i64, i64* @EINVAL, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %5, align 8
  br label %48

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %46, %43, %39, %17
  %49 = load i64, i64* %5, align 8
  ret i64 %49
}

declare dso_local %struct.genwqe_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
