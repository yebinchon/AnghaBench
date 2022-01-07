; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_etherh.c_etherh_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_etherh.c_etherh_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32 }
%struct.ei_device = type { i64 }

@__ei_interrupt = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@IFF_AUTOMEDIA = common dso_local global i32 0, align 4
@IF_PORT_10BASET = common dso_local global i32 0, align 4
@IF_PORT_10BASE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @etherh_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etherh_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ei_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.ei_device* @netdev_priv(%struct.net_device* %5)
  store %struct.ei_device* %6, %struct.ei_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @__ei_interrupt, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i64 @request_irq(i32 %9, i32 %10, i32 0, i32 %13, %struct.net_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %54

20:                                               ; preds = %1
  %21 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %22 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_AUTOMEDIA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %20
  %30 = load i32, i32* @IF_PORT_10BASET, align 4
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @etherh_setif(%struct.net_device* %33)
  %35 = call i32 @mdelay(i32 1)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @etherh_getifstat(%struct.net_device* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @IF_PORT_10BASE2, align 4
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call i32 @etherh_setif(%struct.net_device* %43)
  br label %45

45:                                               ; preds = %39, %29
  br label %49

46:                                               ; preds = %20
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @etherh_setif(%struct.net_device* %47)
  br label %49

49:                                               ; preds = %46, %45
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @etherh_reset(%struct.net_device* %50)
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @__ei_open(%struct.net_device* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %17
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @etherh_setif(%struct.net_device*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @etherh_getifstat(%struct.net_device*) #1

declare dso_local i32 @etherh_reset(%struct.net_device*) #1

declare dso_local i32 @__ei_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
