; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cas = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INTR_ERROR_MASK = common dso_local global i32 0, align 4
@INTR_RX_BUF_UNAVAIL = common dso_local global i32 0, align 4
@INTR_RX_BUF_AE = common dso_local global i32 0, align 4
@INTR_RX_COMP_AF = common dso_local global i32 0, align 4
@INTR_RX_COMP_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.cas*, i32)* @cas_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_handle_irq(%struct.net_device* %0, %struct.cas* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.cas*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.cas* %1, %struct.cas** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @INTR_ERROR_MASK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = load %struct.cas*, %struct.cas** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @cas_abnormal_irq(%struct.net_device* %12, %struct.cas* %13, i32 %14)
  br label %16

16:                                               ; preds = %11, %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @INTR_RX_BUF_UNAVAIL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load %struct.cas*, %struct.cas** %5, align 8
  %23 = call i32 @cas_post_rxds_ringN(%struct.cas* %22, i32 0, i64 0)
  %24 = load %struct.cas*, %struct.cas** %5, align 8
  %25 = getelementptr inbounds %struct.cas, %struct.cas* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.cas*, %struct.cas** %5, align 8
  %30 = getelementptr inbounds %struct.cas, %struct.cas* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.cas*, %struct.cas** %5, align 8
  %37 = getelementptr inbounds %struct.cas, %struct.cas* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @spin_unlock(i32* %39)
  br label %53

41:                                               ; preds = %16
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @INTR_RX_BUF_AE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.cas*, %struct.cas** %5, align 8
  %48 = call i64 @RX_DESC_RINGN_SIZE(i32 0)
  %49 = call i64 @RX_AE_FREEN_VAL(i32 0)
  %50 = sub nsw i64 %48, %49
  %51 = call i32 @cas_post_rxds_ringN(%struct.cas* %47, i32 0, i64 %50)
  br label %52

52:                                               ; preds = %46, %41
  br label %53

53:                                               ; preds = %52, %21
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @INTR_RX_COMP_AF, align 4
  %56 = load i32, i32* @INTR_RX_COMP_FULL, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = load %struct.cas*, %struct.cas** %5, align 8
  %63 = call i32 @cas_post_rxcs_ringN(%struct.net_device* %61, %struct.cas* %62, i32 0)
  br label %64

64:                                               ; preds = %60, %53
  ret void
}

declare dso_local i32 @cas_abnormal_irq(%struct.net_device*, %struct.cas*, i32) #1

declare dso_local i32 @cas_post_rxds_ringN(%struct.cas*, i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @RX_DESC_RINGN_SIZE(i32) #1

declare dso_local i64 @RX_AE_FREEN_VAL(i32) #1

declare dso_local i32 @cas_post_rxcs_ringN(%struct.net_device*, %struct.cas*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
