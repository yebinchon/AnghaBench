; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_enable_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_enable_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.veth_priv = type { %struct.veth_rq*, i32 }
%struct.veth_rq = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@MEM_TYPE_PAGE_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @veth_enable_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_enable_xdp(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.veth_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.veth_rq*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.veth_priv* %9, %struct.veth_priv** %4, align 8
  %10 = load %struct.veth_priv*, %struct.veth_priv** %4, align 8
  %11 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %10, i32 0, i32 0
  %12 = load %struct.veth_rq*, %struct.veth_rq** %11, align 8
  %13 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %12, i64 0
  %14 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %13, i32 0, i32 0
  %15 = call i32 @xdp_rxq_info_is_reg(%struct.TYPE_5__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %64, label %17

17:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %54, %17
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %18
  %25 = load %struct.veth_priv*, %struct.veth_priv** %4, align 8
  %26 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %25, i32 0, i32 0
  %27 = load %struct.veth_rq*, %struct.veth_rq** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %27, i64 %29
  store %struct.veth_rq* %30, %struct.veth_rq** %7, align 8
  %31 = load %struct.veth_rq*, %struct.veth_rq** %7, align 8
  %32 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %31, i32 0, i32 0
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @xdp_rxq_info_reg(%struct.TYPE_5__* %32, %struct.net_device* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %97

39:                                               ; preds = %24
  %40 = load %struct.veth_rq*, %struct.veth_rq** %7, align 8
  %41 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %40, i32 0, i32 0
  %42 = load i32, i32* @MEM_TYPE_PAGE_SHARED, align 4
  %43 = call i32 @xdp_rxq_info_reg_mem_model(%struct.TYPE_5__* %41, i32 %42, i32* null)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %88

47:                                               ; preds = %39
  %48 = load %struct.veth_rq*, %struct.veth_rq** %7, align 8
  %49 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.veth_rq*, %struct.veth_rq** %7, align 8
  %53 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %18

57:                                               ; preds = %18
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @veth_napi_add(%struct.net_device* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %97

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %1
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %84, %64
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.veth_priv*, %struct.veth_priv** %4, align 8
  %73 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %72, i32 0, i32 0
  %74 = load %struct.veth_rq*, %struct.veth_rq** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %74, i64 %76
  %78 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.veth_priv*, %struct.veth_priv** %4, align 8
  %81 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @rcu_assign_pointer(i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %65

87:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %117

88:                                               ; preds = %46
  %89 = load %struct.veth_priv*, %struct.veth_priv** %4, align 8
  %90 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %89, i32 0, i32 0
  %91 = load %struct.veth_rq*, %struct.veth_rq** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %91, i64 %93
  %95 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %94, i32 0, i32 0
  %96 = call i32 @xdp_rxq_info_unreg(%struct.TYPE_5__* %95)
  br label %97

97:                                               ; preds = %88, %62, %38
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %112, %97
  %101 = load i32, i32* %6, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load %struct.veth_priv*, %struct.veth_priv** %4, align 8
  %105 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %104, i32 0, i32 0
  %106 = load %struct.veth_rq*, %struct.veth_rq** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %106, i64 %108
  %110 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %109, i32 0, i32 0
  %111 = call i32 @xdp_rxq_info_unreg(%struct.TYPE_5__* %110)
  br label %112

112:                                              ; preds = %103
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %6, align 4
  br label %100

115:                                              ; preds = %100
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %87
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.veth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xdp_rxq_info_is_reg(%struct.TYPE_5__*) #1

declare dso_local i32 @xdp_rxq_info_reg(%struct.TYPE_5__*, %struct.net_device*, i32) #1

declare dso_local i32 @xdp_rxq_info_reg_mem_model(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @veth_napi_add(%struct.net_device*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32) #1

declare dso_local i32 @xdp_rxq_info_unreg(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
