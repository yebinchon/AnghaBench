; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_pcnet_reset_8390.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_pcnet_reset_8390.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.net_device = type { i32 }

@ei_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@E8390_NODMA = common dso_local global i32 0, align 4
@E8390_PAGE0 = common dso_local global i32 0, align 4
@E8390_STOP = common dso_local global i32 0, align 4
@E8390_CMD = common dso_local global i64 0, align 8
@PCNET_RESET = common dso_local global i64 0, align 8
@EN0_ISR = common dso_local global i64 0, align 8
@ENISR_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"pcnet_reset_8390() did not complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @pcnet_reset_8390 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcnet_reset_8390(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 8
  %8 = load i32, i32* @E8390_NODMA, align 4
  %9 = load i32, i32* @E8390_PAGE0, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* @E8390_STOP, align 4
  %12 = add nsw i32 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* @E8390_CMD, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outb_p(i32 %12, i64 %16)
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* @PCNET_RESET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @inb(i64 %21)
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* @PCNET_RESET, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outb(i32 %22, i64 %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %43, %1
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 100
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* @EN0_ISR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @inb_p(i64 %35)
  %37 = load i32, i32* @ENISR_RESET, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %46

41:                                               ; preds = %31
  %42 = call i32 @udelay(i32 100)
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %28

46:                                               ; preds = %40, %28
  %47 = load i32, i32* @ENISR_RESET, align 4
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* @EN0_ISR, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb_p(i32 %47, i64 %51)
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 100
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = call i32 @netdev_err(%struct.net_device* %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %46
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = call i32 @set_misc_reg(%struct.net_device* %59)
  ret void
}

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @set_misc_reg(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
