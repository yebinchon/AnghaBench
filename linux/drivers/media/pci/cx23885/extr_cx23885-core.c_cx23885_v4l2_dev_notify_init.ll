; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_v4l2_dev_notify_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_v4l2_dev_notify_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@cx23885_av_work_handler = common dso_local global i32 0, align 4
@cx23885_ir_rx_work_handler = common dso_local global i32 0, align 4
@cx23885_ir_tx_work_handler = common dso_local global i32 0, align 4
@cx23885_v4l2_dev_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx23885_dev*)* @cx23885_v4l2_dev_notify_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx23885_v4l2_dev_notify_init(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %3 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %4 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %3, i32 0, i32 3
  %5 = load i32, i32* @cx23885_av_work_handler, align 4
  %6 = call i32 @INIT_WORK(i32* %4, i32 %5)
  %7 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %8 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %7, i32 0, i32 2
  %9 = load i32, i32* @cx23885_ir_rx_work_handler, align 4
  %10 = call i32 @INIT_WORK(i32* %8, i32 %9)
  %11 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %12 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %11, i32 0, i32 1
  %13 = load i32, i32* @cx23885_ir_tx_work_handler, align 4
  %14 = call i32 @INIT_WORK(i32* %12, i32 %13)
  %15 = load i32, i32* @cx23885_v4l2_dev_notify, align 4
  %16 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %17 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
