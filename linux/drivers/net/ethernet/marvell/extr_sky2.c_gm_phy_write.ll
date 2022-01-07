; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_gm_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_gm_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GM_SMI_DATA = common dso_local global i32 0, align 4
@GM_SMI_CTRL = common dso_local global i32 0, align 4
@PHY_ADDR_MARV = common dso_local global i32 0, align 4
@PHY_RETRIES = common dso_local global i32 0, align 4
@GM_SMI_CT_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: phy write timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: phy I/O error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sky2_hw*, i32, i32, i32)* @gm_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm_phy_write(%struct.sky2_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sky2_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @GM_SMI_DATA, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @gma_write16(%struct.sky2_hw* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GM_SMI_CTRL, align 4
  %20 = load i32, i32* @PHY_ADDR_MARV, align 4
  %21 = call i32 @GM_SMI_CT_PHY_AD(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @GM_SMI_CT_REG_AD(i32 %22)
  %24 = or i32 %21, %23
  %25 = call i32 @gma_write16(%struct.sky2_hw* %17, i32 %18, i32 %19, i32 %24)
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %46, %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @PHY_RETRIES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @GM_SMI_CTRL, align 4
  %34 = call i32 @gma_read16(%struct.sky2_hw* %31, i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 65535
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %66

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @GM_SMI_CT_BUSY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %83

44:                                               ; preds = %38
  %45 = call i32 @udelay(i32 10)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %26

49:                                               ; preds = %26
  %50 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %51 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %55 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_warn(i32* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @ETIMEDOUT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %83

66:                                               ; preds = %37
  %67 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %68 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %72 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %73, i64 %75
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %66, %49, %43
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @gma_write16(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @GM_SMI_CT_PHY_AD(i32) #1

declare dso_local i32 @GM_SMI_CT_REG_AD(i32) #1

declare dso_local i32 @gma_read16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
