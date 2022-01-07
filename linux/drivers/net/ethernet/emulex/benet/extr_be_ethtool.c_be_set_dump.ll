; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i32 }
%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@MAX_PRIVILEGES = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"FW dump initiated successfully\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"FW dump deleted successfully\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid dump level: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*)* @be_set_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_set_dump(%struct.net_device* %0, %struct.ethtool_dump* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_dump*, align 8
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.be_adapter* %10, %struct.be_adapter** %6, align 8
  %11 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %16 = call i32 @lancer_chip(%struct.be_adapter* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %20 = load i32, i32* @MAX_PRIVILEGES, align 4
  %21 = call i32 @check_privilege(%struct.be_adapter* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %58

26:                                               ; preds = %18
  %27 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %48 [
    i32 128, label %30
    i32 129, label %39
  ]

30:                                               ; preds = %26
  %31 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %32 = call i32 @lancer_initiate_dump(%struct.be_adapter* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %7, align 8
  %37 = call i32 @dev_info(%struct.device* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  br label %56

39:                                               ; preds = %26
  %40 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %41 = call i32 @lancer_delete_dump(%struct.be_adapter* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = call i32 @dev_info(%struct.device* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39
  br label %56

48:                                               ; preds = %26
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %47, %38
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %48, %23
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @check_privilege(%struct.be_adapter*, i32) #1

declare dso_local i32 @lancer_initiate_dump(%struct.be_adapter*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @lancer_delete_dump(%struct.be_adapter*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
