; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_alloc_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_alloc_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_channel = type { %struct.TYPE_9__*, %struct.dpaa2_eth_priv*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.dpaa2_eth_priv = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dpcon_attr = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"dpcon_get_attributes() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dpaa2_eth_channel* (%struct.dpaa2_eth_priv*)* @alloc_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dpaa2_eth_channel* @alloc_channel(%struct.dpaa2_eth_priv* %0) #0 {
  %2 = alloca %struct.dpaa2_eth_channel*, align 8
  %3 = alloca %struct.dpaa2_eth_priv*, align 8
  %4 = alloca %struct.dpaa2_eth_channel*, align 8
  %5 = alloca %struct.dpcon_attr, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %3, align 8
  %8 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %9 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.dpaa2_eth_channel* @kzalloc(i32 24, i32 %14)
  store %struct.dpaa2_eth_channel* %15, %struct.dpaa2_eth_channel** %4, align 8
  %16 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %4, align 8
  %17 = icmp ne %struct.dpaa2_eth_channel* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.dpaa2_eth_channel* null, %struct.dpaa2_eth_channel** %2, align 8
  br label %73

19:                                               ; preds = %1
  %20 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %21 = call %struct.TYPE_9__* @setup_dpcon(%struct.dpaa2_eth_priv* %20)
  %22 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %4, align 8
  %23 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %22, i32 0, i32 0
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %23, align 8
  %24 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %4, align 8
  %25 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = call i64 @IS_ERR_OR_NULL(%struct.TYPE_9__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %4, align 8
  %31 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = call i32 @PTR_ERR_OR_ZERO(%struct.TYPE_9__* %32)
  store i32 %33, i32* %7, align 4
  br label %68

34:                                               ; preds = %19
  %35 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %36 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %4, align 8
  %39 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dpcon_get_attributes(i32 %37, i32 0, i32 %42, %struct.dpcon_attr* %5)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %62

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.dpcon_attr, %struct.dpcon_attr* %5, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %4, align 8
  %53 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.dpcon_attr, %struct.dpcon_attr* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %4, align 8
  %57 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %59 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %4, align 8
  %60 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %59, i32 0, i32 1
  store %struct.dpaa2_eth_priv* %58, %struct.dpaa2_eth_priv** %60, align 8
  %61 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %4, align 8
  store %struct.dpaa2_eth_channel* %61, %struct.dpaa2_eth_channel** %2, align 8
  br label %73

62:                                               ; preds = %46
  %63 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %64 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %4, align 8
  %65 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = call i32 @free_dpcon(%struct.dpaa2_eth_priv* %63, %struct.TYPE_9__* %66)
  br label %68

68:                                               ; preds = %62, %29
  %69 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %4, align 8
  %70 = call i32 @kfree(%struct.dpaa2_eth_channel* %69)
  %71 = load i32, i32* %7, align 4
  %72 = call %struct.dpaa2_eth_channel* @ERR_PTR(i32 %71)
  store %struct.dpaa2_eth_channel* %72, %struct.dpaa2_eth_channel** %2, align 8
  br label %73

73:                                               ; preds = %68, %49, %18
  %74 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %2, align 8
  ret %struct.dpaa2_eth_channel* %74
}

declare dso_local %struct.dpaa2_eth_channel* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_9__* @setup_dpcon(%struct.dpaa2_eth_priv*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.TYPE_9__*) #1

declare dso_local i32 @dpcon_get_attributes(i32, i32, i32, %struct.dpcon_attr*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @free_dpcon(%struct.dpaa2_eth_priv*, %struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.dpaa2_eth_channel*) #1

declare dso_local %struct.dpaa2_eth_channel* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
