; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx_tso.c_efx_enqueue_skb_tso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_tx_tso.c_efx_enqueue_skb_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i64, i64, %struct.efx_nic* }
%struct.efx_nic = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tso_state = type { i64, i64, i64, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Out of memory for TSO headers, or DMA mapping error\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"TSO failed, rc = %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_enqueue_skb_tso(%struct.efx_tx_queue* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_tx_queue*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.efx_nic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tso_state, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %13 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %12, i32 0, i32 3
  %14 = load %struct.efx_nic*, %struct.efx_nic** %13, align 8
  store %struct.efx_nic* %14, %struct.efx_nic** %8, align 8
  %15 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %16 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %182

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @prefetch(i32 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @efx_tso_check_protocol(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %11, i32 0, i32 6
  store i32 %28, i32* %29, align 4
  %30 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %31 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %34 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %37)
  %39 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %40 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32 @tso_start(%struct.tso_state* %11, %struct.efx_nic* %39, %struct.efx_tx_queue* %40, %struct.sk_buff* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %22
  br label %130

46:                                               ; preds = %22
  %47 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %11, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %46
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = call i32 @EFX_WARN_ON_ONCE_PARANOID(i32 %59)
  store i32 0, i32* %9, align 4
  %61 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = call i32 @tso_get_fragment(%struct.tso_state* %11, %struct.efx_nic* %61, i64 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  br label %130

73:                                               ; preds = %53
  br label %75

74:                                               ; preds = %46
  store i32 -1, i32* %9, align 4
  br label %75

75:                                               ; preds = %74, %73
  %76 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i32 @tso_start_new_packet(%struct.efx_tx_queue* %76, %struct.sk_buff* %77, %struct.tso_state* %11)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %130

82:                                               ; preds = %75
  %83 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %84 = call i32 @prefetch_ptr(%struct.efx_tx_queue* %83)
  br label %85

85:                                               ; preds = %82, %127
  %86 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = call i32 @tso_fill_packet_with_fragment(%struct.efx_tx_queue* %86, %struct.sk_buff* %87, %struct.tso_state* %11)
  %89 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %11, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %85
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sge i32 %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %128

101:                                              ; preds = %92
  %102 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %103)
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = call i32 @tso_get_fragment(%struct.tso_state* %11, %struct.efx_nic* %102, i64 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  br label %130

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %85
  %116 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %11, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %5, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = call i32 @tso_start_new_packet(%struct.efx_tx_queue* %120, %struct.sk_buff* %121, %struct.tso_state* %11)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %130

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126, %115
  br label %85

128:                                              ; preds = %100
  %129 = load i32*, i32** %7, align 8
  store i32 1, i32* %129, align 4
  store i32 0, i32* %4, align 4
  br label %182

130:                                              ; preds = %125, %113, %81, %72, %45
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %137 = load i32, i32* @tx_err, align 4
  %138 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %139 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %136, i32 %137, i32 %140, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %150

142:                                              ; preds = %130
  %143 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %144 = load i32, i32* @tx_err, align 4
  %145 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %146 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %143, i32 %144, i32 %147, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %142, %135
  %151 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %11, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %150
  %155 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %156 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %155, i32 0, i32 0
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %11, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %11, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* @DMA_TO_DEVICE, align 4
  %164 = call i32 @dma_unmap_page(i32* %158, i32 %160, i64 %162, i32 %163)
  br label %165

165:                                              ; preds = %154, %150
  %166 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %11, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %165
  %170 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %171 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %170, i32 0, i32 0
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %11, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.tso_state, %struct.tso_state* %11, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* @DMA_TO_DEVICE, align 4
  %179 = call i32 @dma_unmap_single(i32* %173, i32 %175, i64 %177, i32 %178)
  br label %180

180:                                              ; preds = %169, %165
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %180, %128, %19
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @efx_tso_check_protocol(%struct.sk_buff*) #1

declare dso_local i32 @EFX_WARN_ON_ONCE_PARANOID(i32) #1

declare dso_local i32 @tso_start(%struct.tso_state*, %struct.efx_nic*, %struct.efx_tx_queue*, %struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @tso_get_fragment(%struct.tso_state*, %struct.efx_nic*, i64) #1

declare dso_local i32 @tso_start_new_packet(%struct.efx_tx_queue*, %struct.sk_buff*, %struct.tso_state*) #1

declare dso_local i32 @prefetch_ptr(%struct.efx_tx_queue*) #1

declare dso_local i32 @tso_fill_packet_with_fragment(%struct.efx_tx_queue*, %struct.sk_buff*, %struct.tso_state*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
