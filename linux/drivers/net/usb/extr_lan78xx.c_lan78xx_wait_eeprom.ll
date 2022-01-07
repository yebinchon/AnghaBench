; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_wait_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_wait_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@E2P_CMD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@E2P_CMD_EPC_BUSY_ = common dso_local global i32 0, align 4
@E2P_CMD_EPC_TIMEOUT_ = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"EEPROM read operation timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*)* @lan78xx_wait_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_wait_eeprom(%struct.lan78xx_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan78xx_net*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %3, align 8
  %7 = load i64, i64* @jiffies, align 8
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %33, %1
  %9 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %10 = load i32, i32* @E2P_CMD, align 4
  %11 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %9, i32 %10, i32* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %56

20:                                               ; preds = %8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @E2P_CMD_EPC_TIMEOUT_, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20
  br label %41

31:                                               ; preds = %25
  %32 = call i32 @usleep_range(i32 40, i32 100)
  br label %33

33:                                               ; preds = %31
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @HZ, align 8
  %37 = add i64 %35, %36
  %38 = call i32 @time_after(i64 %34, i64 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %8, label %41

41:                                               ; preds = %33, %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @E2P_CMD_EPC_TIMEOUT_, align 4
  %44 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %50 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @netdev_warn(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %48, %17
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
