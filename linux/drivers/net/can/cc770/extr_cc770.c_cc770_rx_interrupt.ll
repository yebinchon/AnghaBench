; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.cc770_priv = type { i32 }

@CC770_MAX_MSG = common dso_local global i32 0, align 4
@msgobj = common dso_local global %struct.TYPE_2__* null, align 8
@NEWDAT_SET = common dso_local global i32 0, align 4
@CTRL_EAF = common dso_local global i32 0, align 4
@INTPND_SET = common dso_local global i32 0, align 4
@MSGLST_SET = common dso_local global i32 0, align 4
@MSGOBJ_LAST = common dso_local global i32 0, align 4
@NEWDAT_RES = common dso_local global i32 0, align 4
@MSGLST_RES = common dso_local global i32 0, align 4
@TXRQST_UNC = common dso_local global i32 0, align 4
@RMTPND_UNC = common dso_local global i32 0, align 4
@MSGVAL_SET = common dso_local global i32 0, align 4
@TXIE_RES = common dso_local global i32 0, align 4
@RXIE_SET = common dso_local global i32 0, align 4
@INTPND_RES = common dso_local global i32 0, align 4
@TXRQST_RES = common dso_local global i32 0, align 4
@RMTPND_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @cc770_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc770_rx_interrupt(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cc770_priv*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.cc770_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.cc770_priv* %11, %struct.cc770_priv** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @obj2msgobj(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @CC770_MAX_MSG, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %91, %2
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %9, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %126

21:                                               ; preds = %17
  %22 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cc770_read_reg(%struct.cc770_priv* %22, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @NEWDAT_SET, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %21
  %35 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %36 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CTRL_EAF, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cc770_read_reg(%struct.cc770_priv* %42, i32 %48)
  %50 = load i32, i32* @INTPND_SET, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %126

54:                                               ; preds = %41
  br label %56

55:                                               ; preds = %34
  br label %126

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %21
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @MSGLST_SET, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %64 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %68 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %62, %57
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @MSGOBJ_LAST, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NEWDAT_RES, align 4
  %84 = load i32, i32* @MSGLST_RES, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @TXRQST_UNC, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @RMTPND_UNC, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @cc770_write_reg(%struct.cc770_priv* %76, i32 %82, i32 %89)
  br label %91

91:                                               ; preds = %75, %71
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @cc770_rx(%struct.net_device* %92, i32 %93, i32 %94)
  %96 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @MSGVAL_SET, align 4
  %104 = load i32, i32* @TXIE_RES, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @RXIE_SET, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @INTPND_RES, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @cc770_write_reg(%struct.cc770_priv* %96, i32 %102, i32 %109)
  %111 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %113 = load i32, i32* %7, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @NEWDAT_RES, align 4
  %119 = load i32, i32* @MSGLST_RES, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @TXRQST_RES, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @RMTPND_RES, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @cc770_write_reg(%struct.cc770_priv* %111, i32 %117, i32 %124)
  br label %17

126:                                              ; preds = %55, %53, %17
  ret void
}

declare dso_local %struct.cc770_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @obj2msgobj(i32) #1

declare dso_local i32 @cc770_read_reg(%struct.cc770_priv*, i32) #1

declare dso_local i32 @cc770_write_reg(%struct.cc770_priv*, i32, i32) #1

declare dso_local i32 @cc770_rx(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
