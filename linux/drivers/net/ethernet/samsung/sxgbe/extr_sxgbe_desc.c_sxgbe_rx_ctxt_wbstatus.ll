; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_desc.c_sxgbe_rx_ctxt_wbstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_desc.c_sxgbe_rx_ctxt_wbstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_rx_ctxt_desc = type { i64, i64 }
%struct.sxgbe_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@RX_NO_PTP = common dso_local global i64 0, align 8
@RX_PTP_SYNC = common dso_local global i64 0, align 8
@RX_PTP_FOLLOW_UP = common dso_local global i64 0, align 8
@RX_PTP_DELAY_REQ = common dso_local global i64 0, align 8
@RX_PTP_DELAY_RESP = common dso_local global i64 0, align 8
@RX_PTP_PDELAY_REQ = common dso_local global i64 0, align 8
@RX_PTP_PDELAY_RESP = common dso_local global i64 0, align 8
@RX_PTP_PDELAY_FOLLOW_UP = common dso_local global i64 0, align 8
@RX_PTP_ANNOUNCE = common dso_local global i64 0, align 8
@RX_PTP_MGMT = common dso_local global i64 0, align 8
@RX_PTP_SIGNAL = common dso_local global i64 0, align 8
@RX_PTP_RESV_MSG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sxgbe_rx_ctxt_desc*, %struct.sxgbe_extra_stats*)* @sxgbe_rx_ctxt_wbstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sxgbe_rx_ctxt_wbstatus(%struct.sxgbe_rx_ctxt_desc* %0, %struct.sxgbe_extra_stats* %1) #0 {
  %3 = alloca %struct.sxgbe_rx_ctxt_desc*, align 8
  %4 = alloca %struct.sxgbe_extra_stats*, align 8
  store %struct.sxgbe_rx_ctxt_desc* %0, %struct.sxgbe_rx_ctxt_desc** %3, align 8
  store %struct.sxgbe_extra_stats* %1, %struct.sxgbe_extra_stats** %4, align 8
  %5 = load %struct.sxgbe_rx_ctxt_desc*, %struct.sxgbe_rx_ctxt_desc** %3, align 8
  %6 = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, %struct.sxgbe_rx_ctxt_desc* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %4, align 8
  %11 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %10, i32 0, i32 12
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.sxgbe_rx_ctxt_desc*, %struct.sxgbe_rx_ctxt_desc** %3, align 8
  %16 = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, %struct.sxgbe_rx_ctxt_desc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RX_NO_PTP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %4, align 8
  %22 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %21, i32 0, i32 11
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %157

25:                                               ; preds = %14
  %26 = load %struct.sxgbe_rx_ctxt_desc*, %struct.sxgbe_rx_ctxt_desc** %3, align 8
  %27 = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, %struct.sxgbe_rx_ctxt_desc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RX_PTP_SYNC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %4, align 8
  %33 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %156

36:                                               ; preds = %25
  %37 = load %struct.sxgbe_rx_ctxt_desc*, %struct.sxgbe_rx_ctxt_desc** %3, align 8
  %38 = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, %struct.sxgbe_rx_ctxt_desc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RX_PTP_FOLLOW_UP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %4, align 8
  %44 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %155

47:                                               ; preds = %36
  %48 = load %struct.sxgbe_rx_ctxt_desc*, %struct.sxgbe_rx_ctxt_desc** %3, align 8
  %49 = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, %struct.sxgbe_rx_ctxt_desc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RX_PTP_DELAY_REQ, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %4, align 8
  %55 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %154

58:                                               ; preds = %47
  %59 = load %struct.sxgbe_rx_ctxt_desc*, %struct.sxgbe_rx_ctxt_desc** %3, align 8
  %60 = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, %struct.sxgbe_rx_ctxt_desc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RX_PTP_DELAY_RESP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %4, align 8
  %66 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %153

69:                                               ; preds = %58
  %70 = load %struct.sxgbe_rx_ctxt_desc*, %struct.sxgbe_rx_ctxt_desc** %3, align 8
  %71 = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, %struct.sxgbe_rx_ctxt_desc* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @RX_PTP_PDELAY_REQ, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %4, align 8
  %77 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %152

80:                                               ; preds = %69
  %81 = load %struct.sxgbe_rx_ctxt_desc*, %struct.sxgbe_rx_ctxt_desc** %3, align 8
  %82 = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, %struct.sxgbe_rx_ctxt_desc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @RX_PTP_PDELAY_RESP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %4, align 8
  %88 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %151

91:                                               ; preds = %80
  %92 = load %struct.sxgbe_rx_ctxt_desc*, %struct.sxgbe_rx_ctxt_desc** %3, align 8
  %93 = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, %struct.sxgbe_rx_ctxt_desc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @RX_PTP_PDELAY_FOLLOW_UP, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %4, align 8
  %99 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %150

102:                                              ; preds = %91
  %103 = load %struct.sxgbe_rx_ctxt_desc*, %struct.sxgbe_rx_ctxt_desc** %3, align 8
  %104 = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, %struct.sxgbe_rx_ctxt_desc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @RX_PTP_ANNOUNCE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %4, align 8
  %110 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %149

113:                                              ; preds = %102
  %114 = load %struct.sxgbe_rx_ctxt_desc*, %struct.sxgbe_rx_ctxt_desc** %3, align 8
  %115 = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, %struct.sxgbe_rx_ctxt_desc* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @RX_PTP_MGMT, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %4, align 8
  %121 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %148

124:                                              ; preds = %113
  %125 = load %struct.sxgbe_rx_ctxt_desc*, %struct.sxgbe_rx_ctxt_desc** %3, align 8
  %126 = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, %struct.sxgbe_rx_ctxt_desc* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @RX_PTP_SIGNAL, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %4, align 8
  %132 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  br label %147

135:                                              ; preds = %124
  %136 = load %struct.sxgbe_rx_ctxt_desc*, %struct.sxgbe_rx_ctxt_desc** %3, align 8
  %137 = getelementptr inbounds %struct.sxgbe_rx_ctxt_desc, %struct.sxgbe_rx_ctxt_desc* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @RX_PTP_RESV_MSG, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load %struct.sxgbe_extra_stats*, %struct.sxgbe_extra_stats** %4, align 8
  %143 = getelementptr inbounds %struct.sxgbe_extra_stats, %struct.sxgbe_extra_stats* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %141, %135
  br label %147

147:                                              ; preds = %146, %130
  br label %148

148:                                              ; preds = %147, %119
  br label %149

149:                                              ; preds = %148, %108
  br label %150

150:                                              ; preds = %149, %97
  br label %151

151:                                              ; preds = %150, %86
  br label %152

152:                                              ; preds = %151, %75
  br label %153

153:                                              ; preds = %152, %64
  br label %154

154:                                              ; preds = %153, %53
  br label %155

155:                                              ; preds = %154, %42
  br label %156

156:                                              ; preds = %155, %31
  br label %157

157:                                              ; preds = %156, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
