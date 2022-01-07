; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_poll_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_enc28j60.c_poll_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc28j60_net = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"reg %02x ready timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enc28j60_net*, i32, i32, i32)* @poll_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_ready(%struct.enc28j60_net* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.enc28j60_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  store %struct.enc28j60_net* %0, %struct.enc28j60_net** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.enc28j60_net*, %struct.enc28j60_net** %6, align 8
  %13 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %10, align 8
  %16 = load i64, i64* @jiffies, align 8
  %17 = call i64 @msecs_to_jiffies(i32 20)
  %18 = add i64 %16, %17
  store i64 %18, i64* %11, align 8
  br label %19

19:                                               ; preds = %43, %4
  %20 = load %struct.enc28j60_net*, %struct.enc28j60_net** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @nolock_regb_read(%struct.enc28j60_net* %20, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %19
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i64 @time_after(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.enc28j60_net*, %struct.enc28j60_net** %6, align 8
  %34 = call i64 @netif_msg_drv(%struct.enc28j60_net* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.device*, %struct.device** %10, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dev_dbg(%struct.device* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %46

43:                                               ; preds = %27
  %44 = call i32 (...) @cpu_relax()
  br label %19

45:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @nolock_regb_read(%struct.enc28j60_net*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @netif_msg_drv(%struct.enc28j60_net*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
