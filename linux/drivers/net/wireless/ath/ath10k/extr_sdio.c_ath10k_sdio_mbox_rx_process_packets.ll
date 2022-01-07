; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_rx_process_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_rx_process_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.ath10k_htc }
%struct.ath10k_htc = type { %struct.ath10k_htc_ep* }
%struct.ath10k_htc_ep = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32*)* }
%struct.ath10k_sdio = type { i32, %struct.ath10k_sdio_rx_data*, i32 }
%struct.ath10k_sdio_rx_data = type { i64, i32*, i32, i32, i64 }
%struct.ath10k_htc_hdr = type { i32 }

@ATH10K_HTC_EP_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid endpoint in look-ahead: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ep %d is not connected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32*, i32*)* @ath10k_sdio_mbox_rx_process_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_mbox_rx_process_packets(%struct.ath10k* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ath10k_sdio*, align 8
  %8 = alloca %struct.ath10k_htc*, align 8
  %9 = alloca %struct.ath10k_sdio_rx_data*, align 8
  %10 = alloca %struct.ath10k_htc_ep*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %18 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %17)
  store %struct.ath10k_sdio* %18, %struct.ath10k_sdio** %7, align 8
  %19 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 0
  store %struct.ath10k_htc* %20, %struct.ath10k_htc** %8, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %119, %3
  %22 = load i32, i32* %13, align 4
  %23 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %7, align 8
  %24 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %122

27:                                               ; preds = %21
  %28 = load i32*, i32** %5, align 8
  store i32* %28, i32** %15, align 8
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %16, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %16, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = bitcast i32* %34 to %struct.ath10k_htc_hdr*
  %36 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @ATH10K_HTC_EP_COUNT, align 4
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %27
  %42 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @ath10k_warn(%struct.ath10k* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %123

47:                                               ; preds = %27
  %48 = load %struct.ath10k_htc*, %struct.ath10k_htc** %8, align 8
  %49 = getelementptr inbounds %struct.ath10k_htc, %struct.ath10k_htc* %48, i32 0, i32 0
  %50 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %50, i64 %52
  store %struct.ath10k_htc_ep* %53, %struct.ath10k_htc_ep** %10, align 8
  %54 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %10, align 8
  %55 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %47
  %59 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @ath10k_warn(%struct.ath10k* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %12, align 4
  br label %123

64:                                               ; preds = %47
  %65 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %7, align 8
  %66 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %65, i32 0, i32 1
  %67 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %67, i64 %69
  store %struct.ath10k_sdio_rx_data* %70, %struct.ath10k_sdio_rx_data** %9, align 8
  %71 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %9, align 8
  %72 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %64
  %76 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %9, align 8
  %77 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %16, align 4
  store i32* null, i32** %15, align 8
  store i32* null, i32** %14, align 8
  br label %83

83:                                               ; preds = %80, %75, %64
  %84 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %85 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %9, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = call i32 @ath10k_sdio_mbox_rx_process_packet(%struct.ath10k* %84, %struct.ath10k_sdio_rx_data* %85, i32* %86, i32* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %123

92:                                               ; preds = %83
  %93 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %9, align 8
  %94 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %92
  %98 = load %struct.ath10k_htc_ep*, %struct.ath10k_htc_ep** %10, align 8
  %99 = getelementptr inbounds %struct.ath10k_htc_ep, %struct.ath10k_htc_ep* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32 (i32, i32*)*, i32 (i32, i32*)** %100, align 8
  %102 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %7, align 8
  %103 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %9, align 8
  %106 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 %101(i32 %104, i32* %107)
  br label %114

109:                                              ; preds = %92
  %110 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %9, align 8
  %111 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @kfree_skb(i32* %112)
  br label %114

114:                                              ; preds = %109, %97
  %115 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %9, align 8
  %116 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %115, i32 0, i32 1
  store i32* null, i32** %116, align 8
  %117 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %9, align 8
  %118 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %21

122:                                              ; preds = %21
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %122, %91, %58, %41
  br label %124

124:                                              ; preds = %138, %123
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %7, align 8
  %127 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %124
  %131 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %7, align 8
  %132 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %131, i32 0, i32 1
  %133 = load %struct.ath10k_sdio_rx_data*, %struct.ath10k_sdio_rx_data** %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ath10k_sdio_rx_data, %struct.ath10k_sdio_rx_data* %133, i64 %135
  %137 = call i32 @ath10k_sdio_mbox_free_rx_pkt(%struct.ath10k_sdio_rx_data* %136)
  br label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %124

141:                                              ; preds = %124
  %142 = load i32, i32* %12, align 4
  ret i32 %142
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_sdio_mbox_rx_process_packet(%struct.ath10k*, %struct.ath10k_sdio_rx_data*, i32*, i32*) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @ath10k_sdio_mbox_free_rx_pkt(%struct.ath10k_sdio_rx_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
