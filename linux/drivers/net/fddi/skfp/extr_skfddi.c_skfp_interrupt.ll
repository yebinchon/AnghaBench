; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_skfp_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_skfp_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s_smc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@B0_IMSK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ISR_A = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @skfp_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skfp_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.s_smc*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.s_smc* @netdev_priv(%struct.net_device* %11)
  store %struct.s_smc* %12, %struct.s_smc** %7, align 8
  %13 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %14 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %13, i32 0, i32 0
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %8, align 8
  %15 = load i32, i32* @B0_IMSK, align 4
  %16 = call i32 @ADDR(i32 %15)
  %17 = call i32 @inpd(i32 %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %2
  %22 = load i32, i32* @ISR_A, align 4
  %23 = call i32 @inpd(i32 %22)
  %24 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %25 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %23, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %57

32:                                               ; preds = %21
  %33 = call i32 (...) @CLI_FBI()
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %38 = call i32 @fddi_isr(%struct.s_smc* %37)
  %39 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %40 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %32
  %45 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %46 = call i32 @ResetAdapter(%struct.s_smc* %45)
  %47 = load i64, i64* @FALSE, align 8
  %48 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %49 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  br label %51

51:                                               ; preds = %44, %32
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = call i32 (...) @STI_FBI()
  %56 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %30, %19
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.s_smc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inpd(i32) #1

declare dso_local i32 @ADDR(i32) #1

declare dso_local i32 @CLI_FBI(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @fddi_isr(%struct.s_smc*) #1

declare dso_local i32 @ResetAdapter(%struct.s_smc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @STI_FBI(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
