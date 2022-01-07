; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_mod_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_mod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx_mod = type { i64, i32, %struct.bna_rxq*, i64, i32, %struct.bna_rxp*, i64, i32, %struct.bna_rx*, i32, i64, %struct.bna* }
%struct.bna_rxq = type { i32 }
%struct.bna_rxp = type { i32 }
%struct.bna_rx = type { i32, i32, i32*, i32*, i32*, i32 }
%struct.bna = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.bna_res_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@BNA_MOD_RES_MEM_T_RX_ARRAY = common dso_local global i64 0, align 8
@BNA_MOD_RES_MEM_T_RXP_ARRAY = common dso_local global i64 0, align 8
@BNA_MOD_RES_MEM_T_RXQ_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_rx_mod_init(%struct.bna_rx_mod* %0, %struct.bna* %1, %struct.bna_res_info* %2) #0 {
  %4 = alloca %struct.bna_rx_mod*, align 8
  %5 = alloca %struct.bna*, align 8
  %6 = alloca %struct.bna_res_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bna_rx*, align 8
  %9 = alloca %struct.bna_rxp*, align 8
  %10 = alloca %struct.bna_rxq*, align 8
  store %struct.bna_rx_mod* %0, %struct.bna_rx_mod** %4, align 8
  store %struct.bna* %1, %struct.bna** %5, align 8
  store %struct.bna_res_info* %2, %struct.bna_res_info** %6, align 8
  %11 = load %struct.bna*, %struct.bna** %5, align 8
  %12 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %13 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %12, i32 0, i32 11
  store %struct.bna* %11, %struct.bna** %13, align 8
  %14 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %15 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %14, i32 0, i32 10
  store i64 0, i64* %15, align 8
  %16 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %17 = load i64, i64* @BNA_MOD_RES_MEM_T_RX_ARRAY, align 8
  %18 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %16, i64 %17
  %19 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.bna_rx*
  %27 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %28 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %27, i32 0, i32 8
  store %struct.bna_rx* %26, %struct.bna_rx** %28, align 8
  %29 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %30 = load i64, i64* @BNA_MOD_RES_MEM_T_RXP_ARRAY, align 8
  %31 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %29, i64 %30
  %32 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.bna_rxp*
  %40 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %41 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %40, i32 0, i32 5
  store %struct.bna_rxp* %39, %struct.bna_rxp** %41, align 8
  %42 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %43 = load i64, i64* @BNA_MOD_RES_MEM_T_RXQ_ARRAY, align 8
  %44 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %42, i64 %43
  %45 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.bna_rxq*
  %53 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %54 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %53, i32 0, i32 2
  store %struct.bna_rxq* %52, %struct.bna_rxq** %54, align 8
  %55 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %56 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %55, i32 0, i32 7
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %59 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %58, i32 0, i32 6
  store i64 0, i64* %59, align 8
  %60 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %61 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %60, i32 0, i32 1
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %64 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %66 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %65, i32 0, i32 4
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %69 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %71 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %70, i32 0, i32 9
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %109, %3
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.bna*, %struct.bna** %5, align 8
  %76 = getelementptr inbounds %struct.bna, %struct.bna* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %74, %79
  br i1 %80, label %81, label %112

81:                                               ; preds = %73
  %82 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %83 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %82, i32 0, i32 8
  %84 = load %struct.bna_rx*, %struct.bna_rx** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %84, i64 %86
  store %struct.bna_rx* %87, %struct.bna_rx** %8, align 8
  %88 = load %struct.bna_rx*, %struct.bna_rx** %8, align 8
  %89 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %88, i32 0, i32 5
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  %91 = load %struct.bna_rx*, %struct.bna_rx** %8, align 8
  %92 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %91, i32 0, i32 4
  store i32* null, i32** %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.bna_rx*, %struct.bna_rx** %8, align 8
  %95 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.bna_rx*, %struct.bna_rx** %8, align 8
  %97 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %96, i32 0, i32 3
  store i32* null, i32** %97, align 8
  %98 = load %struct.bna_rx*, %struct.bna_rx** %8, align 8
  %99 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %98, i32 0, i32 2
  store i32* null, i32** %99, align 8
  %100 = load %struct.bna_rx*, %struct.bna_rx** %8, align 8
  %101 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %100, i32 0, i32 1
  %102 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %103 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %102, i32 0, i32 7
  %104 = call i32 @list_add_tail(i32* %101, i32* %103)
  %105 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %106 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %105, i32 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %106, align 8
  br label %109

109:                                              ; preds = %81
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %73

112:                                              ; preds = %73
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %137, %112
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.bna*, %struct.bna** %5, align 8
  %116 = getelementptr inbounds %struct.bna, %struct.bna* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %114, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %113
  %122 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %123 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %122, i32 0, i32 5
  %124 = load %struct.bna_rxp*, %struct.bna_rxp** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %124, i64 %126
  store %struct.bna_rxp* %127, %struct.bna_rxp** %9, align 8
  %128 = load %struct.bna_rxp*, %struct.bna_rxp** %9, align 8
  %129 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %128, i32 0, i32 0
  %130 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %131 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %130, i32 0, i32 4
  %132 = call i32 @list_add_tail(i32* %129, i32* %131)
  %133 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %134 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %121
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %113

140:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %166, %140
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.bna*, %struct.bna** %5, align 8
  %144 = getelementptr inbounds %struct.bna, %struct.bna* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %147, 2
  %149 = icmp slt i32 %142, %148
  br i1 %149, label %150, label %169

150:                                              ; preds = %141
  %151 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %152 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %151, i32 0, i32 2
  %153 = load %struct.bna_rxq*, %struct.bna_rxq** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %153, i64 %155
  store %struct.bna_rxq* %156, %struct.bna_rxq** %10, align 8
  %157 = load %struct.bna_rxq*, %struct.bna_rxq** %10, align 8
  %158 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %157, i32 0, i32 0
  %159 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %160 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %159, i32 0, i32 1
  %161 = call i32 @list_add_tail(i32* %158, i32* %160)
  %162 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %163 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %163, align 8
  br label %166

166:                                              ; preds = %150
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %141

169:                                              ; preds = %141
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
