; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fmc_is_rds_data_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fmc_is_rds_data_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fmc_is_rds_data_available(%struct.fmdev* %0, %struct.file* %1, %struct.poll_table_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fmdev*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.poll_table_struct*, align 8
  store %struct.fmdev* %0, %struct.fmdev** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.poll_table_struct* %2, %struct.poll_table_struct** %7, align 8
  %8 = load %struct.file*, %struct.file** %6, align 8
  %9 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %10 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load %struct.poll_table_struct*, %struct.poll_table_struct** %7, align 8
  %14 = call i32 @poll_wait(%struct.file* %8, i32* %12, %struct.poll_table_struct* %13)
  %15 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %16 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.fmdev*, %struct.fmdev** %5, align 8
  %21 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
