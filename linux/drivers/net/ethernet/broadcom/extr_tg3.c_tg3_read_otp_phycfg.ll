; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_otp_phycfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_otp_phycfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@OTP_MODE = common dso_local global i32 0, align 4
@OTP_MODE_OTP_THRU_GRC = common dso_local global i32 0, align 4
@OTP_CTRL_OTP_CMD_INIT = common dso_local global i32 0, align 4
@OTP_ADDRESS = common dso_local global i32 0, align 4
@OTP_ADDRESS_MAGIC1 = common dso_local global i32 0, align 4
@OTP_CTRL_OTP_CMD_READ = common dso_local global i32 0, align 4
@OTP_READ_DATA = common dso_local global i32 0, align 4
@OTP_ADDRESS_MAGIC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_read_otp_phycfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_read_otp_phycfg(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %6 = load i32, i32* @OTP_MODE, align 4
  %7 = load i32, i32* @OTP_MODE_OTP_THRU_GRC, align 4
  %8 = call i32 @tw32(i32 %6, i32 %7)
  %9 = load %struct.tg3*, %struct.tg3** %3, align 8
  %10 = load i32, i32* @OTP_CTRL_OTP_CMD_INIT, align 4
  %11 = call i64 @tg3_issue_otp_command(%struct.tg3* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load i32, i32* @OTP_ADDRESS, align 4
  %16 = load i32, i32* @OTP_ADDRESS_MAGIC1, align 4
  %17 = call i32 @tw32(i32 %15, i32 %16)
  %18 = load %struct.tg3*, %struct.tg3** %3, align 8
  %19 = load i32, i32* @OTP_CTRL_OTP_CMD_READ, align 4
  %20 = call i64 @tg3_issue_otp_command(%struct.tg3* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %43

23:                                               ; preds = %14
  %24 = load i32, i32* @OTP_READ_DATA, align 4
  %25 = call i32 @tr32(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @OTP_ADDRESS, align 4
  %27 = load i32, i32* @OTP_ADDRESS_MAGIC2, align 4
  %28 = call i32 @tw32(i32 %26, i32 %27)
  %29 = load %struct.tg3*, %struct.tg3** %3, align 8
  %30 = load i32, i32* @OTP_CTRL_OTP_CMD_READ, align 4
  %31 = call i64 @tg3_issue_otp_command(%struct.tg3* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %43

34:                                               ; preds = %23
  %35 = load i32, i32* @OTP_READ_DATA, align 4
  %36 = call i32 @tr32(i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 65535
  %39 = shl i32 %38, 16
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %40, 16
  %42 = or i32 %39, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %34, %33, %22, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i64 @tg3_issue_otp_command(%struct.tg3*, i32) #1

declare dso_local i32 @tr32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
