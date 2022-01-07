; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c___gm_phy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c___gm_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GM_SMI_CTRL = common dso_local global i32 0, align 4
@PHY_ADDR_MARV = common dso_local global i32 0, align 4
@GM_SMI_CT_OP_RD = common dso_local global i32 0, align 4
@PHY_RETRIES = common dso_local global i32 0, align 4
@GM_SMI_CT_RD_VAL = common dso_local global i32 0, align 4
@GM_SMI_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: phy read timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: phy I/O error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sky2_hw*, i32, i32, i32*)* @__gm_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gm_phy_read(%struct.sky2_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sky2_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @GM_SMI_CTRL, align 4
  %15 = load i32, i32* @PHY_ADDR_MARV, align 4
  %16 = call i32 @GM_SMI_CT_PHY_AD(i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @GM_SMI_CT_REG_AD(i32 %17)
  %19 = or i32 %16, %18
  %20 = load i32, i32* @GM_SMI_CT_OP_RD, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @gma_write16(%struct.sky2_hw* %12, i32 %13, i32 %14, i32 %21)
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %48, %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @PHY_RETRIES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @GM_SMI_CTRL, align 4
  %31 = call i32 @gma_read16(%struct.sky2_hw* %28, i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 65535
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %68

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @GM_SMI_CT_RD_VAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @GM_SMI_DATA, align 4
  %44 = call i32 @gma_read16(%struct.sky2_hw* %41, i32 %42, i32 %43)
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %5, align 4
  br label %85

46:                                               ; preds = %35
  %47 = call i32 @udelay(i32 10)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %23

51:                                               ; preds = %23
  %52 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %53 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %57 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %58, i64 %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_warn(i32* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ETIMEDOUT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %85

68:                                               ; preds = %34
  %69 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %70 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %74 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %75, i64 %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %68, %51, %40
  %86 = load i32, i32* %5, align 4
  ret i32 %86
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
