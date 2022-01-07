; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_open_alloc_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_open_alloc_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, i32*, %struct.TYPE_7__, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@NFP_NET_CFG_EXN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s-exn\00", align 1
@NFP_NET_IRQ_EXN_IDX = common dso_local global i64 0, align 8
@NFP_NET_CFG_LSC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s-lsc\00", align 1
@NFP_NET_IRQ_LSC_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*)* @nfp_net_open_alloc_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_open_alloc_all(%struct.nfp_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  %6 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %7 = load i32, i32* @NFP_NET_CFG_EXN, align 4
  %8 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %9 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* @NFP_NET_IRQ_EXN_IDX, align 8
  %12 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %13 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @nfp_net_aux_irq_request(%struct.nfp_net* %6, i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10, i32 4, i64 %11, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %139

20:                                               ; preds = %1
  %21 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %22 = load i32, i32* @NFP_NET_CFG_LSC, align 4
  %23 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %24 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* @NFP_NET_IRQ_LSC_IDX, align 8
  %27 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %28 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @nfp_net_aux_irq_request(%struct.nfp_net* %21, i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 4, i64 %26, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %133

34:                                               ; preds = %20
  %35 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %36 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i64, i64* @NFP_NET_IRQ_LSC_IDX, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @disable_irq(i32 %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %64, %34
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %46 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %43
  %51 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %52 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %53 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @nfp_net_prepare_vector(%struct.nfp_net* %51, i32* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %114

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %43

67:                                               ; preds = %43
  %68 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %69 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %70 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %69, i32 0, i32 2
  %71 = call i32 @nfp_net_rx_rings_prepare(%struct.nfp_net* %68, %struct.TYPE_7__* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %109

75:                                               ; preds = %67
  %76 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %77 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %78 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %77, i32 0, i32 2
  %79 = call i32 @nfp_net_tx_rings_prepare(%struct.nfp_net* %76, %struct.TYPE_7__* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %105

83:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %101, %83
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %87 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %84
  %91 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %92 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %91, i32 0, i32 2
  %93 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %94 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @nfp_net_vector_assign_rings(%struct.TYPE_7__* %92, i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %90
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %84

104:                                              ; preds = %84
  store i32 0, i32* %2, align 4
  br label %139

105:                                              ; preds = %82
  %106 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %107 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %106, i32 0, i32 2
  %108 = call i32 @nfp_net_rx_rings_free(%struct.TYPE_7__* %107)
  br label %109

109:                                              ; preds = %105, %74
  %110 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %111 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %109, %62
  br label %115

115:                                              ; preds = %119, %114
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %5, align 4
  %118 = icmp ne i32 %116, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %121 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %122 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = call i32 @nfp_net_cleanup_vector(%struct.nfp_net* %120, i32* %126)
  br label %115

128:                                              ; preds = %115
  %129 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %130 = load i32, i32* @NFP_NET_CFG_LSC, align 4
  %131 = load i64, i64* @NFP_NET_IRQ_LSC_IDX, align 8
  %132 = call i32 @nfp_net_aux_irq_free(%struct.nfp_net* %129, i32 %130, i64 %131)
  br label %133

133:                                              ; preds = %128, %33
  %134 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %135 = load i32, i32* @NFP_NET_CFG_EXN, align 4
  %136 = load i64, i64* @NFP_NET_IRQ_EXN_IDX, align 8
  %137 = call i32 @nfp_net_aux_irq_free(%struct.nfp_net* %134, i32 %135, i64 %136)
  %138 = load i32, i32* %4, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %133, %104, %18
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @nfp_net_aux_irq_request(%struct.nfp_net*, i32, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @nfp_net_prepare_vector(%struct.nfp_net*, i32*, i32) #1

declare dso_local i32 @nfp_net_rx_rings_prepare(%struct.nfp_net*, %struct.TYPE_7__*) #1

declare dso_local i32 @nfp_net_tx_rings_prepare(%struct.nfp_net*, %struct.TYPE_7__*) #1

declare dso_local i32 @nfp_net_vector_assign_rings(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @nfp_net_rx_rings_free(%struct.TYPE_7__*) #1

declare dso_local i32 @nfp_net_cleanup_vector(%struct.nfp_net*, i32*) #1

declare dso_local i32 @nfp_net_aux_irq_free(%struct.nfp_net*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
