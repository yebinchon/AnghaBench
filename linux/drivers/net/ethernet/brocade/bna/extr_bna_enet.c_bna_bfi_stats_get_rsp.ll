; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_bfi_stats_get_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_bfi_stats_get_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna = type { %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i32, %struct.bfi_enet_stats_req }
%struct.bfi_enet_stats_req = type { i32, i32 }
%struct.bfi_msgq_mhdr = type { i32 }

@mac = common dso_local global i32 0, align 4
@bpc = common dso_local global i32 0, align 4
@rad = common dso_local global i32 0, align 4
@rlb = common dso_local global i32 0, align 4
@fc_rx = common dso_local global i32 0, align 4
@fc_tx = common dso_local global i32 0, align 4
@BFI_ENET_CFG_MAX = common dso_local global i32 0, align 4
@BNA_CB_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna*, %struct.bfi_msgq_mhdr*)* @bna_bfi_stats_get_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_stats_get_rsp(%struct.bna* %0, %struct.bfi_msgq_mhdr* %1) #0 {
  %3 = alloca %struct.bna*, align 8
  %4 = alloca %struct.bfi_msgq_mhdr*, align 8
  %5 = alloca %struct.bfi_enet_stats_req*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bna* %0, %struct.bna** %3, align 8
  store %struct.bfi_msgq_mhdr* %1, %struct.bfi_msgq_mhdr** %4, align 8
  %14 = load %struct.bna*, %struct.bna** %3, align 8
  %15 = getelementptr inbounds %struct.bna, %struct.bna* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store %struct.bfi_enet_stats_req* %16, %struct.bfi_enet_stats_req** %5, align 8
  %17 = load %struct.bfi_enet_stats_req*, %struct.bfi_enet_stats_req** %5, align 8
  %18 = getelementptr inbounds %struct.bfi_enet_stats_req, %struct.bfi_enet_stats_req* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ntohl(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.bfi_enet_stats_req*, %struct.bfi_enet_stats_req** %5, align 8
  %22 = getelementptr inbounds %struct.bfi_enet_stats_req, %struct.bfi_enet_stats_req* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohl(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @mac, align 4
  %26 = load i32, i32* @mac, align 4
  %27 = call i32 @bna_stats_copy(i32 %25, i32 %26)
  %28 = load i32, i32* @bpc, align 4
  %29 = load i32, i32* @bpc, align 4
  %30 = call i32 @bna_stats_copy(i32 %28, i32 %29)
  %31 = load i32, i32* @rad, align 4
  %32 = load i32, i32* @rad, align 4
  %33 = call i32 @bna_stats_copy(i32 %31, i32 %32)
  %34 = load i32, i32* @rlb, align 4
  %35 = load i32, i32* @rad, align 4
  %36 = call i32 @bna_stats_copy(i32 %34, i32 %35)
  %37 = load i32, i32* @fc_rx, align 4
  %38 = load i32, i32* @fc_rx, align 4
  %39 = call i32 @bna_stats_copy(i32 %37, i32 %38)
  %40 = load i32, i32* @fc_tx, align 4
  %41 = load i32, i32* @fc_tx, align 4
  %42 = call i32 @bna_stats_copy(i32 %40, i32 %41)
  %43 = load %struct.bna*, %struct.bna** %3, align 8
  %44 = getelementptr inbounds %struct.bna, %struct.bna* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32* %49, i32** %6, align 8
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %90, %2
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @BFI_ENET_CFG_MAX, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %50
  %55 = load %struct.bna*, %struct.bna** %3, align 8
  %56 = getelementptr inbounds %struct.bna, %struct.bna* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @memset(i32* %63, i32 0, i32 4)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @BIT(i32 %66)
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %54
  store i32 1, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %85, %70
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @be64_to_cpu(i32 %77)
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %78, i32* %82, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %6, align 8
  br label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %71

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88, %54
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %50

93:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %134, %93
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @BFI_ENET_CFG_MAX, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %137

98:                                               ; preds = %94
  %99 = load %struct.bna*, %struct.bna** %3, align 8
  %100 = getelementptr inbounds %struct.bna, %struct.bna* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32* %106, i32** %7, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @memset(i32* %107, i32 0, i32 4)
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @BIT(i32 %110)
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %98
  store i32 1, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %115

115:                                              ; preds = %129, %114
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %115
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @be64_to_cpu(i32 %121)
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %6, align 8
  br label %129

129:                                              ; preds = %119
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %115

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132, %98
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %94

137:                                              ; preds = %94
  %138 = load %struct.bna*, %struct.bna** %3, align 8
  %139 = getelementptr inbounds %struct.bna, %struct.bna* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i32 0, i32* %140, align 4
  %141 = load %struct.bna*, %struct.bna** %3, align 8
  %142 = getelementptr inbounds %struct.bna, %struct.bna* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @BNA_CB_SUCCESS, align 4
  %145 = load %struct.bna*, %struct.bna** %3, align 8
  %146 = getelementptr inbounds %struct.bna, %struct.bna* %145, i32 0, i32 0
  %147 = call i32 @bnad_cb_stats_get(i32 %143, i32 %144, %struct.TYPE_8__* %146)
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @bna_stats_copy(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @bnad_cb_stats_get(i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
