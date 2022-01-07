; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ep93xx_priv = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.ep93xx_tstat* }
%struct.TYPE_4__ = type { i32 }
%struct.ep93xx_tstat = type { i32 }

@TSTAT0_TXFP = common dso_local global i32 0, align 4
@TSTAT0_FA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"frame aborted %.8x\0A\00", align 1
@TSTAT0_BUFFER_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"entry mismatch %.8x\0A\00", align 1
@TSTAT0_TXWE = common dso_local global i32 0, align 4
@TSTAT0_OW = common dso_local global i32 0, align 4
@TSTAT0_TXU = common dso_local global i32 0, align 4
@TX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ep93xx_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xx_tx_complete(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ep93xx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ep93xx_tstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.ep93xx_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.ep93xx_priv* %10, %struct.ep93xx_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %11, i32 0, i32 2
  %13 = call i32 @spin_lock(i32* %12)
  br label %14

14:                                               ; preds = %1, %131
  %15 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %18, i32 0, i32 3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.ep93xx_tstat*, %struct.ep93xx_tstat** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ep93xx_tstat, %struct.ep93xx_tstat* %22, i64 %24
  store %struct.ep93xx_tstat* %25, %struct.ep93xx_tstat** %6, align 8
  %26 = load %struct.ep93xx_tstat*, %struct.ep93xx_tstat** %6, align 8
  %27 = getelementptr inbounds %struct.ep93xx_tstat, %struct.ep93xx_tstat* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @TSTAT0_TXFP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %14
  br label %136

34:                                               ; preds = %14
  %35 = load %struct.ep93xx_tstat*, %struct.ep93xx_tstat** %6, align 8
  %36 = getelementptr inbounds %struct.ep93xx_tstat, %struct.ep93xx_tstat* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @TSTAT0_FA, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @pr_crit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %34
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TSTAT0_BUFFER_INDEX, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @TSTAT0_TXWE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %53
  %59 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %60 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 4095
  store i32 %69, i32* %8, align 4
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %75
  store i32 %80, i32* %78, align 4
  br label %87

81:                                               ; preds = %53
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %58
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @TSTAT0_OW, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @TSTAT0_TXU, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %98
  %110 = load i32, i32* %7, align 4
  %111 = ashr i32 %110, 16
  %112 = and i32 %111, 31
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %112
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* @TX_QUEUE_ENTRIES, align 4
  %121 = sub nsw i32 %120, 1
  %122 = and i32 %119, %121
  %123 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %124 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %126 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @TX_QUEUE_ENTRIES, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %109
  store i32 1, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %109
  %132 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %133 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %133, align 4
  br label %14

136:                                              ; preds = %33
  %137 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %3, align 8
  %138 = getelementptr inbounds %struct.ep93xx_priv, %struct.ep93xx_priv* %137, i32 0, i32 2
  %139 = call i32 @spin_unlock(i32* %138)
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load %struct.net_device*, %struct.net_device** %2, align 8
  %144 = call i32 @netif_wake_queue(%struct.net_device* %143)
  br label %145

145:                                              ; preds = %142, %136
  ret void
}

declare dso_local %struct.ep93xx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_crit(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
