; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_multi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_multi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ravb_private = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@ISS = common dso_local global i32 0, align 4
@ISS_TFUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ISS_ES = common dso_local global i32 0, align 4
@ISS_CGIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ravb_multi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_multi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ravb_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %11)
  store %struct.ravb_private* %12, %struct.ravb_private** %6, align 8
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %15 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load i32, i32* @ISS, align 4
  %19 = call i32 @ravb_read(%struct.net_device* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @ISS_TFUS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i64 @ravb_timestamp_interrupt(%struct.net_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %24, %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ISS_ES, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i32 @ravb_error_interrupt(%struct.net_device* %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @ISS_CGIS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = call i32 @ravb_ptp_interrupt(%struct.net_device* %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %50 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ravb_read(%struct.net_device*, i32) #1

declare dso_local i64 @ravb_timestamp_interrupt(%struct.net_device*) #1

declare dso_local i32 @ravb_error_interrupt(%struct.net_device*) #1

declare dso_local i32 @ravb_ptp_interrupt(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
