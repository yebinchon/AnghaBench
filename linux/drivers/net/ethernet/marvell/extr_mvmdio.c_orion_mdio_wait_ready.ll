; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvmdio.c_orion_mdio_wait_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvmdio.c_orion_mdio_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orion_mdio_ops = type { i64 (%struct.orion_mdio_dev*)*, i32, i32 }
%struct.orion_mdio_dev = type opaque
%struct.mii_bus = type { i32, %struct.orion_mdio_dev.0* }
%struct.orion_mdio_dev.0 = type { i64, i32 }

@MVMDIO_SMI_TIMEOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Timeout: SMI busy for too long\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orion_mdio_ops*, %struct.mii_bus*)* @orion_mdio_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_mdio_wait_ready(%struct.orion_mdio_ops* %0, %struct.mii_bus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.orion_mdio_ops*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca %struct.orion_mdio_dev.0*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.orion_mdio_ops* %0, %struct.orion_mdio_ops** %4, align 8
  store %struct.mii_bus* %1, %struct.mii_bus** %5, align 8
  %10 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %11 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %10, i32 0, i32 1
  %12 = load %struct.orion_mdio_dev.0*, %struct.orion_mdio_dev.0** %11, align 8
  store %struct.orion_mdio_dev.0* %12, %struct.orion_mdio_dev.0** %6, align 8
  %13 = load i32, i32* @MVMDIO_SMI_TIMEOUT, align 4
  %14 = call i64 @usecs_to_jiffies(i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %2, %70
  %19 = load %struct.orion_mdio_ops*, %struct.orion_mdio_ops** %4, align 8
  %20 = getelementptr inbounds %struct.orion_mdio_ops, %struct.orion_mdio_ops* %19, i32 0, i32 0
  %21 = load i64 (%struct.orion_mdio_dev*)*, i64 (%struct.orion_mdio_dev*)** %20, align 8
  %22 = load %struct.orion_mdio_dev.0*, %struct.orion_mdio_dev.0** %6, align 8
  %23 = bitcast %struct.orion_mdio_dev.0* %22 to %struct.orion_mdio_dev*
  %24 = call i64 %21(%struct.orion_mdio_dev* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %78

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %71

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.orion_mdio_dev.0*, %struct.orion_mdio_dev.0** %6, align 8
  %34 = getelementptr inbounds %struct.orion_mdio_dev.0, %struct.orion_mdio_dev.0* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.orion_mdio_ops*, %struct.orion_mdio_ops** %4, align 8
  %39 = getelementptr inbounds %struct.orion_mdio_ops, %struct.orion_mdio_ops* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.orion_mdio_ops*, %struct.orion_mdio_ops** %4, align 8
  %42 = getelementptr inbounds %struct.orion_mdio_ops, %struct.orion_mdio_ops* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @usleep_range(i32 %40, i32 %43)
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @time_is_before_jiffies(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %37
  br label %70

52:                                               ; preds = %32
  %53 = load i64, i64* %7, align 8
  %54 = icmp ult i64 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i64 2, i64* %7, align 8
  br label %56

56:                                               ; preds = %55, %52
  %57 = load %struct.orion_mdio_dev.0*, %struct.orion_mdio_dev.0** %6, align 8
  %58 = getelementptr inbounds %struct.orion_mdio_dev.0, %struct.orion_mdio_dev.0* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.orion_mdio_ops*, %struct.orion_mdio_ops** %4, align 8
  %61 = getelementptr inbounds %struct.orion_mdio_ops, %struct.orion_mdio_ops* %60, i32 0, i32 0
  %62 = load i64 (%struct.orion_mdio_dev*)*, i64 (%struct.orion_mdio_dev*)** %61, align 8
  %63 = load %struct.orion_mdio_dev.0*, %struct.orion_mdio_dev.0** %6, align 8
  %64 = bitcast %struct.orion_mdio_dev.0* %63 to %struct.orion_mdio_dev*
  %65 = call i64 %62(%struct.orion_mdio_dev* %64)
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @wait_event_timeout(i32 %59, i64 %65, i64 %66)
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %56, %51
  br label %18

71:                                               ; preds = %30
  %72 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %73 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @ETIMEDOUT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %26
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @wait_event_timeout(i32, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
