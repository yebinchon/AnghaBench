; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_request_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_request_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i8* }

@phy_interrupt = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Error %d requesting IRQ %d, falling back to polling\0A\00", align 1
@PHY_POLL = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Can't enable interrupt, falling back to polling\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phy_request_interrupt(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load i32, i32* @phy_interrupt, align 4
  %8 = load i32, i32* @IRQF_ONESHOT, align 4
  %9 = load i32, i32* @IRQF_SHARED, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %12 = call i32 @phydev_name(%struct.phy_device* %11)
  %13 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %14 = call i32 @request_threaded_irq(i8* %6, i32* null, i32 %7, i32 %10, i32 %12, %struct.phy_device* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (%struct.phy_device*, i8*, ...) @phydev_warn(%struct.phy_device* %18, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %22)
  %24 = load i8*, i8** @PHY_POLL, align 8
  %25 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  br label %40

27:                                               ; preds = %1
  %28 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %29 = call i64 @phy_enable_interrupts(%struct.phy_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %33 = call i32 (%struct.phy_device*, i8*, ...) @phydev_warn(%struct.phy_device* %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %35 = call i32 @phy_free_interrupt(%struct.phy_device* %34)
  %36 = load i8*, i8** @PHY_POLL, align 8
  %37 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %38 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %31, %27
  br label %40

40:                                               ; preds = %39, %17
  ret void
}

declare dso_local i32 @request_threaded_irq(i8*, i32*, i32, i32, i32, %struct.phy_device*) #1

declare dso_local i32 @phydev_name(%struct.phy_device*) #1

declare dso_local i32 @phydev_warn(%struct.phy_device*, i8*, ...) #1

declare dso_local i64 @phy_enable_interrupts(%struct.phy_device*) #1

declare dso_local i32 @phy_free_interrupt(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
