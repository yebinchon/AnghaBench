; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { %struct.TYPE_2__, %struct.be_rx_obj* }
%struct.TYPE_2__ = type { i32*, i64*, i64*, i32 }
%struct.be_rx_obj = type { i64 }

@RSS_INDIR_TABLE_LEN = common dso_local global i32 0, align 4
@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RSS_ENABLE_NONE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RSS_HASH_KEY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i64*, i64)* @be_set_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_set_rxfh(%struct.net_device* %0, i32* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.be_adapter*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.be_rx_obj*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %18)
  store %struct.be_adapter* %19, %struct.be_adapter** %13, align 8
  %20 = load i32, i32* @RSS_INDIR_TABLE_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %4
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %119

34:                                               ; preds = %27, %4
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %72

37:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %68, %37
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @RSS_INDIR_TABLE_LEN, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load %struct.be_adapter*, %struct.be_adapter** %13, align 8
  %49 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %48, i32 0, i32 1
  %50 = load %struct.be_rx_obj*, %struct.be_rx_obj** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %50, i64 %52
  store %struct.be_rx_obj* %53, %struct.be_rx_obj** %17, align 8
  %54 = load %struct.be_rx_obj*, %struct.be_rx_obj** %17, align 8
  %55 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %23, i64 %58
  store i64 %56, i64* %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.be_adapter*, %struct.be_adapter** %13, align 8
  %62 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %60, i32* %67, align 4
  br label %68

68:                                               ; preds = %42
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %38

71:                                               ; preds = %38
  br label %79

72:                                               ; preds = %34
  %73 = load %struct.be_adapter*, %struct.be_adapter** %13, align 8
  %74 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* @RSS_INDIR_TABLE_LEN, align 4
  %78 = call i32 @memcpy(i64* %23, i64* %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %71
  %80 = load i64*, i64** %8, align 8
  %81 = icmp ne i64* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load %struct.be_adapter*, %struct.be_adapter** %13, align 8
  %84 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  store i64* %86, i64** %8, align 8
  br label %87

87:                                               ; preds = %82, %79
  %88 = load %struct.be_adapter*, %struct.be_adapter** %13, align 8
  %89 = load %struct.be_adapter*, %struct.be_adapter** %13, align 8
  %90 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @RSS_INDIR_TABLE_LEN, align 4
  %94 = load i64*, i64** %8, align 8
  %95 = call i32 @be_cmd_rss_config(%struct.be_adapter* %88, i64* %23, i32 %92, i32 %93, i64* %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %87
  %99 = load i32, i32* @RSS_ENABLE_NONE, align 4
  %100 = load %struct.be_adapter*, %struct.be_adapter** %13, align 8
  %101 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %119

105:                                              ; preds = %87
  %106 = load %struct.be_adapter*, %struct.be_adapter** %13, align 8
  %107 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = load i64*, i64** %8, align 8
  %111 = load i32, i32* @RSS_HASH_KEY_LEN, align 4
  %112 = call i32 @memcpy(i64* %109, i64* %110, i32 %111)
  %113 = load %struct.be_adapter*, %struct.be_adapter** %13, align 8
  %114 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* @RSS_INDIR_TABLE_LEN, align 4
  %118 = call i32 @memcpy(i64* %116, i64* %23, i32 %117)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %119

119:                                              ; preds = %105, %98, %31
  %120 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @be_cmd_rss_config(%struct.be_adapter*, i64*, i32, i32, i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
