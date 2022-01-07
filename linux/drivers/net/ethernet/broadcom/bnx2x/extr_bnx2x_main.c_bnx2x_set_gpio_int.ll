; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_gpio_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_gpio_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@NIG_REG_PORT_SWAP = common dso_local global i32 0, align 4
@NIG_REG_STRAP_OVERRIDE = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_PORT_SHIFT = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid GPIO %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HW_LOCK_RESOURCE_GPIO = common dso_local global i32 0, align 4
@MISC_REG_GPIO_INT = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Clear GPIO INT %d (shift %d) -> output low\0A\00", align 1
@MISC_REGISTERS_GPIO_INT_SET_POS = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_INT_CLR_POS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Set GPIO INT %d (shift %d) -> output high\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_set_gpio_int(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %15 = load i32, i32* @NIG_REG_PORT_SWAP, align 4
  %16 = call i32 @REG_RD(%struct.bnx2x* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %20 = load i32, i32* @NIG_REG_STRAP_OVERRIDE, align 4
  %21 = call i32 @REG_RD(%struct.bnx2x* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %18, %4
  %24 = phi i1 [ false, %4 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %9, align 4
  %27 = xor i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @MISC_REGISTERS_GPIO_PORT_SHIFT, align 4
  br label %34

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = add nsw i32 %28, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = shl i32 1, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @MISC_REGISTERS_GPIO_3, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %96

47:                                               ; preds = %34
  %48 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %49 = load i32, i32* @HW_LOCK_RESOURCE_GPIO, align 4
  %50 = call i32 @bnx2x_acquire_hw_lock(%struct.bnx2x* %48, i32 %49)
  %51 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %52 = load i32, i32* @MISC_REG_GPIO_INT, align 4
  %53 = call i32 @REG_RD(%struct.bnx2x* %51, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %8, align 4
  switch i32 %54, label %87 [
    i32 129, label %55
    i32 128, label %71
  ]

55:                                               ; preds = %47
  %56 = load i32, i32* @NETIF_MSG_LINK, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @DP(i32 %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @MISC_REGISTERS_GPIO_INT_SET_POS, align 4
  %62 = shl i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %13, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @MISC_REGISTERS_GPIO_INT_CLR_POS, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* %13, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %13, align 4
  br label %88

71:                                               ; preds = %47
  %72 = load i32, i32* @NETIF_MSG_LINK, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @DP(i32 %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @MISC_REGISTERS_GPIO_INT_CLR_POS, align 4
  %78 = shl i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %13, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @MISC_REGISTERS_GPIO_INT_SET_POS, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* %13, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %13, align 4
  br label %88

87:                                               ; preds = %47
  br label %88

88:                                               ; preds = %87, %71, %55
  %89 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %90 = load i32, i32* @MISC_REG_GPIO_INT, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @REG_WR(%struct.bnx2x* %89, i32 %90, i32 %91)
  %93 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %94 = load i32, i32* @HW_LOCK_RESOURCE_GPIO, align 4
  %95 = call i32 @bnx2x_release_hw_lock(%struct.bnx2x* %93, i32 %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %88, %42
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @bnx2x_acquire_hw_lock(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_release_hw_lock(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
