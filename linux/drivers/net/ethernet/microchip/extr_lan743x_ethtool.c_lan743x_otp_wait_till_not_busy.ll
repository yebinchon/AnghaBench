; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_otp_wait_till_not_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_otp_wait_till_not_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Timeout on OTP_STATUS completion\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@OTP_STATUS = common dso_local global i32 0, align 4
@OTP_STATUS_BUSY_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*)* @lan743x_otp_wait_till_not_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_otp_wait_till_not_busy(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan743x_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load i64, i64* @HZ, align 8
  %8 = add i64 %6, %7
  store i64 %8, i64* %4, align 8
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @time_after(i64 %10, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %16 = load i32, i32* @drv, align 4
  %17 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netif_warn(%struct.lan743x_adapter* %15, i32 %16, i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %34

23:                                               ; preds = %9
  %24 = call i32 @udelay(i32 1)
  %25 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %26 = load i32, i32* @OTP_STATUS, align 4
  %27 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @OTP_STATUS_BUSY_, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %9, label %33

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @netif_warn(%struct.lan743x_adapter*, i32, i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
