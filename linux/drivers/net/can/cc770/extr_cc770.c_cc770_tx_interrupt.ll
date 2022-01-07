; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_tx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_tx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }
%struct.cc770_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.can_frame = type { i64 }

@msgobj = common dso_local global %struct.TYPE_3__* null, align 8
@MSGVAL_RES = common dso_local global i32 0, align 4
@TXIE_RES = common dso_local global i32 0, align 4
@RXIE_RES = common dso_local global i32 0, align 4
@INTPND_RES = common dso_local global i32 0, align 4
@RMTPND_RES = common dso_local global i32 0, align 4
@TXRQST_RES = common dso_local global i32 0, align 4
@MSGLST_RES = common dso_local global i32 0, align 4
@NEWDAT_RES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"missing tx skb in tx interrupt\0A\00", align 1
@MSGLST_SET = common dso_local global i32 0, align 4
@NEWDAT_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @cc770_tx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc770_tx_interrupt(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cc770_priv*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.can_frame*, align 8
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
  %16 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @msgobj, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cc770_read_reg(%struct.cc770_priv* %16, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @msgobj, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MSGVAL_RES, align 4
  %32 = load i32, i32* @TXIE_RES, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @RXIE_RES, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @INTPND_RES, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @cc770_write_reg(%struct.cc770_priv* %24, i32 %30, i32 %37)
  %39 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @msgobj, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RMTPND_RES, align 4
  %47 = load i32, i32* @TXRQST_RES, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MSGLST_RES, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @NEWDAT_RES, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @cc770_write_reg(%struct.cc770_priv* %39, i32 %45, i32 %52)
  %54 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %55 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %2
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = call i32 @netdev_err(%struct.net_device* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %125

65:                                               ; preds = %2
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @MSGLST_SET, align 4
  %68 = and i32 %66, %67
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %73 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %77 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %71, %65
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @NEWDAT_SET, align 4
  %83 = and i32 %81, %82
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @cc770_rx(%struct.net_device* %87, i32 %88, i32 %89)
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @cc770_tx(%struct.net_device* %91, i32 %92)
  br label %125

94:                                               ; preds = %80
  %95 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %96 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to %struct.can_frame*
  store %struct.can_frame* %100, %struct.can_frame** %8, align 8
  %101 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %102 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %105 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  %110 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %111 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %115 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load %struct.net_device*, %struct.net_device** %3, align 8
  %118 = call i32 @can_put_echo_skb(%struct.TYPE_4__* %116, %struct.net_device* %117, i32 0)
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = call i32 @can_get_echo_skb(%struct.net_device* %119, i32 0)
  %121 = load %struct.cc770_priv*, %struct.cc770_priv** %5, align 8
  %122 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %121, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %122, align 8
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = call i32 @netif_wake_queue(%struct.net_device* %123)
  br label %125

125:                                              ; preds = %94, %86, %62
  ret void
}

declare dso_local %struct.cc770_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @obj2msgobj(i32) #1

declare dso_local i32 @cc770_read_reg(%struct.cc770_priv*, i32) #1

declare dso_local i32 @cc770_write_reg(%struct.cc770_priv*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @cc770_rx(%struct.net_device*, i32, i32) #1

declare dso_local i32 @cc770_tx(%struct.net_device*, i32) #1

declare dso_local i32 @can_put_echo_skb(%struct.TYPE_4__*, %struct.net_device*, i32) #1

declare dso_local i32 @can_get_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
