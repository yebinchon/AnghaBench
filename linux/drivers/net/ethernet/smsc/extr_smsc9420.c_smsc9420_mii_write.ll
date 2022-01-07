; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_mii_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_mii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i64 }
%struct.smsc9420_pdata = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@MII_ACCESS = common dso_local global i32 0, align 4
@MII_ACCESS_MII_BUSY_ = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"MII is busy???\0A\00", align 1
@MII_DATA = common dso_local global i32 0, align 4
@MII_ACCESS_MII_WRITE_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"MII busy timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i64)* @smsc9420_mii_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_mii_write(%struct.mii_bus* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.smsc9420_pdata*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %15 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.smsc9420_pdata*
  store %struct.smsc9420_pdata* %17, %struct.smsc9420_pdata** %9, align 8
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %13, align 4
  %20 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %21 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %20, i32 0, i32 0
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %25 = load i32, i32* @MII_ACCESS, align 4
  %26 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %24, i32 %25)
  %27 = load i32, i32* @MII_ACCESS_MII_BUSY_, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %32 = load i32, i32* @drv, align 4
  %33 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %34 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @netif_warn(%struct.smsc9420_pdata* %31, i32 %32, i32 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %79

37:                                               ; preds = %4
  %38 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %39 = load i32, i32* @MII_DATA, align 4
  %40 = load i64, i64* %8, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %38, i32 %39, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 31
  %45 = shl i32 %44, 11
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 31
  %48 = shl i32 %47, 6
  %49 = or i32 %45, %48
  %50 = load i32, i32* @MII_ACCESS_MII_WRITE_, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %11, align 4
  %52 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %53 = load i32, i32* @MII_ACCESS, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %52, i32 %53, i32 %54)
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %69, %37
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 5
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %61 = load i32, i32* @MII_ACCESS, align 4
  %62 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %60, i32 %61)
  %63 = load i32, i32* @MII_ACCESS_MII_BUSY_, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  store i32 0, i32* %13, align 4
  br label %79

67:                                               ; preds = %59
  %68 = call i32 @udelay(i32 10)
  br label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %56

72:                                               ; preds = %56
  %73 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %74 = load i32, i32* @drv, align 4
  %75 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %76 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @netif_warn(%struct.smsc9420_pdata* %73, i32 %74, i32 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %72, %66, %30
  %80 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %81 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %80, i32 0, i32 0
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i32, i32* %13, align 4
  ret i32 %84
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @netif_warn(%struct.smsc9420_pdata*, i32, i32, i8*) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
