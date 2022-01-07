; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ravb_private = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@ISS = common dso_local global i32 0, align 4
@ISS_FRS = common dso_local global i32 0, align 4
@ISS_FTS = common dso_local global i32 0, align 4
@ISS_TFUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@RAVB_NC = common dso_local global i32 0, align 4
@RAVB_BE = common dso_local global i32 0, align 4
@ISS_MS = common dso_local global i32 0, align 4
@ISS_ES = common dso_local global i32 0, align 4
@ISS_CGIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ravb_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ravb_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %12)
  store %struct.ravb_private* %13, %struct.ravb_private** %6, align 8
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %16 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = load i32, i32* @ISS, align 4
  %20 = call i32 @ravb_read(%struct.net_device* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ISS_FRS, align 4
  %23 = load i32, i32* @ISS_FTS, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ISS_TFUS, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %21, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %2
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call i64 @ravb_timestamp_interrupt(%struct.net_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* @RAVB_NC, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %49, %35
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @RAVB_BE, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @ravb_queue_interrupt(%struct.net_device* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %41
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %9, align 4
  br label %37

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ISS_MS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = call i32 @ravb_emac_interrupt_unlocked(%struct.net_device* %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ISS_ES, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = call i32 @ravb_error_interrupt(%struct.net_device* %68)
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @ISS_CGIS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = call i32 @ravb_ptp_interrupt(%struct.net_device* %77)
  %79 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %82 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ravb_read(%struct.net_device*, i32) #1

declare dso_local i64 @ravb_timestamp_interrupt(%struct.net_device*) #1

declare dso_local i64 @ravb_queue_interrupt(%struct.net_device*, i32) #1

declare dso_local i32 @ravb_emac_interrupt_unlocked(%struct.net_device*) #1

declare dso_local i32 @ravb_error_interrupt(%struct.net_device*) #1

declare dso_local i32 @ravb_ptp_interrupt(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
