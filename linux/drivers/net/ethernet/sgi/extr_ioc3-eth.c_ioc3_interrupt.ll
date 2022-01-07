; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_private = type { %struct.ioc3_ethregs* }
%struct.ioc3_ethregs = type { i32 }

@EISR_RXOFLO = common dso_local global i32 0, align 4
@EISR_RXBUFOFLO = common dso_local global i32 0, align 4
@EISR_RXMEMERR = common dso_local global i32 0, align 4
@EISR_RXPARERR = common dso_local global i32 0, align 4
@EISR_TXBUFUFLO = common dso_local global i32 0, align 4
@EISR_TXMEMERR = common dso_local global i32 0, align 4
@EISR_RXTIMERINT = common dso_local global i32 0, align 4
@EISR_TXEXPLICIT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ioc3_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc3_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ioc3_private*, align 8
  %6 = alloca %struct.ioc3_ethregs*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.ioc3_private* @netdev_priv(i8* %8)
  store %struct.ioc3_private* %9, %struct.ioc3_private** %5, align 8
  %10 = load %struct.ioc3_private*, %struct.ioc3_private** %5, align 8
  %11 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %10, i32 0, i32 0
  %12 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %11, align 8
  store %struct.ioc3_ethregs* %12, %struct.ioc3_ethregs** %6, align 8
  %13 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %6, align 8
  %14 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %13, i32 0, i32 0
  %15 = call i32 @readl(i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %6, align 8
  %18 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %17, i32 0, i32 0
  %19 = call i32 @writel(i32 %16, i32* %18)
  %20 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %6, align 8
  %21 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %20, i32 0, i32 0
  %22 = call i32 @readl(i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @EISR_RXOFLO, align 4
  %25 = load i32, i32* @EISR_RXBUFOFLO, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @EISR_RXMEMERR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @EISR_RXPARERR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @EISR_TXBUFUFLO, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @EISR_TXMEMERR, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %23, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ioc3_error(i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %2
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @EISR_RXTIMERINT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @ioc3_rx(i8* %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @EISR_TXEXPLICIT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @ioc3_tx(i8* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %58
}

declare dso_local %struct.ioc3_private* @netdev_priv(i8*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @ioc3_error(i8*, i32) #1

declare dso_local i32 @ioc3_rx(i8*) #1

declare dso_local i32 @ioc3_tx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
