; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c_NS8390_trigger_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c_NS8390_trigger_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.ei_device = type { i32 }

@E8390_NODMA = common dso_local global i32 0, align 4
@E8390_PAGE0 = common dso_local global i32 0, align 4
@E8390_CMD = common dso_local global i64 0, align 8
@E8390_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"trigger_send() called with the transmitter busy\0A\00", align 1
@EN0_TCNTLO = common dso_local global i64 0, align 8
@EN0_TCNTHI = common dso_local global i64 0, align 8
@EN0_TPSR = common dso_local global i64 0, align 8
@E8390_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @NS8390_trigger_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NS8390_trigger_send(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ei_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ei_device* @netdev_priv(%struct.net_device* %12)
  store %struct.ei_device* %13, %struct.ei_device** %8, align 8
  %14 = load i32, i32* @E8390_NODMA, align 4
  %15 = load i32, i32* @E8390_PAGE0, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @E8390_CMD, align 8
  %19 = add i64 %17, %18
  %20 = call i32 @ei_outb_p(i32 %16, i64 %19)
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @E8390_CMD, align 8
  %23 = add i64 %21, %22
  %24 = call i32 @ei_inb_p(i64 %23)
  %25 = load i32, i32* @E8390_TRANS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i32 @netdev_warn(%struct.net_device* %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %58

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 255
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @EN0_TCNTLO, align 8
  %36 = add i64 %34, %35
  %37 = call i32 @ei_outb_p(i32 %33, i64 %36)
  %38 = load i32, i32* %5, align 4
  %39 = lshr i32 %38, 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @EN0_TCNTHI, align 8
  %42 = add i64 %40, %41
  %43 = call i32 @ei_outb_p(i32 %39, i64 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @EN0_TPSR, align 8
  %47 = add i64 %45, %46
  %48 = call i32 @ei_outb_p(i32 %44, i64 %47)
  %49 = load i32, i32* @E8390_NODMA, align 4
  %50 = load i32, i32* @E8390_TRANS, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* @E8390_START, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @E8390_CMD, align 8
  %56 = add i64 %54, %55
  %57 = call i32 @ei_outb_p(i32 %53, i64 %56)
  br label %58

58:                                               ; preds = %31, %28
  ret void
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ei_outb_p(i32, i64) #1

declare dso_local i32 @ei_inb_p(i64) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
