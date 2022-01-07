; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_get_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_marvell_get_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.marvell_hw_stat = type { i32, i32, i32 }
%struct.phy_device = type { %struct.marvell_priv* }
%struct.marvell_priv = type { i32* }

@marvell_hw_stats = common dso_local global %struct.marvell_hw_stat* null, align 8
@U64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32)* @marvell_get_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_get_stat(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.marvell_hw_stat, align 4
  %6 = alloca %struct.marvell_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.marvell_hw_stat*, %struct.marvell_hw_stat** @marvell_hw_stats, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.marvell_hw_stat, %struct.marvell_hw_stat* %9, i64 %11
  %13 = bitcast %struct.marvell_hw_stat* %5 to i8*
  %14 = bitcast %struct.marvell_hw_stat* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 0
  %17 = load %struct.marvell_priv*, %struct.marvell_priv** %16, align 8
  store %struct.marvell_priv* %17, %struct.marvell_priv** %6, align 8
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = getelementptr inbounds %struct.marvell_hw_stat, %struct.marvell_hw_stat* %5, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.marvell_hw_stat, %struct.marvell_hw_stat* %5, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @phy_read_paged(%struct.phy_device* %18, i32 %20, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @U64_MAX, align 4
  store i32 %27, i32* %8, align 4
  br label %51

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = getelementptr inbounds %struct.marvell_hw_stat, %struct.marvell_hw_stat* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %29, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.marvell_priv*, %struct.marvell_priv** %6, align 8
  %37 = getelementptr inbounds %struct.marvell_priv, %struct.marvell_priv* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %35
  store i32 %43, i32* %41, align 4
  %44 = load %struct.marvell_priv*, %struct.marvell_priv** %6, align 8
  %45 = getelementptr inbounds %struct.marvell_priv, %struct.marvell_priv* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %28, %26
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @phy_read_paged(%struct.phy_device*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
