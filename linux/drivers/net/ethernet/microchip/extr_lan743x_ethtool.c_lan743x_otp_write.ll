; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_otp_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_otp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32 }

@MAX_OTP_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OTP_PRGM_MODE = common dso_local global i32 0, align 4
@OTP_PRGM_MODE_BYTE_ = common dso_local global i32 0, align 4
@OTP_PRGM_DATA = common dso_local global i32 0, align 4
@OTP_TST_CMD = common dso_local global i32 0, align 4
@OTP_TST_CMD_PRGVRFY_ = common dso_local global i32 0, align 4
@OTP_CMD_GO = common dso_local global i32 0, align 4
@OTP_CMD_GO_GO_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*, i64, i64, i32*)* @lan743x_otp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_otp_write(%struct.lan743x_adapter* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lan743x_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @MAX_OTP_SIZE, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %80

20:                                               ; preds = %4
  %21 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %22 = call i32 @lan743x_otp_power_up(%struct.lan743x_adapter* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %80

27:                                               ; preds = %20
  %28 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %29 = call i32 @lan743x_otp_wait_till_not_busy(%struct.lan743x_adapter* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %80

34:                                               ; preds = %27
  %35 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %36 = load i32, i32* @OTP_PRGM_MODE, align 4
  %37 = load i32, i32* @OTP_PRGM_MODE_BYTE_, align 4
  %38 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %35, i32 %36, i32 %37)
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %74, %34
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %8, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %39
  %45 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call i32 @lan743x_otp_set_address(%struct.lan743x_adapter* %45, i64 %49)
  %51 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %52 = load i32, i32* @OTP_PRGM_DATA, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %51, i32 %52, i32 %57)
  %59 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %60 = load i32, i32* @OTP_TST_CMD, align 4
  %61 = load i32, i32* @OTP_TST_CMD_PRGVRFY_, align 4
  %62 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %59, i32 %60, i32 %61)
  %63 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %64 = load i32, i32* @OTP_CMD_GO, align 4
  %65 = load i32, i32* @OTP_CMD_GO_GO_, align 4
  %66 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %63, i32 %64, i32 %65)
  %67 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %68 = call i32 @lan743x_otp_wait_till_not_busy(%struct.lan743x_adapter* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %44
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %80

73:                                               ; preds = %44
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %39

77:                                               ; preds = %39
  %78 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %79 = call i32 @lan743x_otp_power_down(%struct.lan743x_adapter* %78)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %71, %32, %25, %17
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @lan743x_otp_power_up(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_otp_wait_till_not_busy(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @lan743x_otp_set_address(%struct.lan743x_adapter*, i64) #1

declare dso_local i32 @lan743x_otp_power_down(%struct.lan743x_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
