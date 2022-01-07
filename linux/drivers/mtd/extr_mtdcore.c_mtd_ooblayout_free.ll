; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_ooblayout_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_ooblayout_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.mtd_oob_region = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_ooblayout_free(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %8 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %9 = call i32 @memset(%struct.mtd_oob_region* %8, i32 0, i32 4)
  %10 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %11 = icmp ne %struct.mtd_info* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %45

18:                                               ; preds = %12
  %19 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %20 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)**
  %29 = load i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)*, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)** %28, align 8
  %30 = icmp ne i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %23, %18
  %32 = load i32, i32* @ENOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %45

34:                                               ; preds = %23
  %35 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)**
  %40 = load i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)*, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)** %39, align 8
  %41 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %44 = call i32 %40(%struct.mtd_info* %41, i32 %42, %struct.mtd_oob_region* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %34, %31, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.mtd_oob_region*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
