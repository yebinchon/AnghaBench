; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_reset_rx_bmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_reset_rx_bmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32 }

@BRXMAC_SW_RST = common dso_local global i32 0, align 4
@BRXMAC_SW_RST_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Port %u RX BMAC would not reset, BRXMAC_SW_RST[%llx]\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_reset_rx_bmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_reset_rx_bmac(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %5 = load i32, i32* @BRXMAC_SW_RST, align 4
  %6 = load i32, i32* @BRXMAC_SW_RST_RESET, align 4
  %7 = call i32 @nw64_mac(i32 %5, i32 %6)
  store i32 1000, i32* %4, align 4
  br label %8

8:                                                ; preds = %19, %1
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i32, i32* @BRXMAC_SW_RST, align 4
  %14 = call i32 @nr64_mac(i32 %13)
  %15 = load i32, i32* @BRXMAC_SW_RST_RESET, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %21

19:                                               ; preds = %12
  %20 = call i32 @udelay(i32 100)
  br label %8

21:                                               ; preds = %18, %8
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.niu*, %struct.niu** %3, align 8
  %26 = getelementptr inbounds %struct.niu, %struct.niu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.niu*, %struct.niu** %3, align 8
  %29 = getelementptr inbounds %struct.niu, %struct.niu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BRXMAC_SW_RST, align 4
  %32 = call i32 @nr64_mac(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %2, align 4
  ret i32 %39
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
