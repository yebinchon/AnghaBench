; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_spio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_spio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@MISC_SPIO_SPIO4 = common dso_local global i32 0, align 4
@MISC_SPIO_SPIO5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid SPIO 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HW_LOCK_RESOURCE_SPIO = common dso_local global i32 0, align 4
@MISC_REG_SPIO = common dso_local global i32 0, align 4
@MISC_SPIO_FLOAT = common dso_local global i32 0, align 4
@NETIF_MSG_HW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Set SPIO 0x%x -> output low\0A\00", align 1
@MISC_SPIO_FLOAT_POS = common dso_local global i32 0, align 4
@MISC_SPIO_CLR_POS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Set SPIO 0x%x -> output high\0A\00", align 1
@MISC_SPIO_SET_POS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Set SPIO 0x%x -> input\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32)* @bnx2x_set_spio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_spio(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @MISC_SPIO_SPIO4, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MISC_SPIO_SPIO5, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %79

21:                                               ; preds = %12, %3
  %22 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %23 = load i32, i32* @HW_LOCK_RESOURCE_SPIO, align 4
  %24 = call i32 @bnx2x_acquire_hw_lock(%struct.bnx2x* %22, i32 %23)
  %25 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %26 = load i32, i32* @MISC_REG_SPIO, align 4
  %27 = call i32 @REG_RD(%struct.bnx2x* %25, i32 %26)
  %28 = load i32, i32* @MISC_SPIO_FLOAT, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %70 [
    i32 128, label %31
    i32 129, label %46
    i32 130, label %61
  ]

31:                                               ; preds = %21
  %32 = load i32, i32* @NETIF_MSG_HW, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @DP(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MISC_SPIO_FLOAT_POS, align 4
  %37 = shl i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MISC_SPIO_CLR_POS, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %71

46:                                               ; preds = %21
  %47 = load i32, i32* @NETIF_MSG_HW, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @DP(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @MISC_SPIO_FLOAT_POS, align 4
  %52 = shl i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @MISC_SPIO_SET_POS, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %71

61:                                               ; preds = %21
  %62 = load i32, i32* @NETIF_MSG_HW, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @DP(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @MISC_SPIO_FLOAT_POS, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %71

70:                                               ; preds = %21
  br label %71

71:                                               ; preds = %70, %61, %46, %31
  %72 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %73 = load i32, i32* @MISC_REG_SPIO, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @REG_WR(%struct.bnx2x* %72, i32 %73, i32 %74)
  %76 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %77 = load i32, i32* @HW_LOCK_RESOURCE_SPIO, align 4
  %78 = call i32 @bnx2x_release_hw_lock(%struct.bnx2x* %76, i32 %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %71, %16
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @bnx2x_acquire_hw_lock(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_release_hw_lock(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
