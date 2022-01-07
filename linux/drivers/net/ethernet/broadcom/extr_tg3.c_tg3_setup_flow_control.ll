; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_setup_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_setup_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@USE_PHYLIB = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@TG3_PHYFLG_ANY_SERDES = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i64 0, align 8
@RX_MODE_FLOW_CTRL_ENABLE = common dso_local global i32 0, align 4
@MAC_RX_MODE = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i64 0, align 8
@TX_MODE_FLOW_CTRL_ENABLE = common dso_local global i32 0, align 4
@MAC_TX_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32, i32)* @tg3_setup_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_setup_flow_control(%struct.tg3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %11 = load %struct.tg3*, %struct.tg3** %4, align 8
  %12 = getelementptr inbounds %struct.tg3, %struct.tg3* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.tg3*, %struct.tg3** %4, align 8
  %15 = getelementptr inbounds %struct.tg3, %struct.tg3* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.tg3*, %struct.tg3** %4, align 8
  %18 = load i32, i32* @USE_PHYLIB, align 4
  %19 = call i64 @tg3_flag(%struct.tg3* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.tg3*, %struct.tg3** %4, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tg3*, %struct.tg3** %4, align 8
  %26 = getelementptr inbounds %struct.tg3, %struct.tg3* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_4__* @mdiobus_get_phy(i32 %24, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  br label %36

31:                                               ; preds = %3
  %32 = load %struct.tg3*, %struct.tg3** %4, align 8
  %33 = getelementptr inbounds %struct.tg3, %struct.tg3* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %31, %21
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @AUTONEG_ENABLE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = load %struct.tg3*, %struct.tg3** %4, align 8
  %42 = load i32, i32* @PAUSE_AUTONEG, align 4
  %43 = call i64 @tg3_flag(%struct.tg3* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = load %struct.tg3*, %struct.tg3** %4, align 8
  %47 = getelementptr inbounds %struct.tg3, %struct.tg3* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @TG3_PHYFLG_ANY_SERDES, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @tg3_resolve_flowctrl_1000X(i32 %53, i32 %54)
  store i64 %55, i64* %8, align 8
  br label %60

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @mii_resolve_flowctrl_fdx(i32 %57, i32 %58)
  store i64 %59, i64* %8, align 8
  br label %60

60:                                               ; preds = %56, %52
  br label %66

61:                                               ; preds = %40, %36
  %62 = load %struct.tg3*, %struct.tg3** %4, align 8
  %63 = getelementptr inbounds %struct.tg3, %struct.tg3* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %61, %60
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.tg3*, %struct.tg3** %4, align 8
  %69 = getelementptr inbounds %struct.tg3, %struct.tg3* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @FLOW_CTRL_RX, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load i32, i32* @RX_MODE_FLOW_CTRL_ENABLE, align 4
  %77 = load %struct.tg3*, %struct.tg3** %4, align 8
  %78 = getelementptr inbounds %struct.tg3, %struct.tg3* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %88

81:                                               ; preds = %66
  %82 = load i32, i32* @RX_MODE_FLOW_CTRL_ENABLE, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.tg3*, %struct.tg3** %4, align 8
  %85 = getelementptr inbounds %struct.tg3, %struct.tg3* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %81, %75
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.tg3*, %struct.tg3** %4, align 8
  %91 = getelementptr inbounds %struct.tg3, %struct.tg3* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i32, i32* @MAC_RX_MODE, align 4
  %96 = load %struct.tg3*, %struct.tg3** %4, align 8
  %97 = getelementptr inbounds %struct.tg3, %struct.tg3* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @tw32_f(i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %94, %88
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* @FLOW_CTRL_TX, align 8
  %103 = and i64 %101, %102
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i32, i32* @TX_MODE_FLOW_CTRL_ENABLE, align 4
  %107 = load %struct.tg3*, %struct.tg3** %4, align 8
  %108 = getelementptr inbounds %struct.tg3, %struct.tg3* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %118

111:                                              ; preds = %100
  %112 = load i32, i32* @TX_MODE_FLOW_CTRL_ENABLE, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.tg3*, %struct.tg3** %4, align 8
  %115 = getelementptr inbounds %struct.tg3, %struct.tg3* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %111, %105
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.tg3*, %struct.tg3** %4, align 8
  %121 = getelementptr inbounds %struct.tg3, %struct.tg3* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %119, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load i32, i32* @MAC_TX_MODE, align 4
  %126 = load %struct.tg3*, %struct.tg3** %4, align 8
  %127 = getelementptr inbounds %struct.tg3, %struct.tg3* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @tw32_f(i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %124, %118
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local %struct.TYPE_4__* @mdiobus_get_phy(i32, i32) #1

declare dso_local i64 @tg3_resolve_flowctrl_1000X(i32, i32) #1

declare dso_local i64 @mii_resolve_flowctrl_fdx(i32, i32) #1

declare dso_local i32 @tw32_f(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
