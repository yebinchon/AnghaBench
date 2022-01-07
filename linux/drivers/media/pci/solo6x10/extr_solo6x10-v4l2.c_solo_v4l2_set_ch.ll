; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_v4l2_set_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_v4l2_set_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_dev*, i64)* @solo_v4l2_set_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_v4l2_set_ch(%struct.solo_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.solo_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.solo_dev* %0, %struct.solo_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %8 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %11 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = icmp sge i64 %6, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %20 = call i32 @erase_on(%struct.solo_dev* %19)
  %21 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %22 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %23 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @solo_v4l2_ch(%struct.solo_dev* %21, i64 %24, i32 0)
  %26 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @solo_v4l2_ch(%struct.solo_dev* %26, i64 %27, i32 1)
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %31 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %18, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @erase_on(%struct.solo_dev*) #1

declare dso_local i32 @solo_v4l2_ch(%struct.solo_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
