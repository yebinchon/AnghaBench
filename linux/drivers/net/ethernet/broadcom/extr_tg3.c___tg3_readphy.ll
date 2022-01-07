; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c___tg3_readphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c___tg3_readphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32 }

@MAC_MI_MODE_AUTO_POLL = common dso_local global i32 0, align 4
@MAC_MI_MODE = common dso_local global i32 0, align 4
@MI_COM_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@MI_COM_PHY_ADDR_MASK = common dso_local global i32 0, align 4
@MI_COM_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@MI_COM_REG_ADDR_MASK = common dso_local global i32 0, align 4
@MI_COM_CMD_READ = common dso_local global i32 0, align 4
@MI_COM_START = common dso_local global i32 0, align 4
@MAC_MI_COM = common dso_local global i32 0, align 4
@PHY_BUSY_LOOPS = common dso_local global i32 0, align 4
@MI_COM_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MI_COM_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32, i32, i32*)* @__tg3_readphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tg3_readphy(%struct.tg3* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.tg3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.tg3*, %struct.tg3** %5, align 8
  %13 = getelementptr inbounds %struct.tg3, %struct.tg3* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MAC_MI_MODE_AUTO_POLL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load i32, i32* @MAC_MI_MODE, align 4
  %20 = load %struct.tg3*, %struct.tg3** %5, align 8
  %21 = getelementptr inbounds %struct.tg3, %struct.tg3* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MAC_MI_MODE_AUTO_POLL, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @tw32_f(i32 %19, i32 %25)
  %27 = call i32 @udelay(i32 80)
  br label %28

28:                                               ; preds = %18, %4
  %29 = load %struct.tg3*, %struct.tg3** %5, align 8
  %30 = load %struct.tg3*, %struct.tg3** %5, align 8
  %31 = getelementptr inbounds %struct.tg3, %struct.tg3* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @tg3_ape_lock(%struct.tg3* %29, i32 %32)
  %34 = load i32*, i32** %8, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MI_COM_PHY_ADDR_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @MI_COM_PHY_ADDR_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MI_COM_REG_ADDR_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* @MI_COM_REG_ADDR_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @MI_COM_CMD_READ, align 4
  %48 = load i32, i32* @MI_COM_START, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @MAC_MI_COM, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @tw32_f(i32 %52, i32 %53)
  %55 = load i32, i32* @PHY_BUSY_LOOPS, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %71, %28
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = call i32 @udelay(i32 10)
  %61 = load i32, i32* @MAC_MI_COM, align 4
  %62 = call i32 @tr32(i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @MI_COM_BUSY, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = call i32 @udelay(i32 5)
  %69 = load i32, i32* @MAC_MI_COM, align 4
  %70 = call i32 @tr32(i32 %69)
  store i32 %70, i32* %9, align 4
  br label %74

71:                                               ; preds = %59
  %72 = load i32, i32* %10, align 4
  %73 = sub i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %56

74:                                               ; preds = %67, %56
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @MI_COM_DATA_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32*, i32** %8, align 8
  store i32 %82, i32* %83, align 4
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.tg3*, %struct.tg3** %5, align 8
  %86 = getelementptr inbounds %struct.tg3, %struct.tg3* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MAC_MI_MODE_AUTO_POLL, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load i32, i32* @MAC_MI_MODE, align 4
  %93 = load %struct.tg3*, %struct.tg3** %5, align 8
  %94 = getelementptr inbounds %struct.tg3, %struct.tg3* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @tw32_f(i32 %92, i32 %95)
  %97 = call i32 @udelay(i32 80)
  br label %98

98:                                               ; preds = %91, %84
  %99 = load %struct.tg3*, %struct.tg3** %5, align 8
  %100 = load %struct.tg3*, %struct.tg3** %5, align 8
  %101 = getelementptr inbounds %struct.tg3, %struct.tg3* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @tg3_ape_unlock(%struct.tg3* %99, i32 %102)
  %104 = load i32, i32* %11, align 4
  ret i32 %104
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
