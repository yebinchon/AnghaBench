; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_gm_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_gm_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

@GM_SMI_DATA = common dso_local global i32 0, align 4
@GM_SMI_CTRL = common dso_local global i32 0, align 4
@PHY_RETRIES = common dso_local global i32 0, align 4
@GM_SMI_CT_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: phy write timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skge_hw*, i32, i32, i32)* @gm_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm_phy_write(%struct.skge_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %13 = load i32, i32* @GM_SMI_DATA, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @gma_write16(%struct.skge_hw* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @GM_SMI_CTRL, align 4
  %19 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %20 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @GM_SMI_CT_PHY_AD(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @GM_SMI_CT_REG_AD(i32 %23)
  %25 = or i32 %22, %24
  %26 = call i32 @gma_write16(%struct.skge_hw* %16, i32 %17, i32 %18, i32 %25)
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %42, %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @PHY_RETRIES, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = call i32 @udelay(i32 1)
  %33 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @GM_SMI_CTRL, align 4
  %36 = call i32 @gma_read16(%struct.skge_hw* %33, i32 %34, i32 %35)
  %37 = load i32, i32* @GM_SMI_CT_BUSY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %58

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %27

45:                                               ; preds = %27
  %46 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %47 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %48, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %45, %40
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @gma_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @GM_SMI_CT_PHY_AD(i32) #1

declare dso_local i32 @GM_SMI_CT_REG_AD(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gma_read16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
