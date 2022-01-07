; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_otp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_otp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32 }

@MAX_OTP_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OTP_READ_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*, i64, i64, i32*)* @lan743x_otp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_otp_read(%struct.lan743x_adapter* %0, i64 %1, i64 %2, i32* %3) #0 {
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
  br label %69

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
  br label %69

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
  br label %69

34:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %8, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %35
  %41 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = call i32 @lan743x_otp_set_address(%struct.lan743x_adapter* %41, i64 %45)
  %47 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %48 = call i32 @lan743x_otp_read_go(%struct.lan743x_adapter* %47)
  %49 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %50 = call i32 @lan743x_otp_wait_till_not_busy(%struct.lan743x_adapter* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %69

55:                                               ; preds = %40
  %56 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %57 = load i32, i32* @OTP_READ_DATA, align 4
  %58 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %56, i32 %57)
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %35

66:                                               ; preds = %35
  %67 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %6, align 8
  %68 = call i32 @lan743x_otp_power_down(%struct.lan743x_adapter* %67)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %53, %32, %25, %17
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @lan743x_otp_power_up(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_otp_wait_till_not_busy(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_otp_set_address(%struct.lan743x_adapter*, i64) #1

declare dso_local i32 @lan743x_otp_read_go(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @lan743x_otp_power_down(%struct.lan743x_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
