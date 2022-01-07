; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_eeprom_confirm_not_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_eeprom_confirm_not_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@E2P_CMD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@E2P_CMD_EPC_BUSY_ = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"EEPROM is busy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*)* @lan78xx_eeprom_confirm_not_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_eeprom_confirm_not_busy(%struct.lan78xx_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan78xx_net*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %3, align 8
  %7 = load i64, i64* @jiffies, align 8
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %28, %1
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
  br label %43

20:                                               ; preds = %8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @E2P_CMD_EPC_BUSY_, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %43

26:                                               ; preds = %20
  %27 = call i32 @usleep_range(i32 40, i32 100)
  br label %28

28:                                               ; preds = %26
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @HZ, align 8
  %32 = add i64 %30, %31
  %33 = call i32 @time_after(i64 %29, i64 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %8, label %36

36:                                               ; preds = %28
  %37 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %38 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @netdev_warn(i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %36, %25, %17
  %44 = load i32, i32* %2, align 4
  ret i32 %44
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
