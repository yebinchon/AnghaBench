; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_ndev_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_ndev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { i64, %struct.TYPE_7__*, i32*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 (i32, i32)* }
%struct.TYPE_9__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AQ_CFG_MAC_ADDR_PERMANENT = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_nic_ndev_register(%struct.aq_nic_s* %0) #0 {
  %2 = alloca %struct.aq_nic_s*, align 8
  %3 = alloca i32, align 4
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %5 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %4, i32 0, i32 1
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = icmp ne %struct.TYPE_7__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %107

11:                                               ; preds = %1
  %12 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %13 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %16 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %15, i32 0, i32 5
  %17 = call i32 @hw_atl_utils_initfw(i32 %14, %struct.TYPE_8__** %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %107

21:                                               ; preds = %11
  %22 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %23 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %22, i32 0, i32 3
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %26 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %25, i32 0, i32 5
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32 (i32, i32)*, i32 (i32, i32)** %28, align 8
  %30 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %31 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %34 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %29(i32 %32, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %40 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %39, i32 0, i32 3
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %21
  br label %107

45:                                               ; preds = %21
  %46 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %47 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %85, %45
  %49 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %50 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %53 = call %struct.TYPE_9__* @aq_nic_get_cfg(%struct.aq_nic_s* %52)
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %51, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %48
  %58 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %59 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %60 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %63 = call %struct.TYPE_9__* @aq_nic_get_cfg(%struct.aq_nic_s* %62)
  %64 = call i32 @aq_vec_alloc(%struct.aq_nic_s* %58, i64 %61, %struct.TYPE_9__* %63)
  %65 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %66 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %69 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %64, i32* %71, align 4
  %72 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %73 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %76 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %57
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %107

84:                                               ; preds = %57
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %87 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  br label %48

90:                                               ; preds = %48
  %91 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %92 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = call i32 @netif_carrier_off(%struct.TYPE_7__* %93)
  %95 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %96 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = call i32 @netif_tx_disable(%struct.TYPE_7__* %97)
  %99 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %100 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = call i32 @register_netdev(%struct.TYPE_7__* %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %90
  br label %107

106:                                              ; preds = %90
  br label %107

107:                                              ; preds = %106, %105, %81, %44, %20, %8
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @hw_atl_utils_initfw(i32, %struct.TYPE_8__**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_9__* @aq_nic_get_cfg(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_vec_alloc(%struct.aq_nic_s*, i64, %struct.TYPE_9__*) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_7__*) #1

declare dso_local i32 @netif_tx_disable(%struct.TYPE_7__*) #1

declare dso_local i32 @register_netdev(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
