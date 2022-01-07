; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-disp.c_solo_disp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-disp.c_solo_disp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32, i64, i32, i32, i32 }

@SOLO_VO_FMT_TYPE_NTSC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solo_disp_init(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  %4 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %5 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %4, i32 0, i32 0
  store i32 704, i32* %5, align 8
  %6 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %7 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SOLO_VO_FMT_TYPE_NTSC, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %13 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %12, i32 0, i32 2
  store i32 240, i32* %13, align 8
  %14 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %15 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %14, i32 0, i32 3
  store i32 30, i32* %15, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %18 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %17, i32 0, i32 2
  store i32 288, i32* %18, align 8
  %19 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %20 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %19, i32 0, i32 3
  store i32 25, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %23 = call i32 @solo_vin_config(%struct.solo_dev* %22)
  %24 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %25 = call i32 @solo_motion_config(%struct.solo_dev* %24)
  %26 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %27 = call i32 @solo_vout_config(%struct.solo_dev* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %39, %21
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %31 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @SOLO_VI_WIN_ON(i32 %36)
  %38 = call i32 @solo_reg_write(%struct.solo_dev* %35, i32 %37, i32 1)
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %28

42:                                               ; preds = %28
  ret i32 0
}

declare dso_local i32 @solo_vin_config(%struct.solo_dev*) #1

declare dso_local i32 @solo_motion_config(%struct.solo_dev*) #1

declare dso_local i32 @solo_vout_config(%struct.solo_dev*) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_VI_WIN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
