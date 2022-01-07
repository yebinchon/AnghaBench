; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_mdio_10g.c_ef4_mdio_wait_reset_mmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_mdio_10g.c_ef4_mdio_wait_reset_mmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }

@MDIO45_RESET_TIME = common dso_local global i32 0, align 4
@MDIO45_RESET_ITERS = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to read status of MMD %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MDIO_CTRL1_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"not all MMDs came out of reset in time. MMDs still in reset: %x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_mdio_wait_reset_mmds(%struct.ef4_nic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ef4_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @MDIO45_RESET_TIME, align 4
  %14 = load i32, i32* @MDIO45_RESET_ITERS, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @MDIO45_RESET_ITERS, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %66, %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %57, %20
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @MDIO_CTRL1, align 4
  %33 = call i32 @ef4_mdio_read(%struct.ef4_nic* %30, i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %38 = load i32, i32* @hw, align 4
  %39 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %40 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @netif_err(%struct.ef4_nic* %37, i32 %38, i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %86

46:                                               ; preds = %29
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @MDIO_CTRL1_RESET, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %56, %25
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %22

62:                                               ; preds = %22
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %71

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @msleep(i32 %69)
  br label %17

71:                                               ; preds = %65, %17
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %76 = load i32, i32* @hw, align 4
  %77 = load %struct.ef4_nic*, %struct.ef4_nic** %4, align 8
  %78 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @netif_err(%struct.ef4_nic* %75, i32 %76, i32 %79, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ETIMEDOUT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %74, %71
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %36
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @ef4_mdio_read(%struct.ef4_nic*, i32, i32) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
