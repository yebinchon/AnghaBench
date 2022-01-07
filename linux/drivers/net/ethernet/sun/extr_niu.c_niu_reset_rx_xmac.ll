; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_reset_rx_xmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_reset_rx_xmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32 }

@XRXMAC_SW_RST = common dso_local global i32 0, align 4
@XRXMAC_SW_RST_REG_RS = common dso_local global i32 0, align 4
@XRXMAC_SW_RST_SOFT_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Port %u RX XMAC would not reset, XRXMAC_SW_RST[%llx]\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_reset_rx_xmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_reset_rx_xmac(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %5 = load i32, i32* @XRXMAC_SW_RST, align 4
  %6 = load i32, i32* @XRXMAC_SW_RST_REG_RS, align 4
  %7 = load i32, i32* @XRXMAC_SW_RST_SOFT_RST, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @nw64_mac(i32 %5, i32 %8)
  store i32 1000, i32* %4, align 4
  br label %10

10:                                               ; preds = %23, %1
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i32, i32* @XRXMAC_SW_RST, align 4
  %16 = call i32 @nr64_mac(i32 %15)
  %17 = load i32, i32* @XRXMAC_SW_RST_REG_RS, align 4
  %18 = load i32, i32* @XRXMAC_SW_RST_SOFT_RST, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %25

23:                                               ; preds = %14
  %24 = call i32 @udelay(i32 100)
  br label %10

25:                                               ; preds = %22, %10
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load %struct.niu*, %struct.niu** %3, align 8
  %30 = getelementptr inbounds %struct.niu, %struct.niu* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.niu*, %struct.niu** %3, align 8
  %33 = getelementptr inbounds %struct.niu, %struct.niu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @XRXMAC_SW_RST, align 4
  %36 = call i32 @nr64_mac(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %34, i64 %37)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @nw64_mac(i32, i32) #1

declare dso_local i32 @nr64_mac(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
