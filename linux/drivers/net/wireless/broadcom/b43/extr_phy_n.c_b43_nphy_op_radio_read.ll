; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_op_radio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_op_radio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B43_MMIO_RADIO_CONTROL = common dso_local global i32 0, align 4
@B43_MMIO_RADIO_DATA_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32)* @b43_nphy_op_radio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_nphy_op_radio_read(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 7
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 1
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ false, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @B43_WARN_ON(i32 %15)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 7
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, 512
  store i32 %24, i32* %4, align 4
  br label %28

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, 256
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = load i32, i32* @B43_MMIO_RADIO_CONTROL, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @b43_write16f(%struct.b43_wldev* %29, i32 %30, i32 %31)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = load i32, i32* @B43_MMIO_RADIO_DATA_LOW, align 4
  %35 = call i32 @b43_read16(%struct.b43_wldev* %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_write16f(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
