; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770_isa.c_cc770_isa_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770_isa.c_cc770_isa_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.cc770_priv = type { i64, i32 }

@mem = common dso_local global i64* null, align 8
@CC770_IOSIZE = common dso_local global i32 0, align 4
@cc770_isa_port_read_reg_indirect = common dso_local global i64 0, align 8
@port = common dso_local global i32* null, align 8
@CC770_IOSIZE_INDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cc770_isa_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc770_isa_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cc770_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.cc770_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.cc770_priv* %9, %struct.cc770_priv** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @unregister_cc770dev(%struct.net_device* %13)
  %15 = load i64*, i64** @mem, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %23 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @iounmap(i32 %24)
  %26 = load i64*, i64** @mem, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @CC770_IOSIZE, align 4
  %32 = call i32 @release_mem_region(i64 %30, i32 %31)
  br label %56

33:                                               ; preds = %1
  %34 = load %struct.cc770_priv*, %struct.cc770_priv** %4, align 8
  %35 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @cc770_isa_port_read_reg_indirect, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i32*, i32** @port, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CC770_IOSIZE_INDIRECT, align 4
  %46 = call i32 @release_region(i32 %44, i32 %45)
  br label %55

47:                                               ; preds = %33
  %48 = load i32*, i32** @port, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CC770_IOSIZE, align 4
  %54 = call i32 @release_region(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %47, %39
  br label %56

56:                                               ; preds = %55, %21
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @free_cc770dev(%struct.net_device* %57)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.cc770_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_cc770dev(%struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @free_cc770dev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
