; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_dataport_wait_not_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_dataport_wait_not_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32 }

@DP_SEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DP_SEL_DPRDY_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"lan78xx_dataport_wait_not_busy timed out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*)* @lan78xx_dataport_wait_not_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_dataport_wait_not_busy(%struct.lan78xx_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan78xx_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %10, label %33

10:                                               ; preds = %7
  %11 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %12 = load i32, i32* @DP_SEL, align 4
  %13 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %11, i32 %12, i32* %6)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %40

22:                                               ; preds = %10
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DP_SEL_DPRDY_, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %40

28:                                               ; preds = %22
  %29 = call i32 @usleep_range(i32 40, i32 100)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %7

33:                                               ; preds = %7
  %34 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %35 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @netdev_warn(i32 %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %27, %19
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
