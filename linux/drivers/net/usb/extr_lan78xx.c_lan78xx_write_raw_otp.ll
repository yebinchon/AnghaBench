; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_write_raw_otp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_write_raw_otp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32 }

@OTP_PWR_DN = common dso_local global i32 0, align 4
@OTP_PWR_DN_PWRDN_N_ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"timeout on OTP_PWR_DN completion\00", align 1
@EIO = common dso_local global i32 0, align 4
@OTP_PRGM_MODE = common dso_local global i32 0, align 4
@OTP_PRGM_MODE_BYTE_ = common dso_local global i32 0, align 4
@OTP_ADDR1 = common dso_local global i32 0, align 4
@OTP_ADDR1_15_11 = common dso_local global i32 0, align 4
@OTP_ADDR2 = common dso_local global i32 0, align 4
@OTP_ADDR2_10_3 = common dso_local global i32 0, align 4
@OTP_PRGM_DATA = common dso_local global i32 0, align 4
@OTP_TST_CMD = common dso_local global i32 0, align 4
@OTP_TST_CMD_PRGVRFY_ = common dso_local global i32 0, align 4
@OTP_CMD_GO = common dso_local global i32 0, align 4
@OTP_CMD_GO_GO_ = common dso_local global i32 0, align 4
@OTP_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Timeout on OTP_STATUS completion\00", align 1
@OTP_STATUS_BUSY_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*, i32, i32, i32*)* @lan78xx_write_raw_otp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_write_raw_otp(%struct.lan78xx_net* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lan78xx_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
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
  %29 = call i32 @udelay(i32 1)
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
  %41 = call i32 @netdev_warn(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %124

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
  %52 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %53 = load i32, i32* @OTP_PRGM_MODE, align 4
  %54 = load i32, i32* @OTP_PRGM_MODE_BYTE_, align 4
  %55 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %52, i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %120, %51
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %123

60:                                               ; preds = %56
  %61 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %62 = load i32, i32* @OTP_ADDR1, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %63, %64
  %66 = ashr i32 %65, 8
  %67 = load i32, i32* @OTP_ADDR1_15_11, align 4
  %68 = and i32 %66, %67
  %69 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %61, i32 %62, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %71 = load i32, i32* @OTP_ADDR2, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* @OTP_ADDR2_10_3, align 4
  %76 = and i32 %74, %75
  %77 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %70, i32 %71, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %79 = load i32, i32* @OTP_PRGM_DATA, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %78, i32 %79, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %87 = load i32, i32* @OTP_TST_CMD, align 4
  %88 = load i32, i32* @OTP_TST_CMD_PRGVRFY_, align 4
  %89 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %86, i32 %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %91 = load i32, i32* @OTP_CMD_GO, align 4
  %92 = load i32, i32* @OTP_CMD_GO_GO_, align 4
  %93 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %90, i32 %91, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i64, i64* @jiffies, align 8
  %95 = load i64, i64* @HZ, align 8
  %96 = add i64 %94, %95
  store i64 %96, i64* %13, align 8
  br label %97

97:                                               ; preds = %114, %60
  %98 = call i32 @udelay(i32 1)
  %99 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %100 = load i32, i32* @OTP_STATUS, align 4
  %101 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %99, i32 %100, i32* %12)
  store i32 %101, i32* %11, align 4
  %102 = load i64, i64* @jiffies, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call i64 @time_after(i64 %102, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %97
  %107 = load %struct.lan78xx_net*, %struct.lan78xx_net** %6, align 8
  %108 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @netdev_warn(i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %124

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @OTP_STATUS_BUSY_, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %97, label %119

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %56

123:                                              ; preds = %56
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %106, %37
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
