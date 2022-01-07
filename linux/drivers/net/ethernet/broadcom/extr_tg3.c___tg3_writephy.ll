; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c___tg3_writephy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c___tg3_writephy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, i32 }

@TG3_PHYFLG_IS_FET = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@MII_TG3_AUX_CTRL = common dso_local global i32 0, align 4
@MAC_MI_MODE_AUTO_POLL = common dso_local global i32 0, align 4
@MAC_MI_MODE = common dso_local global i32 0, align 4
@MI_COM_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@MI_COM_PHY_ADDR_MASK = common dso_local global i32 0, align 4
@MI_COM_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@MI_COM_REG_ADDR_MASK = common dso_local global i32 0, align 4
@MI_COM_DATA_MASK = common dso_local global i32 0, align 4
@MI_COM_CMD_WRITE = common dso_local global i32 0, align 4
@MI_COM_START = common dso_local global i32 0, align 4
@MAC_MI_COM = common dso_local global i32 0, align 4
@PHY_BUSY_LOOPS = common dso_local global i32 0, align 4
@MI_COM_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32, i32, i32)* @__tg3_writephy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tg3_writephy(%struct.tg3* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tg3*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.tg3*, %struct.tg3** %6, align 8
  %14 = getelementptr inbounds %struct.tg3, %struct.tg3* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TG3_PHYFLG_IS_FET, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @MII_CTRL1000, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MII_TG3_AUX_CTRL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  store i32 0, i32* %5, align 4
  br label %122

28:                                               ; preds = %23, %4
  %29 = load %struct.tg3*, %struct.tg3** %6, align 8
  %30 = getelementptr inbounds %struct.tg3, %struct.tg3* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MAC_MI_MODE_AUTO_POLL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load i32, i32* @MAC_MI_MODE, align 4
  %37 = load %struct.tg3*, %struct.tg3** %6, align 8
  %38 = getelementptr inbounds %struct.tg3, %struct.tg3* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MAC_MI_MODE_AUTO_POLL, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = call i32 @tw32_f(i32 %36, i32 %42)
  %44 = call i32 @udelay(i32 80)
  br label %45

45:                                               ; preds = %35, %28
  %46 = load %struct.tg3*, %struct.tg3** %6, align 8
  %47 = load %struct.tg3*, %struct.tg3** %6, align 8
  %48 = getelementptr inbounds %struct.tg3, %struct.tg3* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @tg3_ape_lock(%struct.tg3* %46, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MI_COM_PHY_ADDR_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* @MI_COM_PHY_ADDR_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MI_COM_REG_ADDR_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* @MI_COM_REG_ADDR_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @MI_COM_DATA_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @MI_COM_CMD_WRITE, align 4
  %69 = load i32, i32* @MI_COM_START, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* @MAC_MI_COM, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @tw32_f(i32 %73, i32 %74)
  %76 = load i32, i32* @PHY_BUSY_LOOPS, align 4
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %92, %45
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = call i32 @udelay(i32 10)
  %82 = load i32, i32* @MAC_MI_COM, align 4
  %83 = call i32 @tr32(i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @MI_COM_BUSY, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = call i32 @udelay(i32 5)
  %90 = load i32, i32* @MAC_MI_COM, align 4
  %91 = call i32 @tr32(i32 %90)
  store i32 %91, i32* %10, align 4
  br label %95

92:                                               ; preds = %80
  %93 = load i32, i32* %11, align 4
  %94 = sub i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %77

95:                                               ; preds = %88, %77
  %96 = load i32, i32* @EBUSY, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %100, %95
  %102 = load %struct.tg3*, %struct.tg3** %6, align 8
  %103 = getelementptr inbounds %struct.tg3, %struct.tg3* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MAC_MI_MODE_AUTO_POLL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load i32, i32* @MAC_MI_MODE, align 4
  %110 = load %struct.tg3*, %struct.tg3** %6, align 8
  %111 = getelementptr inbounds %struct.tg3, %struct.tg3* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @tw32_f(i32 %109, i32 %112)
  %114 = call i32 @udelay(i32 80)
  br label %115

115:                                              ; preds = %108, %101
  %116 = load %struct.tg3*, %struct.tg3** %6, align 8
  %117 = load %struct.tg3*, %struct.tg3** %6, align 8
  %118 = getelementptr inbounds %struct.tg3, %struct.tg3* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @tg3_ape_unlock(%struct.tg3* %116, i32 %119)
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %115, %27
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @tw32_f(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tg3_ape_lock(%struct.tg3*, i32) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tg3_ape_unlock(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
