; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_set_rssh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_set_rssh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fm10k_intfc = type { i64*, %struct.fm10k_hw }
%struct.fm10k_hw = type { i32 }

@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FM10K_RSSRK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64*, i64*, i64)* @fm10k_set_rssh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_set_rssh(%struct.net_device* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fm10k_intfc*, align 8
  %11 = alloca %struct.fm10k_hw*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %15)
  store %struct.fm10k_intfc* %16, %struct.fm10k_intfc** %10, align 8
  %17 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %10, align 8
  %18 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %17, i32 0, i32 1
  store %struct.fm10k_hw* %18, %struct.fm10k_hw** %11, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %79

29:                                               ; preds = %22, %4
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = call i32 @fm10k_set_reta(%struct.net_device* %30, i64* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i64*, i64** %8, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35, %29
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %5, align 4
  br label %79

40:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %73, %40
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @FM10K_RSSRK_SIZE, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %41
  %46 = load i64*, i64** %8, align 8
  %47 = bitcast i64* %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @le32_to_cpu(i32 %48)
  store i64 %49, i64* %14, align 8
  %50 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %10, align 8
  %51 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %73

60:                                               ; preds = %45
  %61 = load i64, i64* %14, align 8
  %62 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %10, align 8
  %63 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %61, i64* %67, align 8
  %68 = load %struct.fm10k_hw*, %struct.fm10k_hw** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @FM10K_RSSRK(i32 0, i32 %69)
  %71 = load i64, i64* %14, align 8
  %72 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %68, i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %60, %59
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  %76 = load i64*, i64** %8, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 4
  store i64* %77, i64** %8, align 8
  br label %41

78:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %38, %26
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fm10k_set_reta(%struct.net_device*, i64*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i64) #1

declare dso_local i32 @FM10K_RSSRK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
