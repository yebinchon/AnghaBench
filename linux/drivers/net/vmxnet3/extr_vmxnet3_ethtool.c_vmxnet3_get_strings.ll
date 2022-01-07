; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.net_device = type { i32 }
%struct.vmxnet3_adapter = type { i32, i32 }

@ETH_SS_STATS = common dso_local global i64 0, align 8
@vmxnet3_tq_dev_stats = common dso_local global %struct.TYPE_7__* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@vmxnet3_tq_driver_stats = common dso_local global %struct.TYPE_7__* null, align 8
@vmxnet3_rq_dev_stats = common dso_local global %struct.TYPE_7__* null, align 8
@vmxnet3_rq_driver_stats = common dso_local global %struct.TYPE_7__* null, align 8
@vmxnet3_global_stats = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64, i32*)* @vmxnet3_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_get_strings(%struct.net_device* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vmxnet3_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.vmxnet3_adapter* %11, %struct.vmxnet3_adapter** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @ETH_SS_STATS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %153

15:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %69, %15
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %19 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %42, %22
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vmxnet3_tq_dev_stats, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vmxnet3_tq_dev_stats, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %37 = call i32 @memcpy(i32* %29, i32 %35, i32 %36)
  %38 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %6, align 8
  br label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %23

45:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %65, %45
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vmxnet3_tq_driver_stats, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vmxnet3_tq_driver_stats, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %60 = call i32 @memcpy(i32* %52, i32 %58, i32 %59)
  %61 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %6, align 8
  br label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %46

68:                                               ; preds = %46
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %16

72:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %126, %72
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %76 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %129

79:                                               ; preds = %73
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %99, %79
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vmxnet3_rq_dev_stats, align 8
  %83 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %82)
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vmxnet3_rq_dev_stats, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %94 = call i32 @memcpy(i32* %86, i32 %92, i32 %93)
  %95 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %6, align 8
  br label %99

99:                                               ; preds = %85
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %80

102:                                              ; preds = %80
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %122, %102
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vmxnet3_rq_driver_stats, align 8
  %106 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %105)
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %103
  %109 = load i32*, i32** %6, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vmxnet3_rq_driver_stats, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %117 = call i32 @memcpy(i32* %109, i32 %115, i32 %116)
  %118 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %119 = load i32*, i32** %6, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %6, align 8
  br label %122

122:                                              ; preds = %108
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %103

125:                                              ; preds = %103
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %73

129:                                              ; preds = %73
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %149, %129
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vmxnet3_global_stats, align 8
  %133 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %132)
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %130
  %136 = load i32*, i32** %6, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vmxnet3_global_stats, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %144 = call i32 @memcpy(i32* %136, i32 %142, i32 %143)
  %145 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %146 = load i32*, i32** %6, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32* %148, i32** %6, align 8
  br label %149

149:                                              ; preds = %135
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %130

152:                                              ; preds = %130
  br label %153

153:                                              ; preds = %152, %3
  ret void
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
