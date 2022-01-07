; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.mrf24j40* }
%struct.mrf24j40 = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Set Channel %d\0A\00", align 1
@MRF24J40_CHAN_MIN = common dso_local global i64 0, align 8
@MRF24J40_CHAN_MAX = common dso_local global i64 0, align 8
@RFCON0_CH_SHIFT = common dso_local global i64 0, align 8
@RFOPT_RECOMMEND = common dso_local global i64 0, align 8
@REG_RFCON0 = common dso_local global i32 0, align 4
@RFCON0_CH_MASK = common dso_local global i64 0, align 8
@REG_RFCTL = common dso_local global i32 0, align 4
@BIT_RFRST = common dso_local global i64 0, align 8
@SET_CHANNEL_DELAY_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i64, i64)* @mrf24j40_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrf24j40_set_channel(%struct.ieee802154_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee802154_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mrf24j40*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %11, i32 0, i32 0
  %13 = load %struct.mrf24j40*, %struct.mrf24j40** %12, align 8
  store %struct.mrf24j40* %13, %struct.mrf24j40** %8, align 8
  %14 = load %struct.mrf24j40*, %struct.mrf24j40** %8, align 8
  %15 = call i32 @printdev(%struct.mrf24j40* %14)
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @MRF24J40_CHAN_MIN, align 8
  %24 = icmp slt i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @MRF24J40_CHAN_MAX, align 8
  %29 = icmp sgt i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = sub nsw i64 %32, 11
  %34 = load i64, i64* @RFCON0_CH_SHIFT, align 8
  %35 = shl i64 %33, %34
  %36 = load i64, i64* @RFOPT_RECOMMEND, align 8
  %37 = or i64 %35, %36
  store i64 %37, i64* %9, align 8
  %38 = load %struct.mrf24j40*, %struct.mrf24j40** %8, align 8
  %39 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @REG_RFCON0, align 4
  %42 = load i64, i64* @RFCON0_CH_MASK, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @regmap_update_bits(i32 %40, i32 %41, i64 %42, i64 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %75

49:                                               ; preds = %3
  %50 = load %struct.mrf24j40*, %struct.mrf24j40** %8, align 8
  %51 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @REG_RFCTL, align 4
  %54 = load i64, i64* @BIT_RFRST, align 8
  %55 = load i64, i64* @BIT_RFRST, align 8
  %56 = call i32 @regmap_update_bits(i32 %52, i32 %53, i64 %54, i64 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %75

61:                                               ; preds = %49
  %62 = load %struct.mrf24j40*, %struct.mrf24j40** %8, align 8
  %63 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @REG_RFCTL, align 4
  %66 = load i64, i64* @BIT_RFRST, align 8
  %67 = call i32 @regmap_update_bits(i32 %64, i32 %65, i64 %66, i64 0)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @SET_CHANNEL_DELAY_US, align 4
  %72 = call i32 @udelay(i32 %71)
  br label %73

73:                                               ; preds = %70, %61
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %59, %47
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @printdev(%struct.mrf24j40*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i64, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
