; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-enc.c_solo_jpeg_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-enc.c_solo_jpeg_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i32*, i32 }

@SOLO_DEV_6010 = common dso_local global i64 0, align 8
@SOLO_VE_JPEG_QP_TBL = common dso_local global i32 0, align 4
@SOLO_QP_INIT = common dso_local global i32 0, align 4
@SOLO_VE_JPEG_QP_CH_L = common dso_local global i32 0, align 4
@SOLO_VE_JPEG_QP_CH_H = common dso_local global i32 0, align 4
@SOLO_VE_JPEG_CFG = common dso_local global i32 0, align 4
@SOLO_VE_JPEG_CTRL = common dso_local global i32 0, align 4
@SOLO_DEV_6110 = common dso_local global i64 0, align 8
@SOLO_VE_JPEG_CFG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*)* @solo_jpeg_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_jpeg_config(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  %3 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %4 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SOLO_DEV_6010, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %10 = load i32, i32* @SOLO_VE_JPEG_QP_TBL, align 4
  %11 = call i32 @solo_reg_write(%struct.solo_dev* %9, i32 %10, i32 33686018)
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %14 = load i32, i32* @SOLO_VE_JPEG_QP_TBL, align 4
  %15 = call i32 @solo_reg_write(%struct.solo_dev* %13, i32 %14, i32 67305985)
  br label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %18 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %17, i32 0, i32 2
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load i32, i32* @SOLO_QP_INIT, align 4
  %21 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %22 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %26 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %20, i32* %28, align 4
  %29 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %30 = load i32, i32* @SOLO_VE_JPEG_QP_CH_L, align 4
  %31 = load i32, i32* @SOLO_QP_INIT, align 4
  %32 = call i32 @solo_reg_write(%struct.solo_dev* %29, i32 %30, i32 %31)
  %33 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %34 = load i32, i32* @SOLO_VE_JPEG_QP_CH_H, align 4
  %35 = load i32, i32* @SOLO_QP_INIT, align 4
  %36 = call i32 @solo_reg_write(%struct.solo_dev* %33, i32 %34, i32 %35)
  %37 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %38 = load i32, i32* @SOLO_VE_JPEG_CFG, align 4
  %39 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %40 = call i32 @SOLO_JPEG_EXT_SIZE(%struct.solo_dev* %39)
  %41 = and i32 %40, -65536
  %42 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %43 = call i32 @SOLO_JPEG_EXT_ADDR(%struct.solo_dev* %42)
  %44 = ashr i32 %43, 16
  %45 = and i32 %44, 65535
  %46 = or i32 %41, %45
  %47 = call i32 @solo_reg_write(%struct.solo_dev* %37, i32 %38, i32 %46)
  %48 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %49 = load i32, i32* @SOLO_VE_JPEG_CTRL, align 4
  %50 = call i32 @solo_reg_write(%struct.solo_dev* %48, i32 %49, i32 -1)
  %51 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %52 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SOLO_DEV_6110, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %16
  %57 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %58 = load i32, i32* @SOLO_VE_JPEG_CFG1, align 4
  %59 = call i32 @solo_reg_write(%struct.solo_dev* %57, i32 %58, i32 7740)
  br label %60

60:                                               ; preds = %56, %16
  ret void
}

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @SOLO_JPEG_EXT_SIZE(%struct.solo_dev*) #1

declare dso_local i32 @SOLO_JPEG_EXT_ADDR(%struct.solo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
