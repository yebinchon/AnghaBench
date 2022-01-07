; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifmap = type { i32 }
%struct.pcnet_dev = type { i32 }

@HAS_MISC_REG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"switched to %s port\0A\00", align 1
@if_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifmap*)* @set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_config(%struct.net_device* %0, %struct.ifmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifmap*, align 8
  %6 = alloca %struct.pcnet_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifmap* %1, %struct.ifmap** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.pcnet_dev* @PRIV(%struct.net_device* %7)
  store %struct.pcnet_dev* %8, %struct.pcnet_dev** %6, align 8
  %9 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %10 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %62

13:                                               ; preds = %2
  %14 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %15 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %13
  %22 = load %struct.pcnet_dev*, %struct.pcnet_dev** %6, align 8
  %23 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HAS_MISC_REG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %63

31:                                               ; preds = %21
  %32 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %33 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %38 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %31
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %63

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %47 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load i32*, i32** @if_names, align 8
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @netdev_info(%struct.net_device* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = call i32 @NS8390_init(%struct.net_device* %60, i32 1)
  br label %62

62:                                               ; preds = %45, %13, %2
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %41, %28
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.pcnet_dev* @PRIV(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @NS8390_init(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
