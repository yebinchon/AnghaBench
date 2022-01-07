; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_erase_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_erase_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i32 }

@SOLO_VO_DISP_ERASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_dev*)* @erase_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erase_off(%struct.solo_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.solo_dev*, align 8
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  %4 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %5 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %11 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %16 = load i32, i32* @SOLO_VO_DISP_ERASE, align 4
  %17 = call i32 @solo_reg_write(%struct.solo_dev* %15, i32 %16, i32 0)
  br label %18

18:                                               ; preds = %14, %9
  %19 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %20 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = icmp sge i32 %21, 8
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %26 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %24, %18
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
