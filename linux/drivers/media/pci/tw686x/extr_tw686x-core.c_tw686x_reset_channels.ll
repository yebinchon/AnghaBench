; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-core.c_tw686x_reset_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-core.c_tw686x_reset_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DMA_CHANNEL_ENABLE = common dso_local global i32 0, align 4
@DMA_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"reset: stopping DMA\0A\00", align 1
@DMA_CMD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tw686x_dev*, i32)* @tw686x_reset_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw686x_reset_channels(%struct.tw686x_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.tw686x_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tw686x_dev* %0, %struct.tw686x_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %8 = load i32, i32* @DMA_CHANNEL_ENABLE, align 4
  %9 = call i32 @reg_read(%struct.tw686x_dev* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %11 = load i32, i32* @DMA_CMD, align 4
  %12 = call i32 @reg_read(%struct.tw686x_dev* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %15 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %20 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %24 = load i32, i32* @DMA_CHANNEL_ENABLE, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @reg_write(%struct.tw686x_dev* %23, i32 %24, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %2
  %36 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %37 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @DMA_CMD_ENABLE, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %35, %2
  %46 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %47 = load i32, i32* @DMA_CMD, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = call i32 @reg_write(%struct.tw686x_dev* %46, i32 %47, i32 %51)
  ret void
}

declare dso_local i32 @reg_read(%struct.tw686x_dev*, i32) #1

declare dso_local i32 @reg_write(%struct.tw686x_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
