; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_stop_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_stop_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.hp100_private = type { i32 }

@HP100_INT_EN = common dso_local global i32 0, align 4
@HP100_RESET_LB = common dso_local global i32 0, align 4
@HP100_TRI_INT = common dso_local global i32 0, align 4
@HP100_MMAP_DIS = common dso_local global i32 0, align 4
@HP100_SET_HB = common dso_local global i32 0, align 4
@OPTION_LSW = common dso_local global i32 0, align 4
@MAC_CTRL = common dso_local global i32 0, align 4
@HP100_RX_EN = common dso_local global i32 0, align 4
@HP100_TX_EN = common dso_local global i32 0, align 4
@MAC_CFG_1 = common dso_local global i32 0, align 4
@HP100_HW_RST = common dso_local global i32 0, align 4
@HP100_TX_IDLE = common dso_local global i32 0, align 4
@HP100_RX_IDLE = common dso_local global i32 0, align 4
@PERFORMANCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"hp100: %s: hp100_stop_interface - timeout\0A\00", align 1
@TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hp100_stop_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hp100_stop_interface(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hp100_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.hp100_private* @netdev_priv(%struct.net_device* %6)
  store %struct.hp100_private* %7, %struct.hp100_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %12 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @hp100_BM_shutdown(%struct.net_device* %16)
  br label %74

18:                                               ; preds = %1
  %19 = load i32, i32* @HP100_INT_EN, align 4
  %20 = load i32, i32* @HP100_RESET_LB, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @HP100_TRI_INT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @HP100_MMAP_DIS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @HP100_SET_HB, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @OPTION_LSW, align 4
  %29 = call i32 @hp100_outw(i32 %27, i32 %28)
  %30 = load i32, i32* @OPTION_LSW, align 4
  %31 = call i32 @hp100_inw(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @MAC_CTRL, align 4
  %33 = call i32 @hp100_page(i32 %32)
  %34 = load i32, i32* @HP100_RX_EN, align 4
  %35 = load i32, i32* @HP100_TX_EN, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* @MAC_CFG_1, align 4
  %39 = call i32 @hp100_andb(i32 %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @HP100_HW_RST, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %18
  br label %74

45:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %64, %45
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 6000
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load i32, i32* @MAC_CFG_1, align 4
  %51 = call i32 @hp100_inb(i32 %50)
  %52 = load i32, i32* @HP100_TX_IDLE, align 4
  %53 = load i32, i32* @HP100_RX_IDLE, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = load i32, i32* @HP100_TX_IDLE, align 4
  %57 = load i32, i32* @HP100_RX_IDLE, align 4
  %58 = or i32 %56, %57
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* @PERFORMANCE, align 4
  %62 = call i32 @hp100_page(i32 %61)
  br label %74

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %46

67:                                               ; preds = %46
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @PERFORMANCE, align 4
  %73 = call i32 @hp100_page(i32 %72)
  br label %74

74:                                               ; preds = %44, %60, %67, %15
  ret void
}

declare dso_local %struct.hp100_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hp100_BM_shutdown(%struct.net_device*) #1

declare dso_local i32 @hp100_outw(i32, i32) #1

declare dso_local i32 @hp100_inw(i32) #1

declare dso_local i32 @hp100_page(i32) #1

declare dso_local i32 @hp100_andb(i32, i32) #1

declare dso_local i32 @hp100_inb(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
