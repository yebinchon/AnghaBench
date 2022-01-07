; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_ethtool_flow_to_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_ethtool_flow_to_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLOW_EXT = common dso_local global i32 0, align 4
@FLOW_MAC_EXT = common dso_local global i32 0, align 4
@FLOW_RSS = common dso_local global i32 0, align 4
@MVPP22_FLOW_ETHERNET = common dso_local global i32 0, align 4
@MVPP22_FLOW_TCP4 = common dso_local global i32 0, align 4
@MVPP22_FLOW_TCP6 = common dso_local global i32 0, align 4
@MVPP22_FLOW_UDP4 = common dso_local global i32 0, align 4
@MVPP22_FLOW_UDP6 = common dso_local global i32 0, align 4
@MVPP22_FLOW_IP4 = common dso_local global i32 0, align 4
@MVPP22_FLOW_IP6 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mvpp2_cls_ethtool_flow_to_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_cls_ethtool_flow_to_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @FLOW_EXT, align 4
  %6 = load i32, i32* @FLOW_MAC_EXT, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @FLOW_RSS, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = and i32 %4, %10
  switch i32 %11, label %26 [
    i32 134, label %12
    i32 131, label %14
    i32 130, label %16
    i32 129, label %18
    i32 128, label %20
    i32 133, label %22
    i32 132, label %24
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @MVPP22_FLOW_ETHERNET, align 4
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load i32, i32* @MVPP22_FLOW_TCP4, align 4
  store i32 %15, i32* %2, align 4
  br label %29

16:                                               ; preds = %1
  %17 = load i32, i32* @MVPP22_FLOW_TCP6, align 4
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load i32, i32* @MVPP22_FLOW_UDP4, align 4
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %1
  %21 = load i32, i32* @MVPP22_FLOW_UDP6, align 4
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %1
  %23 = load i32, i32* @MVPP22_FLOW_IP4, align 4
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @MVPP22_FLOW_IP6, align 4
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %24, %22, %20, %18, %16, %14, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
