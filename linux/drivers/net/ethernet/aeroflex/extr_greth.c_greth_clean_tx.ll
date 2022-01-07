; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_clean_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_clean_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.greth_private = type { i32, i64, i64*, %struct.TYPE_3__*, %struct.greth_bd* }
%struct.TYPE_3__ = type { i32 }
%struct.greth_bd = type { i32 }

@GRETH_INT_TE = common dso_local global i32 0, align 4
@GRETH_INT_TX = common dso_local global i32 0, align 4
@GRETH_BD_EN = common dso_local global i32 0, align 4
@GRETH_TXBD_NUM = common dso_local global i64 0, align 8
@GRETH_TXBD_STATUS = common dso_local global i32 0, align 4
@GRETH_TXBD_ERR_AL = common dso_local global i32 0, align 4
@GRETH_TXBD_ERR_UE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @greth_clean_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @greth_clean_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.greth_private*, align 8
  %4 = alloca %struct.greth_bd*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.greth_private* @netdev_priv(%struct.net_device* %6)
  store %struct.greth_private* %7, %struct.greth_private** %3, align 8
  br label %8

8:                                                ; preds = %1, %77
  %9 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %10 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %9, i32 0, i32 4
  %11 = load %struct.greth_bd*, %struct.greth_bd** %10, align 8
  %12 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %13 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %11, i64 %15
  store %struct.greth_bd* %16, %struct.greth_bd** %4, align 8
  %17 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %18 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GRETH_INT_TE, align 4
  %23 = load i32, i32* @GRETH_INT_TX, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @GRETH_REGSAVE(i32 %21, i32 %24)
  %26 = call i32 (...) @mb()
  %27 = load %struct.greth_bd*, %struct.greth_bd** %4, align 8
  %28 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %27, i32 0, i32 0
  %29 = call i32 @greth_read_bd(i32* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @GRETH_BD_EN, align 4
  %32 = and i32 %30, %31
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %8
  br label %111

36:                                               ; preds = %8
  %37 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %38 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @GRETH_TXBD_NUM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %111

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @GRETH_TXBD_STATUS, align 4
  %46 = and i32 %44, %45
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %43
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @GRETH_TXBD_ERR_AL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %49
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @GRETH_TXBD_ERR_UE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %65
  br label %77

77:                                               ; preds = %76, %43
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %84 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %87 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %85, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %91
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  %99 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %100 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = call i64 @NEXT_TX(i64 %102)
  %104 = trunc i64 %103 to i32
  %105 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %106 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %108 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %108, align 8
  br label %8

111:                                              ; preds = %42, %35
  %112 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %113 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.net_device*, %struct.net_device** %2, align 8
  %118 = call i32 @netif_wake_queue(%struct.net_device* %117)
  br label %119

119:                                              ; preds = %116, %111
  ret void
}

declare dso_local %struct.greth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @GRETH_REGSAVE(i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @greth_read_bd(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @NEXT_TX(i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
