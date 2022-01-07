; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_update_flowcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_update_flowcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@FLOW_CR_TX_FCEN_ = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@FLOW_CR_RX_FCEN_ = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"rx pause %s, tx pause %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@FCT_FLOW = common dso_local global i32 0, align 4
@FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*, i32, i32, i32)* @lan78xx_update_flowcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_update_flowcontrol(%struct.lan78xx_net* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lan78xx_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %14 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @mii_resolve_flowctrl_fdx(i32 %18, i32 %19)
  store i32 %20, i32* %12, align 4
  br label %25

21:                                               ; preds = %4
  %22 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %23 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @FLOW_CTRL_TX, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @FLOW_CR_TX_FCEN_, align 4
  %32 = or i32 %31, 65535
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @FLOW_CTRL_RX, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @FLOW_CR_RX_FCEN_, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %46 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @USB_SPEED_SUPER, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 2071, i32* %10, align 4
  br label %63

53:                                               ; preds = %44
  %54 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %55 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @USB_SPEED_HIGH, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 529, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %53
  br label %63

63:                                               ; preds = %62, %52
  %64 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %65 = load i32, i32* @link, align 4
  %66 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %67 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @FLOW_CTRL_RX, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @FLOW_CTRL_TX, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %81 = call i32 @netif_dbg(%struct.lan78xx_net* %64, i32 %65, i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %74, i8* %80)
  %82 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %83 = load i32, i32* @FCT_FLOW, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %82, i32 %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %87 = load i32, i32* @FLOW, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %86, i32 %87, i32 %88)
  store i32 %89, i32* %11, align 4
  ret i32 0
}

declare dso_local i32 @mii_resolve_flowctrl_fdx(i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.lan78xx_net*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
