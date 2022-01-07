; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_nmclan_cs.c_mace_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_nmclan_cs.c_mace_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifmap = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"switched to %s port\0A\00", align 1
@if_names = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifmap*)* @mace_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mace_config(%struct.net_device* %0, %struct.ifmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifmap*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifmap* %1, %struct.ifmap** %5, align 8
  %6 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %7 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %42

10:                                               ; preds = %2
  %11 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %12 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %10
  %19 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %20 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 2
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %25 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = load i32*, i32** @if_names, align 8
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @netdev_info(%struct.net_device* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %41

38:                                               ; preds = %18
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41, %10, %2
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
