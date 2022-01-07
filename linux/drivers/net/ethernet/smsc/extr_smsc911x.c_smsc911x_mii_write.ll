; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_mii_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_mii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i64 }
%struct.smsc911x_data = type { i32 }

@MII_ACC = common dso_local global i32 0, align 4
@MII_ACC_MII_BUSY_ = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"MII is busy in smsc911x_mii_write???\00", align 1
@EIO = common dso_local global i32 0, align 4
@MII_DATA = common dso_local global i32 0, align 4
@MII_ACC_MII_WRITE_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Timed out waiting for MII write to finish\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @smsc911x_mii_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_mii_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.smsc911x_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %15 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.smsc911x_data*
  store %struct.smsc911x_data* %17, %struct.smsc911x_data** %9, align 8
  %18 = load %struct.smsc911x_data*, %struct.smsc911x_data** %9, align 8
  %19 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %18, i32 0, i32 0
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.smsc911x_data*, %struct.smsc911x_data** %9, align 8
  %23 = load i32, i32* @MII_ACC, align 4
  %24 = call i32 @smsc911x_mac_read(%struct.smsc911x_data* %22, i32 %23)
  %25 = load i32, i32* @MII_ACC_MII_BUSY_, align 4
  %26 = and i32 %24, %25
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %4
  %30 = load %struct.smsc911x_data*, %struct.smsc911x_data** %9, align 8
  %31 = load i32, i32* @hw, align 4
  %32 = call i32 @SMSC_WARN(%struct.smsc911x_data* %30, i32 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  br label %74

35:                                               ; preds = %4
  %36 = load %struct.smsc911x_data*, %struct.smsc911x_data** %9, align 8
  %37 = load i32, i32* @MII_DATA, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @smsc911x_mac_write(%struct.smsc911x_data* %36, i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 31
  %42 = shl i32 %41, 11
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 31
  %45 = shl i32 %44, 6
  %46 = or i32 %42, %45
  %47 = load i32, i32* @MII_ACC_MII_WRITE_, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct.smsc911x_data*, %struct.smsc911x_data** %9, align 8
  %50 = load i32, i32* @MII_ACC, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @smsc911x_mac_write(%struct.smsc911x_data* %49, i32 %50, i32 %51)
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %65, %35
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 100
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load %struct.smsc911x_data*, %struct.smsc911x_data** %9, align 8
  %58 = load i32, i32* @MII_ACC, align 4
  %59 = call i32 @smsc911x_mac_read(%struct.smsc911x_data* %57, i32 %58)
  %60 = load i32, i32* @MII_ACC_MII_BUSY_, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  store i32 0, i32* %13, align 4
  br label %74

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %53

68:                                               ; preds = %53
  %69 = load %struct.smsc911x_data*, %struct.smsc911x_data** %9, align 8
  %70 = load i32, i32* @hw, align 4
  %71 = call i32 @SMSC_WARN(%struct.smsc911x_data* %69, i32 %70, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %68, %63, %29
  %75 = load %struct.smsc911x_data*, %struct.smsc911x_data** %9, align 8
  %76 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %75, i32 0, i32 0
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i32, i32* %13, align 4
  ret i32 %79
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
