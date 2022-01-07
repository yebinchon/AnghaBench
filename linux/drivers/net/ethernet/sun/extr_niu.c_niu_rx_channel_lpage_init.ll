; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_rx_channel_lpage_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_rx_channel_lpage_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i64 }

@RX_LOG_PAGE_VLD_FUNC_SHIFT = common dso_local global i32 0, align 4
@RX_LOG_PAGE_VLD_PAGE0 = common dso_local global i32 0, align 4
@RX_LOG_PAGE_VLD_PAGE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32)* @niu_rx_channel_lpage_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_rx_channel_lpage_init(%struct.niu* %0, i32 %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @RX_LOG_MASK1(i32 %6)
  %8 = call i32 @nw64(i32 %7, i32 0)
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @RX_LOG_VAL1(i32 %9)
  %11 = call i32 @nw64(i32 %10, i32 0)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @RX_LOG_MASK2(i32 %12)
  %14 = call i32 @nw64(i32 %13, i32 0)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @RX_LOG_VAL2(i32 %15)
  %17 = call i32 @nw64(i32 %16, i32 0)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @RX_LOG_PAGE_RELO1(i32 %18)
  %20 = call i32 @nw64(i32 %19, i32 0)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @RX_LOG_PAGE_RELO2(i32 %21)
  %23 = call i32 @nw64(i32 %22, i32 0)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @RX_LOG_PAGE_HDL(i32 %24)
  %26 = call i32 @nw64(i32 %25, i32 0)
  %27 = load %struct.niu*, %struct.niu** %3, align 8
  %28 = getelementptr inbounds %struct.niu, %struct.niu* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @RX_LOG_PAGE_VLD_FUNC_SHIFT, align 4
  %32 = shl i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @RX_LOG_PAGE_VLD_PAGE0, align 4
  %34 = load i32, i32* @RX_LOG_PAGE_VLD_PAGE1, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @RX_LOG_PAGE_VLD(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @nw64(i32 %39, i32 %40)
  ret i32 0
}

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @RX_LOG_MASK1(i32) #1

declare dso_local i32 @RX_LOG_VAL1(i32) #1

declare dso_local i32 @RX_LOG_MASK2(i32) #1

declare dso_local i32 @RX_LOG_VAL2(i32) #1

declare dso_local i32 @RX_LOG_PAGE_RELO1(i32) #1

declare dso_local i32 @RX_LOG_PAGE_RELO2(i32) #1

declare dso_local i32 @RX_LOG_PAGE_HDL(i32) #1

declare dso_local i32 @RX_LOG_PAGE_VLD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
