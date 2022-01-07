; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_isr_indicate_association_lost.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_isr_indicate_association_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IPW_DL_NOTIF = common dso_local global i32 0, align 4
@IPW_DL_STATE = common dso_local global i32 0, align 4
@IPW_DL_ASSOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"disassociated: '%*pE' %pM\0A\00", align 1
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@STATUS_ASSOCIATING = common dso_local global i32 0, align 4
@STATUS_STOPPING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Card is stopping itself, discard ASSN_LOST.\0A\00", align 1
@STATUS_RUNNING = common dso_local global i32 0, align 4
@STATUS_SECURITY_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw2100_priv*, i32)* @isr_indicate_association_lost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isr_indicate_association_lost(%struct.ipw2100_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @IPW_DL_NOTIF, align 4
  %6 = load i32, i32* @IPW_DL_STATE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @IPW_DL_ASSOC, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @IPW_DEBUG(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18)
  %20 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %21 = load i32, i32* @STATUS_ASSOCIATING, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %25 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @STATUS_STOPPING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %77

36:                                               ; preds = %2
  %37 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @eth_zero_addr(i32 %39)
  %41 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %42 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @eth_zero_addr(i32 %45)
  %47 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @netif_carrier_off(i32 %49)
  %51 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %52 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @netif_stop_queue(i32 %53)
  %55 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %56 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @STATUS_RUNNING, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %36
  br label %77

62:                                               ; preds = %36
  %63 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %64 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @STATUS_SECURITY_UPDATED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %71 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %70, i32 0, i32 2
  %72 = call i32 @schedule_delayed_work(i32* %71, i32 0)
  br label %73

73:                                               ; preds = %69, %62
  %74 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %75 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %74, i32 0, i32 1
  %76 = call i32 @schedule_delayed_work(i32* %75, i32 0)
  br label %77

77:                                               ; preds = %73, %61, %34
  ret void
}

declare dso_local i32 @IPW_DEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
