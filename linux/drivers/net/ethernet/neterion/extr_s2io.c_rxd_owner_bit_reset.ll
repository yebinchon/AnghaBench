; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_rxd_owner_bit_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_rxd_owner_bit_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i64, %struct.net_device*, %struct.mac_info, %struct.config_param }
%struct.net_device = type { i32 }
%struct.mac_info = type { %struct.ring_info* }
%struct.ring_info = type { %struct.buffAdd**, %struct.TYPE_4__* }
%struct.buffAdd = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.RxD_t* }
%struct.RxD_t = type { i32 }
%struct.config_param = type { i32, %struct.rx_ring_config* }
%struct.rx_ring_config = type { i32 }
%struct.sk_buff = type { i32 }

@HEADER_ETHERNET_II_802_3_SIZE = common dso_local global i32 0, align 4
@HEADER_802_2_SIZE = common dso_local global i32 0, align 4
@HEADER_SNAP_SIZE = common dso_local global i32 0, align 4
@RXD_MODE_1 = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@RXD_MODE_3B = common dso_local global i64 0, align 8
@ALIGN_SIZE = common dso_local global i32 0, align 4
@BUF0_LEN = common dso_local global i32 0, align 4
@rxd_count = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@RXD_OWN_XENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2io_nic*)* @rxd_owner_bit_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxd_owner_bit_reset(%struct.s2io_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s2io_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.config_param*, align 8
  %10 = alloca %struct.mac_info*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.RxD_t*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.buffAdd*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.rx_ring_config*, align 8
  %19 = alloca %struct.ring_info*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %3, align 8
  store i32 0, i32* %7, align 4
  %20 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %21 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %20, i32 0, i32 3
  store %struct.config_param* %21, %struct.config_param** %9, align 8
  %22 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %23 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %22, i32 0, i32 2
  store %struct.mac_info* %23, %struct.mac_info** %10, align 8
  %24 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %25 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %24, i32 0, i32 1
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %11, align 8
  store %struct.RxD_t* null, %struct.RxD_t** %12, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  store %struct.buffAdd* null, %struct.buffAdd** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load %struct.net_device*, %struct.net_device** %11, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HEADER_ETHERNET_II_802_3_SIZE, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* @HEADER_802_2_SIZE, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @HEADER_SNAP_SIZE, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %37 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RXD_MODE_1, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %1
  %42 = load i64, i64* @NET_IP_ALIGN, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  br label %63

47:                                               ; preds = %1
  %48 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %49 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RXD_MODE_3B, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.net_device*, %struct.net_device** %11, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ALIGN_SIZE, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* @BUF0_LEN, align 4
  %60 = add nsw i32 %58, %59
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %53, %47
  br label %63

63:                                               ; preds = %62, %41
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %167, %63
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.config_param*, %struct.config_param** %9, align 8
  %67 = getelementptr inbounds %struct.config_param, %struct.config_param* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %170

70:                                               ; preds = %64
  %71 = load %struct.config_param*, %struct.config_param** %9, align 8
  %72 = getelementptr inbounds %struct.config_param, %struct.config_param* %71, i32 0, i32 1
  %73 = load %struct.rx_ring_config*, %struct.rx_ring_config** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %73, i64 %75
  store %struct.rx_ring_config* %76, %struct.rx_ring_config** %18, align 8
  %77 = load %struct.mac_info*, %struct.mac_info** %10, align 8
  %78 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %77, i32 0, i32 0
  %79 = load %struct.ring_info*, %struct.ring_info** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %79, i64 %81
  store %struct.ring_info* %82, %struct.ring_info** %19, align 8
  %83 = load %struct.rx_ring_config*, %struct.rx_ring_config** %18, align 8
  %84 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** @rxd_count, align 8
  %87 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %88 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  %93 = sdiv i32 %85, %92
  store i32 %93, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %163, %70
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %166

98:                                               ; preds = %94
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %159, %98
  %100 = load i32, i32* %6, align 4
  %101 = load i32*, i32** @rxd_count, align 8
  %102 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %103 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %100, %106
  br i1 %107, label %108, label %162

108:                                              ; preds = %99
  %109 = load %struct.ring_info*, %struct.ring_info** %19, align 8
  %110 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load %struct.RxD_t*, %struct.RxD_t** %120, align 8
  store %struct.RxD_t* %121, %struct.RxD_t** %12, align 8
  %122 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %123 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @RXD_MODE_3B, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %108
  %128 = load %struct.ring_info*, %struct.ring_info** %19, align 8
  %129 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %128, i32 0, i32 0
  %130 = load %struct.buffAdd**, %struct.buffAdd*** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.buffAdd*, %struct.buffAdd** %130, i64 %132
  %134 = load %struct.buffAdd*, %struct.buffAdd** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %134, i64 %136
  store %struct.buffAdd* %137, %struct.buffAdd** %14, align 8
  br label %138

138:                                              ; preds = %127, %108
  %139 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %140 = load %struct.RxD_t*, %struct.RxD_t** %12, align 8
  %141 = load %struct.buffAdd*, %struct.buffAdd** %14, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @set_rxd_buffer_pointer(%struct.s2io_nic* %139, %struct.RxD_t* %140, %struct.buffAdd* %141, %struct.sk_buff** %13, i32* %15, i32* %16, i32* %17, i32 %142)
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %171

148:                                              ; preds = %138
  %149 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %150 = load %struct.RxD_t*, %struct.RxD_t** %12, align 8
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @set_rxd_buffer_size(%struct.s2io_nic* %149, %struct.RxD_t* %150, i32 %151)
  %153 = call i32 (...) @dma_wmb()
  %154 = load i32, i32* @RXD_OWN_XENA, align 4
  %155 = load %struct.RxD_t*, %struct.RxD_t** %12, align 8
  %156 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %148
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %99

162:                                              ; preds = %99
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %5, align 4
  br label %94

166:                                              ; preds = %94
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %4, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %4, align 4
  br label %64

170:                                              ; preds = %64
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %147
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @set_rxd_buffer_pointer(%struct.s2io_nic*, %struct.RxD_t*, %struct.buffAdd*, %struct.sk_buff**, i32*, i32*, i32*, i32) #1

declare dso_local i32 @set_rxd_buffer_size(%struct.s2io_nic*, %struct.RxD_t*, i32) #1

declare dso_local i32 @dma_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
