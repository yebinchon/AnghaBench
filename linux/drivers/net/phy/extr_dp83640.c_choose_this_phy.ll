; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_choose_this_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_choose_this_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp83640_clock = type { i32 }
%struct.phy_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@chosen_phy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dp83640_clock*, %struct.phy_device*)* @choose_this_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_this_phy(%struct.dp83640_clock* %0, %struct.phy_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dp83640_clock*, align 8
  %5 = alloca %struct.phy_device*, align 8
  store %struct.dp83640_clock* %0, %struct.dp83640_clock** %4, align 8
  store %struct.phy_device* %1, %struct.phy_device** %5, align 8
  %6 = load i32, i32* @chosen_phy, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.dp83640_clock*, %struct.dp83640_clock** %4, align 8
  %10 = getelementptr inbounds %struct.dp83640_clock, %struct.dp83640_clock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %23

14:                                               ; preds = %8, %2
  %15 = load i32, i32* @chosen_phy, align 4
  %16 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %23

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %21, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
