; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_regs = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i64 }
%struct.dev_priv = type { %struct.dev_info* }
%struct.dev_info = type { i32, i32, %struct.ksz_hw }
%struct.ksz_hw = type { i64 }

@hw_regs_range = common dso_local global %struct.hw_regs* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @netdev_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dev_priv*, align 8
  %8 = alloca %struct.dev_info*, align 8
  %9 = alloca %struct.ksz_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.hw_regs*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.dev_priv* %14, %struct.dev_priv** %7, align 8
  %15 = load %struct.dev_priv*, %struct.dev_priv** %7, align 8
  %16 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %15, i32 0, i32 0
  %17 = load %struct.dev_info*, %struct.dev_info** %16, align 8
  store %struct.dev_info* %17, %struct.dev_info** %8, align 8
  %18 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %19 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %18, i32 0, i32 2
  store %struct.ksz_hw* %19, %struct.ksz_hw** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load %struct.hw_regs*, %struct.hw_regs** @hw_regs_range, align 8
  store %struct.hw_regs* %22, %struct.hw_regs** %11, align 8
  %23 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %24 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %40, %3
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 64
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %33 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @pci_read_config_dword(i32 %34, i32 %35, i32* %36)
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %10, align 8
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 4
  store i32 %42, i32* %12, align 4
  br label %28

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %76, %43
  %45 = load %struct.hw_regs*, %struct.hw_regs** %11, align 8
  %46 = getelementptr inbounds %struct.hw_regs, %struct.hw_regs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hw_regs*, %struct.hw_regs** %11, align 8
  %49 = getelementptr inbounds %struct.hw_regs, %struct.hw_regs* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %44
  %53 = load %struct.hw_regs*, %struct.hw_regs** %11, align 8
  %54 = getelementptr inbounds %struct.hw_regs, %struct.hw_regs* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %73, %52
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.hw_regs*, %struct.hw_regs** %11, align 8
  %59 = getelementptr inbounds %struct.hw_regs, %struct.hw_regs* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load %struct.ksz_hw*, %struct.ksz_hw** %9, align 8
  %64 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = call i32 @readl(i64 %68)
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %10, align 8
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 4
  store i32 %75, i32* %12, align 4
  br label %56

76:                                               ; preds = %56
  %77 = load %struct.hw_regs*, %struct.hw_regs** %11, align 8
  %78 = getelementptr inbounds %struct.hw_regs, %struct.hw_regs* %77, i32 1
  store %struct.hw_regs* %78, %struct.hw_regs** %11, align 8
  br label %44

79:                                               ; preds = %44
  %80 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %81 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  ret void
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
