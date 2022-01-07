; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_ape_otp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_ape_otp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@TG3_APE_OTP_ADDR = common dso_local global i32 0, align 4
@APE_OTP_ADDR_CPU_ENABLE = common dso_local global i32 0, align 4
@TG3_APE_OTP_CTRL = common dso_local global i32 0, align 4
@APE_OTP_CTRL_PROG_EN = common dso_local global i32 0, align 4
@APE_OTP_CTRL_CMD_RD = common dso_local global i32 0, align 4
@APE_OTP_CTRL_START = common dso_local global i32 0, align 4
@TG3_APE_OTP_STATUS = common dso_local global i32 0, align 4
@APE_OTP_STATUS_CMD_DONE = common dso_local global i32 0, align 4
@TG3_APE_OTP_RD_DATA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32, i32*)* @tg3_ape_otp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_ape_otp_read(%struct.tg3* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tg3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 %12, 8
  store i32 %13, i32* %11, align 4
  %14 = load %struct.tg3*, %struct.tg3** %5, align 8
  %15 = call i32 @tg3_nvram_lock(%struct.tg3* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %74

20:                                               ; preds = %3
  %21 = load %struct.tg3*, %struct.tg3** %5, align 8
  %22 = load i32, i32* @TG3_APE_OTP_ADDR, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @APE_OTP_ADDR_CPU_ENABLE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @tg3_ape_write32(%struct.tg3* %21, i32 %22, i32 %25)
  %27 = load %struct.tg3*, %struct.tg3** %5, align 8
  %28 = load i32, i32* @TG3_APE_OTP_CTRL, align 4
  %29 = load i32, i32* @APE_OTP_CTRL_PROG_EN, align 4
  %30 = load i32, i32* @APE_OTP_CTRL_CMD_RD, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @APE_OTP_CTRL_START, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @tg3_ape_write32(%struct.tg3* %27, i32 %28, i32 %33)
  %35 = load %struct.tg3*, %struct.tg3** %5, align 8
  %36 = load i32, i32* @TG3_APE_OTP_CTRL, align 4
  %37 = call i32 @tg3_ape_read32(%struct.tg3* %35, i32 %36)
  %38 = call i32 @udelay(i32 10)
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %57, %20
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 100
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load %struct.tg3*, %struct.tg3** %5, align 8
  %44 = load i32, i32* @TG3_APE_OTP_STATUS, align 4
  %45 = call i32 @tg3_ape_read32(%struct.tg3* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @APE_OTP_STATUS_CMD_DONE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.tg3*, %struct.tg3** %5, align 8
  %52 = load i32, i32* @TG3_APE_OTP_RD_DATA, align 4
  %53 = call i32 @tg3_ape_read32(%struct.tg3* %51, i32 %52)
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  br label %60

55:                                               ; preds = %42
  %56 = call i32 @udelay(i32 10)
  br label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %39

60:                                               ; preds = %50, %39
  %61 = load %struct.tg3*, %struct.tg3** %5, align 8
  %62 = load i32, i32* @TG3_APE_OTP_CTRL, align 4
  %63 = call i32 @tg3_ape_write32(%struct.tg3* %61, i32 %62, i32 0)
  %64 = load %struct.tg3*, %struct.tg3** %5, align 8
  %65 = call i32 @tg3_nvram_unlock(%struct.tg3* %64)
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @APE_OTP_STATUS_CMD_DONE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %74

71:                                               ; preds = %60
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %70, %18
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @tg3_nvram_lock(%struct.tg3*) #1

declare dso_local i32 @tg3_ape_write32(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_ape_read32(%struct.tg3*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tg3_nvram_unlock(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
