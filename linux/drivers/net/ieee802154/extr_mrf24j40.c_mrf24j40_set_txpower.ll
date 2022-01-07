; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_set_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.mrf24j40* }
%struct.mrf24j40 = type { i32 }

@TXPWRL_0 = common dso_local global i32 0, align 4
@TXPWRL_SHIFT = common dso_local global i32 0, align 4
@TXPWRL_10 = common dso_local global i32 0, align 4
@TXPWRL_20 = common dso_local global i32 0, align 4
@TXPWRL_30 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TXPWRS_0 = common dso_local global i32 0, align 4
@TXPWRS_SHIFT = common dso_local global i32 0, align 4
@TXPWRS_0_5 = common dso_local global i32 0, align 4
@TXPWRS_1_2 = common dso_local global i32 0, align 4
@TXPWRS_1_9 = common dso_local global i32 0, align 4
@TXPWRS_2_8 = common dso_local global i32 0, align 4
@TXPWRS_3_7 = common dso_local global i32 0, align 4
@TXPWRS_4_9 = common dso_local global i32 0, align 4
@TXPWRS_6_3 = common dso_local global i32 0, align 4
@REG_RFCON3 = common dso_local global i32 0, align 4
@TXPWRL_MASK = common dso_local global i32 0, align 4
@TXPWRS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i32)* @mrf24j40_set_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrf24j40_set_txpower(%struct.ieee802154_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mrf24j40*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %9, i32 0, i32 0
  %11 = load %struct.mrf24j40*, %struct.mrf24j40** %10, align 8
  store %struct.mrf24j40* %11, %struct.mrf24j40** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sge i32 0, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, -1000
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* @TXPWRL_0, align 4
  %19 = load i32, i32* @TXPWRL_SHIFT, align 4
  %20 = shl i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %7, align 4
  br label %64

22:                                               ; preds = %14, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 -1000, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, -2000
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* @TXPWRL_10, align 4
  %30 = load i32, i32* @TXPWRL_SHIFT, align 4
  %31 = shl i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1000
  store i32 %33, i32* %7, align 4
  br label %63

34:                                               ; preds = %25, %22
  %35 = load i32, i32* %5, align 4
  %36 = icmp sge i32 -2000, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, -3000
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* @TXPWRL_20, align 4
  %42 = load i32, i32* @TXPWRL_SHIFT, align 4
  %43 = shl i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 2000
  store i32 %45, i32* %7, align 4
  br label %62

46:                                               ; preds = %37, %34
  %47 = load i32, i32* %5, align 4
  %48 = icmp sge i32 -3000, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, -4000
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* @TXPWRL_30, align 4
  %54 = load i32, i32* @TXPWRL_SHIFT, align 4
  %55 = shl i32 %53, %54
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 3000
  store i32 %57, i32* %7, align 4
  br label %61

58:                                               ; preds = %49, %46
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %127

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %40
  br label %63

63:                                               ; preds = %62, %28
  br label %64

64:                                               ; preds = %63, %17
  %65 = load i32, i32* %7, align 4
  switch i32 %65, label %114 [
    i32 0, label %66
    i32 -50, label %72
    i32 -120, label %78
    i32 -190, label %84
    i32 -280, label %90
    i32 -370, label %96
    i32 -490, label %102
    i32 -630, label %108
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* @TXPWRS_0, align 4
  %68 = load i32, i32* @TXPWRS_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %117

72:                                               ; preds = %64
  %73 = load i32, i32* @TXPWRS_0_5, align 4
  %74 = load i32, i32* @TXPWRS_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %117

78:                                               ; preds = %64
  %79 = load i32, i32* @TXPWRS_1_2, align 4
  %80 = load i32, i32* @TXPWRS_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %117

84:                                               ; preds = %64
  %85 = load i32, i32* @TXPWRS_1_9, align 4
  %86 = load i32, i32* @TXPWRS_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %117

90:                                               ; preds = %64
  %91 = load i32, i32* @TXPWRS_2_8, align 4
  %92 = load i32, i32* @TXPWRS_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  br label %117

96:                                               ; preds = %64
  %97 = load i32, i32* @TXPWRS_3_7, align 4
  %98 = load i32, i32* @TXPWRS_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  br label %117

102:                                              ; preds = %64
  %103 = load i32, i32* @TXPWRS_4_9, align 4
  %104 = load i32, i32* @TXPWRS_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %117

108:                                              ; preds = %64
  %109 = load i32, i32* @TXPWRS_6_3, align 4
  %110 = load i32, i32* @TXPWRS_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %8, align 4
  br label %117

114:                                              ; preds = %64
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %127

117:                                              ; preds = %108, %102, %96, %90, %84, %78, %72, %66
  %118 = load %struct.mrf24j40*, %struct.mrf24j40** %6, align 8
  %119 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @REG_RFCON3, align 4
  %122 = load i32, i32* @TXPWRL_MASK, align 4
  %123 = load i32, i32* @TXPWRS_MASK, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @regmap_update_bits(i32 %120, i32 %121, i32 %124, i32 %125)
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %117, %114, %58
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
