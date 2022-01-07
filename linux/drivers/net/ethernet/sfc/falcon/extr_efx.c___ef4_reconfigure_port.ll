; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c___ef4_reconfigure_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_efx.c___ef4_reconfigure_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@PHY_MODE_TX_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ef4_reconfigure_port(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %5 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %6 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %5, i32 0, i32 2
  %7 = call i32 @mutex_is_locked(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %13 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %16 = call i64 @LOOPBACK_INTERNAL(%struct.ef4_nic* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @PHY_MODE_TX_DISABLED, align 4
  %20 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %21 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %31

24:                                               ; preds = %1
  %25 = load i32, i32* @PHY_MODE_TX_DISABLED, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %28 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %33 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.ef4_nic*)**
  %37 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %36, align 8
  %38 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %39 = call i32 %37(%struct.ef4_nic* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %45 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %31
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i64 @LOOPBACK_INTERNAL(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
