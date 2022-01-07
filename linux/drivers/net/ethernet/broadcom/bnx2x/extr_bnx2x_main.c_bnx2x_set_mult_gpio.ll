; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_mult_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_mult_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@HW_LOCK_RESOURCE_GPIO = common dso_local global i32 0, align 4
@MISC_REG_GPIO = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_FLOAT_POS = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_CLR_POS = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_SET_POS = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Set GPIO 0x%x -> output low\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Set GPIO 0x%x -> output high\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Set GPIO 0x%x -> input\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid GPIO mode assignment %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_set_mult_gpio(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %10 = load i32, i32* @HW_LOCK_RESOURCE_GPIO, align 4
  %11 = call i32 @bnx2x_acquire_hw_lock(%struct.bnx2x* %9, i32 %10)
  %12 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %13 = load i32, i32* @MISC_REG_GPIO, align 4
  %14 = call i32 @REG_RD(%struct.bnx2x* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MISC_REGISTERS_GPIO_FLOAT_POS, align 4
  %17 = shl i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MISC_REGISTERS_GPIO_CLR_POS, align 4
  %23 = shl i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MISC_REGISTERS_GPIO_SET_POS, align 4
  %29 = shl i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %61 [
    i32 128, label %34
    i32 129, label %43
    i32 130, label %52
  ]

34:                                               ; preds = %3
  %35 = load i32, i32* @NETIF_MSG_LINK, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @DP(i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MISC_REGISTERS_GPIO_CLR_POS, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %66

43:                                               ; preds = %3
  %44 = load i32, i32* @NETIF_MSG_LINK, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @DP(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MISC_REGISTERS_GPIO_SET_POS, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %66

52:                                               ; preds = %3
  %53 = load i32, i32* @NETIF_MSG_LINK, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @DP(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MISC_REGISTERS_GPIO_FLOAT_POS, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %66

61:                                               ; preds = %3
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %61, %52, %43, %34
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %71 = load i32, i32* @MISC_REG_GPIO, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @REG_WR(%struct.bnx2x* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %66
  %75 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %76 = load i32, i32* @HW_LOCK_RESOURCE_GPIO, align 4
  %77 = call i32 @bnx2x_release_hw_lock(%struct.bnx2x* %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @bnx2x_acquire_hw_lock(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_release_hw_lock(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
