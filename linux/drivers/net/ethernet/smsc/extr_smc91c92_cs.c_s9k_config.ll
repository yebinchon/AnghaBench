; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_s9k_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_s9k_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifmap = type { i32 }
%struct.smc_private = type { i32 }

@CFG_MII_SELECT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"switched to %s port\0A\00", align 1
@if_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifmap*)* @s9k_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s9k_config(%struct.net_device* %0, %struct.ifmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifmap*, align 8
  %6 = alloca %struct.smc_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifmap* %1, %struct.ifmap** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.smc_private* @netdev_priv(%struct.net_device* %7)
  store %struct.smc_private* %8, %struct.smc_private** %6, align 8
  %9 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %10 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %57

13:                                               ; preds = %2
  %14 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %15 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %13
  %22 = load %struct.smc_private*, %struct.smc_private** %6, align 8
  %23 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CFG_MII_SELECT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %21
  %32 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %33 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %58

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %42 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = load i32*, i32** @if_names, align 8
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @netdev_info(%struct.net_device* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = call i32 @smc_reset(%struct.net_device* %55)
  br label %57

57:                                               ; preds = %40, %13, %2
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %36, %28
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @smc_reset(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
