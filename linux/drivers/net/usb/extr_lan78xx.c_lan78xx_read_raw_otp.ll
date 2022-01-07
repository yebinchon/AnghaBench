; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_read_raw_otp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_read_raw_otp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32 }

@OTP_PWR_DN = common dso_local global i32 0, align 4
@OTP_PWR_DN_PWRDN_N_ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"timeout on OTP_PWR_DN\00", align 1
@EIO = common dso_local global i32 0, align 4
@OTP_ADDR1 = common dso_local global i32 0, align 4
@OTP_ADDR1_15_11 = common dso_local global i32 0, align 4
@OTP_ADDR2 = common dso_local global i32 0, align 4
@OTP_ADDR2_10_3 = common dso_local global i32 0, align 4
@OTP_FUNC_CMD = common dso_local global i32 0, align 4
@OTP_FUNC_CMD_READ_ = common dso_local global i32 0, align 4
@OTP_CMD_GO = common dso_local global i32 0, align 4
@OTP_CMD_GO_GO_ = common dso_local global i32 0, align 4
@OTP_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"timeout on OTP_STATUS\00", align 1
@OTP_STATUS_BUSY_ = common dso_local global i32 0, align 4
@OTP_RD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*, i32, i32, i64*)* @lan78xx_read_raw_otp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_read_raw_otp(%struct.lan78xx_net* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lan78xx_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %14 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %15 = load i32, i32* @OTP_PWR_DN, align 4
  %16 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %14, i32 %15, i32* %12)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @OTP_PWR_DN_PWRDN_N_, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %4
  %22 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %23 = load i32, i32* @OTP_PWR_DN, align 4
  %24 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %22, i32 %23, i32 0)
  store i32 %24, i32* %11, align 4
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i64, i64* @HZ, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %13, align 8
  br label %28

28:                                               ; preds = %45, %21
  %29 = call i32 @usleep_range(i32 1, i32 10)
  %30 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %31 = load i32, i32* @OTP_PWR_DN, align 4
  %32 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %30, i32 %31, i32* %12)
  store i32 %32, i32* %11, align 4
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* %13, align 8
  %35 = call i64 @time_after(i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %39 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netdev_warn(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %122

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @OTP_PWR_DN_PWRDN_N_, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %28, label %50

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %4
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %118, %51
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %121

56:                                               ; preds = %52
  %57 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %58 = load i32, i32* @OTP_ADDR1, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %59, %60
  %62 = ashr i32 %61, 8
  %63 = load i32, i32* @OTP_ADDR1_15_11, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %57, i32 %58, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %67 = load i32, i32* @OTP_ADDR2, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* @OTP_ADDR2_10_3, align 4
  %72 = and i32 %70, %71
  %73 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %66, i32 %67, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %75 = load i32, i32* @OTP_FUNC_CMD, align 4
  %76 = load i32, i32* @OTP_FUNC_CMD_READ_, align 4
  %77 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %74, i32 %75, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %79 = load i32, i32* @OTP_CMD_GO, align 4
  %80 = load i32, i32* @OTP_CMD_GO_GO_, align 4
  %81 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %78, i32 %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i64, i64* @jiffies, align 8
  %83 = load i64, i64* @HZ, align 8
  %84 = add i64 %82, %83
  store i64 %84, i64* %13, align 8
  br label %85

85:                                               ; preds = %102, %56
  %86 = call i32 @udelay(i32 1)
  %87 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %88 = load i32, i32* @OTP_STATUS, align 4
  %89 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %87, i32 %88, i32* %12)
  store i32 %89, i32* %11, align 4
  %90 = load i64, i64* @jiffies, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i64 @time_after(i64 %90, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %85
  %95 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %96 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @netdev_warn(i32 %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %122

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @OTP_STATUS_BUSY_, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %85, label %107

107:                                              ; preds = %102
  %108 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %109 = load i32, i32* @OTP_RD_DATA, align 4
  %110 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %108, i32 %109, i32* %12)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = and i32 %111, 255
  %113 = sext i32 %112 to i64
  %114 = load i64*, i64** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %114, i64 %116
  store i64 %113, i64* %117, align 8
  br label %118

118:                                              ; preds = %107
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %52

121:                                              ; preds = %52
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %94, %37
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
