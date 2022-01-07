; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_emac_interrupt_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_emac_interrupt_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ravb_private = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ECSR = common dso_local global i32 0, align 4
@ECSR_MPD = common dso_local global i32 0, align 4
@ECSR_ICD = common dso_local global i32 0, align 4
@ECSR_LCHNG = common dso_local global i32 0, align 4
@PSR = common dso_local global i32 0, align 4
@PSR_LMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ravb_emac_interrupt_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ravb_emac_interrupt_unlocked(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ravb_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %6)
  store %struct.ravb_private* %7, %struct.ravb_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = load i32, i32* @ECSR, align 4
  %10 = call i32 @ravb_read(%struct.net_device* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ECSR, align 4
  %14 = call i32 @ravb_write(%struct.net_device* %11, i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ECSR_MPD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %21 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @pm_wakeup_event(i32* %23, i32 0)
  br label %25

25:                                               ; preds = %19, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @ECSR_ICD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ECSR_LCHNG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %36
  %42 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %43 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %71

47:                                               ; preds = %41
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = load i32, i32* @PSR, align 4
  %50 = call i32 @ravb_read(%struct.net_device* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %52 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i32, i32* @PSR_LMON, align 4
  %57 = load i32, i32* %5, align 4
  %58 = xor i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %47
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @PSR_LMON, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = call i32 @ravb_rcv_snd_disable(%struct.net_device* %65)
  br label %70

67:                                               ; preds = %59
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = call i32 @ravb_rcv_snd_enable(%struct.net_device* %68)
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %46, %70, %36
  ret void
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ravb_read(%struct.net_device*, i32) #1

declare dso_local i32 @ravb_write(%struct.net_device*, i32, i32) #1

declare dso_local i32 @pm_wakeup_event(i32*, i32) #1

declare dso_local i32 @ravb_rcv_snd_disable(%struct.net_device*) #1

declare dso_local i32 @ravb_rcv_snd_enable(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
