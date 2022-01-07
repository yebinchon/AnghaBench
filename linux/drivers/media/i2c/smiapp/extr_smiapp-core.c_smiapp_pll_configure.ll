; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_pll_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_pll_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { %struct.TYPE_5__, %struct.smiapp_pll }
%struct.TYPE_5__ = type { i64 }
%struct.smiapp_pll = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SMIAPP_REG_U16_VT_PIX_CLK_DIV = common dso_local global i32 0, align 4
@SMIAPP_REG_U16_VT_SYS_CLK_DIV = common dso_local global i32 0, align 4
@SMIAPP_REG_U16_PRE_PLL_CLK_DIV = common dso_local global i32 0, align 4
@SMIAPP_REG_U16_PLL_MULTIPLIER = common dso_local global i32 0, align 4
@SMIAPP_REG_U32_REQUESTED_LINK_BIT_RATE_MBPS = common dso_local global i32 0, align 4
@SMIAPP_PROFILE_0 = common dso_local global i64 0, align 8
@SMIAPP_REG_U16_OP_PIX_CLK_DIV = common dso_local global i32 0, align 4
@SMIAPP_REG_U16_OP_SYS_CLK_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*)* @smiapp_pll_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_pll_configure(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smiapp_sensor*, align 8
  %4 = alloca %struct.smiapp_pll*, align 8
  %5 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %3, align 8
  %6 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %7 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %6, i32 0, i32 1
  store %struct.smiapp_pll* %7, %struct.smiapp_pll** %4, align 8
  %8 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %9 = load i32, i32* @SMIAPP_REG_U16_VT_PIX_CLK_DIV, align 4
  %10 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %11 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @smiapp_write(%struct.smiapp_sensor* %8, i32 %9, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %93

19:                                               ; preds = %1
  %20 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %21 = load i32, i32* @SMIAPP_REG_U16_VT_SYS_CLK_DIV, align 4
  %22 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %23 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @smiapp_write(%struct.smiapp_sensor* %20, i32 %21, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %93

31:                                               ; preds = %19
  %32 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %33 = load i32, i32* @SMIAPP_REG_U16_PRE_PLL_CLK_DIV, align 4
  %34 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %35 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @smiapp_write(%struct.smiapp_sensor* %32, i32 %33, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %93

42:                                               ; preds = %31
  %43 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %44 = load i32, i32* @SMIAPP_REG_U16_PLL_MULTIPLIER, align 4
  %45 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %46 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @smiapp_write(%struct.smiapp_sensor* %43, i32 %44, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %93

53:                                               ; preds = %42
  %54 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %55 = load i32, i32* @SMIAPP_REG_U32_REQUESTED_LINK_BIT_RATE_MBPS, align 4
  %56 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %57 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @DIV_ROUND_UP(i32 %59, i32 15)
  %61 = call i32 @smiapp_write(%struct.smiapp_sensor* %54, i32 %55, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %53
  %65 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %66 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SMIAPP_PROFILE_0, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64, %53
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %93

73:                                               ; preds = %64
  %74 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %75 = load i32, i32* @SMIAPP_REG_U16_OP_PIX_CLK_DIV, align 4
  %76 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %77 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @smiapp_write(%struct.smiapp_sensor* %74, i32 %75, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %93

85:                                               ; preds = %73
  %86 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %87 = load i32, i32* @SMIAPP_REG_U16_OP_SYS_CLK_DIV, align 4
  %88 = load %struct.smiapp_pll*, %struct.smiapp_pll** %4, align 8
  %89 = getelementptr inbounds %struct.smiapp_pll, %struct.smiapp_pll* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @smiapp_write(%struct.smiapp_sensor* %86, i32 %87, i32 %91)
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %85, %83, %71, %51, %40, %29, %17
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @smiapp_write(%struct.smiapp_sensor*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
