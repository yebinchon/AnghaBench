; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_init_bt848.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_init_bt848.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.bttv = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@bttv_tvcards = common dso_local global %struct.TYPE_4__* null, align 8
@BT848_CAP_CTL = common dso_local global i32 0, align 4
@BT848_COLOR_CTL_GAMMA = common dso_local global i32 0, align 4
@BT848_COLOR_CTL = common dso_local global i32 0, align 4
@BT848_IFORM_XTAUTO = common dso_local global i32 0, align 4
@BT848_IFORM_AUTO = common dso_local global i32 0, align 4
@BT848_IFORM = common dso_local global i32 0, align 4
@BT848_GPIO_DMA_CTL_PKTP_32 = common dso_local global i32 0, align 4
@BT848_GPIO_DMA_CTL_PLTP1_16 = common dso_local global i32 0, align 4
@BT848_GPIO_DMA_CTL_PLTP23_16 = common dso_local global i32 0, align 4
@BT848_GPIO_DMA_CTL_GPINTC = common dso_local global i32 0, align 4
@BT848_GPIO_DMA_CTL_GPINTI = common dso_local global i32 0, align 4
@BT848_GPIO_DMA_CTL = common dso_local global i32 0, align 4
@BT848_E_VSCALE_HI = common dso_local global i32 0, align 4
@BT848_O_VSCALE_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @init_bt848 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_bt848(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %4 = load %struct.bttv*, %struct.bttv** %2, align 8
  %5 = getelementptr inbounds %struct.bttv, %struct.bttv* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.bttv*, %struct.bttv** %2, align 8
  %14 = call i32 @init_irqreg(%struct.bttv* %13)
  br label %46

15:                                               ; preds = %1
  %16 = load i32, i32* @BT848_CAP_CTL, align 4
  %17 = call i32 @btwrite(i32 0, i32 %16)
  %18 = load i32, i32* @BT848_COLOR_CTL_GAMMA, align 4
  %19 = load i32, i32* @BT848_COLOR_CTL, align 4
  %20 = call i32 @btwrite(i32 %18, i32 %19)
  %21 = load i32, i32* @BT848_IFORM_XTAUTO, align 4
  %22 = load i32, i32* @BT848_IFORM_AUTO, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @BT848_IFORM, align 4
  %25 = call i32 @btwrite(i32 %23, i32 %24)
  %26 = load i32, i32* @BT848_GPIO_DMA_CTL_PKTP_32, align 4
  %27 = load i32, i32* @BT848_GPIO_DMA_CTL_PLTP1_16, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @BT848_GPIO_DMA_CTL_PLTP23_16, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @BT848_GPIO_DMA_CTL_GPINTC, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @BT848_GPIO_DMA_CTL_GPINTI, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @BT848_GPIO_DMA_CTL, align 4
  %36 = call i32 @btwrite(i32 %34, i32 %35)
  %37 = load i32, i32* @BT848_E_VSCALE_HI, align 4
  %38 = call i32 @btwrite(i32 32, i32 %37)
  %39 = load i32, i32* @BT848_O_VSCALE_HI, align 4
  %40 = call i32 @btwrite(i32 32, i32 %39)
  %41 = load %struct.bttv*, %struct.bttv** %2, align 8
  %42 = getelementptr inbounds %struct.bttv, %struct.bttv* %41, i32 0, i32 0
  %43 = call i32 @v4l2_ctrl_handler_setup(i32* %42)
  %44 = load %struct.bttv*, %struct.bttv** %2, align 8
  %45 = call i32 @init_irqreg(%struct.bttv* %44)
  br label %46

46:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @init_irqreg(%struct.bttv*) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
