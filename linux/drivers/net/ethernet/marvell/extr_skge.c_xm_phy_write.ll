; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_xm_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_xm_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i32 }

@XM_PHY_ADDR = common dso_local global i32 0, align 4
@PHY_RETRIES = common dso_local global i32 0, align 4
@XM_MMU_CMD = common dso_local global i32 0, align 4
@XM_MMU_PHY_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XM_PHY_DATA = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skge_hw*, i32, i32, i32)* @xm_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xm_phy_write(%struct.skge_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.skge_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @XM_PHY_ADDR, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %16 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %14, %17
  %19 = call i32 @xm_write16(%struct.skge_hw* %11, i32 %12, i32 %13, i32 %18)
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %35, %4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @PHY_RETRIES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @XM_MMU_CMD, align 4
  %28 = call i32 @xm_read16(%struct.skge_hw* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @XM_MMU_PHY_BUSY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %41

33:                                               ; preds = %24
  %34 = call i32 @udelay(i32 1)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %68

41:                                               ; preds = %32
  %42 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @XM_PHY_DATA, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @xm_write16(%struct.skge_hw* %42, i32 %43, i32 %44, i32 %45)
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %62, %41
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @PHY_RETRIES, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @XM_MMU_CMD, align 4
  %55 = call i32 @xm_read16(%struct.skge_hw* %52, i32 %53, i32 %54)
  %56 = load i32, i32* @XM_MMU_PHY_BUSY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %68

60:                                               ; preds = %51
  %61 = call i32 @udelay(i32 1)
  br label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %47

65:                                               ; preds = %47
  %66 = load i32, i32* @ETIMEDOUT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %59, %38
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @xm_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @xm_read16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
