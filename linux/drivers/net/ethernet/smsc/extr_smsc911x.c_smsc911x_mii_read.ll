; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_mii_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_mii_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i64 }
%struct.smsc911x_data = type { i32 }

@MII_ACC = common dso_local global i32 0, align 4
@MII_ACC_MII_BUSY_ = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MII is busy in smsc911x_mii_read???\00", align 1
@EIO = common dso_local global i32 0, align 4
@MII_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Timed out waiting for MII read to finish\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @smsc911x_mii_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_mii_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.smsc911x_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smsc911x_data*
  store %struct.smsc911x_data* %15, %struct.smsc911x_data** %7, align 8
  %16 = load %struct.smsc911x_data*, %struct.smsc911x_data** %7, align 8
  %17 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %16, i32 0, i32 0
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.smsc911x_data*, %struct.smsc911x_data** %7, align 8
  %21 = load i32, i32* @MII_ACC, align 4
  %22 = call i32 @smsc911x_mac_read(%struct.smsc911x_data* %20, i32 %21)
  %23 = load i32, i32* @MII_ACC_MII_BUSY_, align 4
  %24 = and i32 %22, %23
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.smsc911x_data*, %struct.smsc911x_data** %7, align 8
  %29 = load i32, i32* @hw, align 4
  %30 = call i32 @SMSC_WARN(%struct.smsc911x_data* %28, i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  br label %69

33:                                               ; preds = %3
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 31
  %36 = shl i32 %35, 11
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 31
  %39 = shl i32 %38, 6
  %40 = or i32 %36, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.smsc911x_data*, %struct.smsc911x_data** %7, align 8
  %42 = load i32, i32* @MII_ACC, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @smsc911x_mac_write(%struct.smsc911x_data* %41, i32 %42, i32 %43)
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %60, %33
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 100
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load %struct.smsc911x_data*, %struct.smsc911x_data** %7, align 8
  %50 = load i32, i32* @MII_ACC, align 4
  %51 = call i32 @smsc911x_mac_read(%struct.smsc911x_data* %49, i32 %50)
  %52 = load i32, i32* @MII_ACC_MII_BUSY_, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load %struct.smsc911x_data*, %struct.smsc911x_data** %7, align 8
  %57 = load i32, i32* @MII_DATA, align 4
  %58 = call i32 @smsc911x_mac_read(%struct.smsc911x_data* %56, i32 %57)
  store i32 %58, i32* %11, align 4
  br label %69

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %45

63:                                               ; preds = %45
  %64 = load %struct.smsc911x_data*, %struct.smsc911x_data** %7, align 8
  %65 = load i32, i32* @hw, align 4
  %66 = call i32 @SMSC_WARN(%struct.smsc911x_data* %64, i32 %65, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %63, %55, %27
  %70 = load %struct.smsc911x_data*, %struct.smsc911x_data** %7, align 8
  %71 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %70, i32 0, i32 0
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smsc911x_mac_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @SMSC_WARN(%struct.smsc911x_data*, i32, i8*) #1

declare dso_local i32 @smsc911x_mac_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
