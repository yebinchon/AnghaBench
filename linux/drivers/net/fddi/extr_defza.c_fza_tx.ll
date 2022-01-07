; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.fza_private = type { i32, i32, i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@FZA_RING_OWN_MASK = common dso_local global i32 0, align 4
@FZA_RING_TX_OWN_RMC = common dso_local global i32 0, align 4
@FZA_RING_TX_SOP = common dso_local global i32 0, align 4
@FZA_RING_TX_DCC_MASK = common dso_local global i32 0, align 4
@FZA_RING_TX_DCC_SUCCESS = common dso_local global i32 0, align 4
@FZA_RING_PBC_MASK = common dso_local global i32 0, align 4
@FZA_TX_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: queue woken\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fza_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fza_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fza_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.fza_private* @netdev_priv(%struct.net_device* %8)
  store %struct.fza_private* %9, %struct.fza_private** %3, align 8
  br label %10

10:                                               ; preds = %1, %95
  %11 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %12 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %16 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %106

20:                                               ; preds = %10
  %21 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %22 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %21, i32 0, i32 6
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = call i32 @readl_o(i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @FZA_RING_OWN_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @FZA_RING_TX_OWN_RMC, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %106

35:                                               ; preds = %20
  %36 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %37 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %36, i32 0, i32 6
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @readl_u(i32* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @FZA_RING_TX_SOP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %95

48:                                               ; preds = %35
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @FZA_RING_TX_DCC_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @FZA_RING_TX_DCC_SUCCESS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @FZA_RING_PBC_MASK, align 4
  %57 = and i32 %55, %56
  %58 = sub nsw i32 %57, 3
  store i32 %58, i32* %7, align 4
  %59 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %60 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %66 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, %64
  store i32 %69, i32* %67, align 8
  br label %94

70:                                               ; preds = %48
  %71 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %72 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @FZA_RING_TX_DCC_MASK, align 4
  %78 = and i32 %76, %77
  switch i32 %78, label %92 [
    i32 130, label %79
    i32 131, label %79
    i32 132, label %79
    i32 128, label %85
    i32 129, label %91
  ]

79:                                               ; preds = %70, %70, %70
  %80 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %81 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  br label %93

85:                                               ; preds = %70
  %86 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %87 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %93

91:                                               ; preds = %70
  br label %92

92:                                               ; preds = %70, %91
  br label %93

93:                                               ; preds = %92, %85, %79
  br label %94

94:                                               ; preds = %93, %54
  br label %95

95:                                               ; preds = %94, %35
  %96 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %97 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  %100 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %101 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = srem i32 %99, %102
  %104 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %105 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  br label %10

106:                                              ; preds = %34, %19
  %107 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %108 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 1
  %111 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %112 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %110, %113
  %115 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %116 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %114, %117
  %119 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %120 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = srem i32 %118, %121
  %123 = load i32, i32* @FZA_TX_BUFFER_SIZE, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load %struct.net_device*, %struct.net_device** %2, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %127, %130
  %132 = icmp sge i32 %124, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %106
  %134 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %135 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load %struct.net_device*, %struct.net_device** %2, align 8
  %140 = call i32 @netif_wake_queue(%struct.net_device* %139)
  %141 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %142 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %138, %133
  br label %146

146:                                              ; preds = %145, %106
  ret void
}

declare dso_local %struct.fza_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl_o(i32*) #1

declare dso_local i32 @readl_u(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
