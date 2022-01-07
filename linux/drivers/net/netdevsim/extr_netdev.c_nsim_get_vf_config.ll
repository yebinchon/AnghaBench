; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_netdev.c_nsim_get_vf_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_netdev.c_nsim_get_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifla_vf_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdevsim = type { %struct.nsim_bus_dev* }
%struct.nsim_bus_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)* @nsim_get_vf_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_get_vf_config(%struct.net_device* %0, i32 %1, %struct.ifla_vf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifla_vf_info*, align 8
  %8 = alloca %struct.netdevsim*, align 8
  %9 = alloca %struct.nsim_bus_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifla_vf_info* %2, %struct.ifla_vf_info** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.netdevsim* @netdev_priv(%struct.net_device* %10)
  store %struct.netdevsim* %11, %struct.netdevsim** %8, align 8
  %12 = load %struct.netdevsim*, %struct.netdevsim** %8, align 8
  %13 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %12, i32 0, i32 0
  %14 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %13, align 8
  store %struct.nsim_bus_dev* %14, %struct.nsim_bus_dev** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %9, align 8
  %17 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %129

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %26 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %9, align 8
  %28 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %36 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 4
  %37 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %9, align 8
  %38 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %46 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 4
  %47 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %9, align 8
  %48 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %56 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 4
  %57 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %9, align 8
  %58 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %66 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %9, align 8
  %68 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %76 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 4
  %77 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %9, align 8
  %78 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %86 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %88 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %87, i32 0, i32 4
  %89 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %9, align 8
  %90 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ETH_ALEN, align 4
  %98 = call i32 @memcpy(i32* %88, i32 %96, i32 %97)
  %99 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %9, align 8
  %100 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %108 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %9, align 8
  %110 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %118 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.nsim_bus_dev*, %struct.nsim_bus_dev** %9, align 8
  %120 = getelementptr inbounds %struct.nsim_bus_dev, %struct.nsim_bus_dev* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %128 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %23, %20
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.netdevsim* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
