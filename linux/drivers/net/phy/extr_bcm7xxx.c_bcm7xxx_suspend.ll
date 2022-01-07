; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm7xxx.c_bcm7xxx_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm7xxx.c_bcm7xxx_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm7xxx_regs = type { i32, i32 }
%struct.phy_device = type { i32 }
%struct.bcm7xxx_regs.0 = type { i32, i32 }

@bcm7xxx_suspend.bcm7xxx_suspend_cfg = internal constant [6 x %struct.bcm7xxx_regs] [%struct.bcm7xxx_regs { i32 128, i32 139 }, %struct.bcm7xxx_regs { i32 130, i32 448 }, %struct.bcm7xxx_regs { i32 129, i32 28672 }, %struct.bcm7xxx_regs { i32 128, i32 15 }, %struct.bcm7xxx_regs { i32 130, i32 8400 }, %struct.bcm7xxx_regs { i32 128, i32 11 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm7xxx_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm7xxx_suspend(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @ARRAY_SIZE(%struct.bcm7xxx_regs.0* bitcast ([6 x %struct.bcm7xxx_regs]* @bcm7xxx_suspend.bcm7xxx_suspend_cfg to %struct.bcm7xxx_regs.0*))
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [6 x %struct.bcm7xxx_regs], [6 x %struct.bcm7xxx_regs]* @bcm7xxx_suspend.bcm7xxx_suspend_cfg, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.bcm7xxx_regs, %struct.bcm7xxx_regs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [6 x %struct.bcm7xxx_regs], [6 x %struct.bcm7xxx_regs]* @bcm7xxx_suspend.bcm7xxx_suspend_cfg, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.bcm7xxx_regs, %struct.bcm7xxx_regs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @phy_write(%struct.phy_device* %11, i32 %16, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %10
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %32

27:                                               ; preds = %10
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %6

31:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @ARRAY_SIZE(%struct.bcm7xxx_regs.0*) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
