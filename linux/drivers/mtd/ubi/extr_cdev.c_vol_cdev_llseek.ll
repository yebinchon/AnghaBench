; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_cdev.c_vol_cdev_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_cdev.c_vol_cdev_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ubi_volume_desc* }
%struct.ubi_volume_desc = type { %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"updating\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @vol_cdev_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vol_cdev_llseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_volume_desc*, align 8
  %9 = alloca %struct.ubi_volume*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %11, align 8
  store %struct.ubi_volume_desc* %12, %struct.ubi_volume_desc** %8, align 8
  %13 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %8, align 8
  %14 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %13, i32 0, i32 0
  %15 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  store %struct.ubi_volume* %15, %struct.ubi_volume** %9, align 8
  %16 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %17 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %22 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ubi_err(i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %35

27:                                               ; preds = %3
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %32 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @fixed_size_llseek(%struct.file* %28, i32 %29, i32 %30, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %27, %20
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @ubi_err(i32, i8*) #1

declare dso_local i32 @fixed_size_llseek(%struct.file*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
