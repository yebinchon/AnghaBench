; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_get_affine_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_get_affine_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_channel = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dpaa2_eth_priv = type { i32, %struct.dpaa2_eth_channel**, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"No affine channel found for cpu %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dpaa2_eth_channel* (%struct.dpaa2_eth_priv*, i32)* @get_affine_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dpaa2_eth_channel* @get_affine_channel(%struct.dpaa2_eth_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.dpaa2_eth_channel*, align 8
  %4 = alloca %struct.dpaa2_eth_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %9 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %42, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %17 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %14
  %21 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %22 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %21, i32 0, i32 1
  %23 = load %struct.dpaa2_eth_channel**, %struct.dpaa2_eth_channel*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %23, i64 %25
  %27 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %26, align 8
  %28 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %20
  %34 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %35 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %34, i32 0, i32 1
  %36 = load %struct.dpaa2_eth_channel**, %struct.dpaa2_eth_channel*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %36, i64 %38
  %40 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %39, align 8
  store %struct.dpaa2_eth_channel* %40, %struct.dpaa2_eth_channel** %3, align 8
  br label %54

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %14

45:                                               ; preds = %14
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dev_warn(%struct.device* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %4, align 8
  %50 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %49, i32 0, i32 1
  %51 = load %struct.dpaa2_eth_channel**, %struct.dpaa2_eth_channel*** %50, align 8
  %52 = getelementptr inbounds %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %51, i64 0
  %53 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %52, align 8
  store %struct.dpaa2_eth_channel* %53, %struct.dpaa2_eth_channel** %3, align 8
  br label %54

54:                                               ; preds = %45, %33
  %55 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %3, align 8
  ret %struct.dpaa2_eth_channel* %55
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
