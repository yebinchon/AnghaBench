; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_reset_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_reset_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftgmac100 = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }

@FTGMAC100_OFFSET_MACCR = common dso_local global i64 0, align 8
@FTGMAC100_MACCR_SW_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Hardware reset failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftgmac100*, i32)* @ftgmac100_reset_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_reset_mac(%struct.ftgmac100* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ftgmac100*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ftgmac100* %0, %struct.ftgmac100** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %10 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %14 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FTGMAC100_OFFSET_MACCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @iowrite32(i32 %12, i64 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @FTGMAC100_MACCR_SW_RST, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %23 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FTGMAC100_OFFSET_MACCR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @iowrite32(i32 %21, i64 %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %45, %2
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 200
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.ftgmac100*, %struct.ftgmac100** %4, align 8
  %33 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FTGMAC100_OFFSET_MACCR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @ioread32(i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @FTGMAC100_MACCR_SW_RST, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %53

43:                                               ; preds = %31
  %44 = call i32 @udelay(i32 1)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %28

48:                                               ; preds = %28
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = call i32 @netdev_err(%struct.net_device* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %42
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
