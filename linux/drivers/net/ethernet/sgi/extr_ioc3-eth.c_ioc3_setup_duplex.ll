; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_setup_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_setup_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_private = type { i32, i32, %struct.TYPE_2__, %struct.ioc3_ethregs* }
%struct.TYPE_2__ = type { i64 }
%struct.ioc3_ethregs = type { i32, i32 }

@ETCSR_FD = common dso_local global i32 0, align 4
@EMCR_DUPLEX = common dso_local global i32 0, align 4
@ETCSR_HD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc3_private*)* @ioc3_setup_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_setup_duplex(%struct.ioc3_private* %0) #0 {
  %2 = alloca %struct.ioc3_private*, align 8
  %3 = alloca %struct.ioc3_ethregs*, align 8
  store %struct.ioc3_private* %0, %struct.ioc3_private** %2, align 8
  %4 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %5 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %4, i32 0, i32 3
  %6 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %5, align 8
  store %struct.ioc3_ethregs* %6, %struct.ioc3_ethregs** %3, align 8
  %7 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %8 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %11 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @ETCSR_FD, align 4
  %17 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %18 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %17, i32 0, i32 1
  %19 = call i32 @writel(i32 %16, i32* %18)
  %20 = load i32, i32* @EMCR_DUPLEX, align 4
  %21 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %22 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %36

25:                                               ; preds = %1
  %26 = load i32, i32* @ETCSR_HD, align 4
  %27 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %28 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %27, i32 0, i32 1
  %29 = call i32 @writel(i32 %26, i32* %28)
  %30 = load i32, i32* @EMCR_DUPLEX, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %33 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %25, %15
  %37 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %38 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ioc3_ethregs*, %struct.ioc3_ethregs** %3, align 8
  %41 = getelementptr inbounds %struct.ioc3_ethregs, %struct.ioc3_ethregs* %40, i32 0, i32 0
  %42 = call i32 @writel(i32 %39, i32* %41)
  %43 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %44 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_irq(i32* %44)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
