; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@REG_STATUS = common dso_local global i32 0, align 4
@STAT_INTRX = common dso_local global i32 0, align 4
@CMD_ACKINTRX = common dso_local global i32 0, align 4
@REG_COMMAND = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@STAT_INTTX = common dso_local global i32 0, align 4
@CMD_ACKINTTX = common dso_local global i32 0, align 4
@DEBUG_INT = common dso_local global i32 0, align 4
@net_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ether3_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether3_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load i32, i32* @IRQ_NONE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @REG_STATUS, align 4
  %12 = call i32 @ether3_inw(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @STAT_INTRX, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load i32, i32* @CMD_ACKINTRX, align 4
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.TYPE_4__* @priv(%struct.net_device* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %18, %23
  %25 = load i32, i32* @REG_COMMAND, align 4
  %26 = call i32 @ether3_outw(i32 %24, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @ether3_rx(%struct.net_device* %27, i32 12)
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %17, %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @STAT_INTTX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load i32, i32* @CMD_ACKINTTX, align 4
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = call %struct.TYPE_4__* @priv(%struct.net_device* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %36, %41
  %43 = load i32, i32* @REG_COMMAND, align 4
  %44 = call i32 @ether3_outw(i32 %42, i32 %43)
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = call i32 @ether3_tx(%struct.net_device* %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %35, %30
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @ether3_inw(i32) #1

declare dso_local i32 @ether3_outw(i32, i32) #1

declare dso_local %struct.TYPE_4__* @priv(%struct.net_device*) #1

declare dso_local i32 @ether3_rx(%struct.net_device*, i32) #1

declare dso_local i32 @ether3_tx(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
