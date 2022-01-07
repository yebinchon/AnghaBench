; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_set_promiscuous_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_set_promiscuous_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.mrf24j40* }
%struct.mrf24j40 = type { i32 }

@REG_RXMCR = common dso_local global i32 0, align 4
@BIT_PROMI = common dso_local global i32 0, align 4
@BIT_ERRPKT = common dso_local global i32 0, align 4
@BIT_NOACKRSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i32)* @mrf24j40_set_promiscuous_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrf24j40_set_promiscuous_mode(%struct.ieee802154_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee802154_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrf24j40*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %7, i32 0, i32 0
  %9 = load %struct.mrf24j40*, %struct.mrf24j40** %8, align 8
  store %struct.mrf24j40* %9, %struct.mrf24j40** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  %14 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @REG_RXMCR, align 4
  %17 = load i32, i32* @BIT_PROMI, align 4
  %18 = load i32, i32* @BIT_ERRPKT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BIT_NOACKRSP, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @BIT_PROMI, align 4
  %23 = load i32, i32* @BIT_ERRPKT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BIT_NOACKRSP, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %21, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %39

28:                                               ; preds = %2
  %29 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  %30 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @REG_RXMCR, align 4
  %33 = load i32, i32* @BIT_PROMI, align 4
  %34 = load i32, i32* @BIT_ERRPKT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @BIT_NOACKRSP, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %37, i32 0)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %28, %12
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
