; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_efm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_efm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvt_dev = type { i32 }

@NVT_DRIVER_NAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EFER_EFM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvt_dev*)* @nvt_efm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvt_efm_enable(%struct.nvt_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvt_dev*, align 8
  store %struct.nvt_dev* %0, %struct.nvt_dev** %3, align 8
  %4 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %5 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @NVT_DRIVER_NAME, align 4
  %8 = call i32 @request_muxed_region(i32 %6, i32 2, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @EFER_EFM_ENABLE, align 4
  %15 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %16 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @outb(i32 %14, i32 %17)
  %19 = load i32, i32* @EFER_EFM_ENABLE, align 4
  %20 = load %struct.nvt_dev*, %struct.nvt_dev** %3, align 8
  %21 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @outb(i32 %19, i32 %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %13, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @request_muxed_region(i32, i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
