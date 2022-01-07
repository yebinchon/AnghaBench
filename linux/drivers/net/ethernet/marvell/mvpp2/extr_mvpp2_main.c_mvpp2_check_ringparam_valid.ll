; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_check_ringparam_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_check_ringparam_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MVPP2_MAX_RXD_MAX = common dso_local global i64 0, align 8
@MVPP2_MAX_TXD_MAX = common dso_local global i64 0, align 8
@MVPP2_MAX_SKB_DESCS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"illegal Rx ring size value %d, round to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"illegal Tx ring size value %d, round to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @mvpp2_check_ringparam_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_check_ringparam_valid(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %8 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %9 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %106

26:                                               ; preds = %18
  %27 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MVPP2_MAX_RXD_MAX, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* @MVPP2_MAX_RXD_MAX, align 8
  store i64 %33, i64* %6, align 8
  br label %46

34:                                               ; preds = %26
  %35 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @IS_ALIGNED(i64 %37, i32 16)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @ALIGN(i64 %43, i32 16)
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %40, %34
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MVPP2_MAX_TXD_MAX, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i64, i64* @MVPP2_MAX_TXD_MAX, align 8
  store i64 %53, i64* %7, align 8
  br label %66

54:                                               ; preds = %46
  %55 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @IS_ALIGNED(i64 %57, i32 32)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @ALIGN(i64 %63, i32 32)
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %60, %54
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @MVPP2_MAX_SKB_DESCS, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i64, i64* @MVPP2_MAX_SKB_DESCS, align 8
  %72 = call i64 @ALIGN(i64 %71, i32 32)
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %70, %66
  %74 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @netdev_info(%struct.net_device* %80, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %83, i64 %84)
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %79, %73
  %90 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %91 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %98 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @netdev_info(%struct.net_device* %96, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %99, i64 %100)
  %102 = load i64, i64* %7, align 8
  %103 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %104 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %95, %89
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %23
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
