; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_read_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd = type { %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32 }
%struct.kvaser_pciefd_rx_packet = type { i32*, i32 }

@KVASER_PCIEFD_PACKET_TYPE_SHIFT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_RPACKET_RTR = common dso_local global i32 0, align 4
@KVASER_PCIEFD_RPACKET_DLC_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Received unexpected packet type 0x%08X\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown packet type 0x%08X\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd*, i32*, i32)* @kvaser_pciefd_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_read_packet(%struct.kvaser_pciefd* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvaser_pciefd*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvaser_pciefd_rx_packet, align 8
  %11 = alloca %struct.kvaser_pciefd_rx_packet*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kvaser_pciefd* %0, %struct.kvaser_pciefd** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %5, align 8
  %18 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  store %struct.kvaser_pciefd_rx_packet* %10, %struct.kvaser_pciefd_rx_packet** %11, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %13, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @le32_to_cpu(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %3
  %37 = load i32*, i32** %6, align 8
  store i32 0, i32* %37, align 4
  store i32 0, i32* %4, align 4
  br label %168

38:                                               ; preds = %3
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le32_to_cpu(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %11, align 8
  %48 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @le32_to_cpu(i32 %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %11, align 8
  %60 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %58, i32* %62, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @memcpy(i32* %9, i32* %66, i32 4)
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 2
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @le64_to_cpu(i32 %70)
  %72 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %11, align 8
  %73 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %11, align 8
  %75 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @KVASER_PCIEFD_PACKET_TYPE_SHIFT, align 4
  %80 = ashr i32 %78, %79
  %81 = and i32 %80, 15
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  switch i32 %82, label %140 [
    i32 133, label %83
    i32 136, label %113
    i32 129, label %117
    i32 130, label %121
    i32 131, label %125
    i32 132, label %129
    i32 135, label %133
    i32 134, label %133
    i32 128, label %133
  ]

83:                                               ; preds = %38
  %84 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %5, align 8
  %85 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %11, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @kvaser_pciefd_handle_data_packet(%struct.kvaser_pciefd* %84, %struct.kvaser_pciefd_rx_packet* %85, i32* %89)
  store i32 %90, i32* %15, align 4
  %91 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %11, align 8
  %92 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @KVASER_PCIEFD_RPACKET_RTR, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %83
  %100 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %11, align 8
  %101 = getelementptr inbounds %struct.kvaser_pciefd_rx_packet, %struct.kvaser_pciefd_rx_packet* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @KVASER_PCIEFD_RPACKET_DLC_SHIFT, align 4
  %106 = ashr i32 %104, %105
  %107 = call i32 @can_dlc2len(i32 %106)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @DIV_ROUND_UP(i32 %108, i32 4)
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %99, %83
  br label %149

113:                                              ; preds = %38
  %114 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %5, align 8
  %115 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %11, align 8
  %116 = call i32 @kvaser_pciefd_handle_ack_packet(%struct.kvaser_pciefd* %114, %struct.kvaser_pciefd_rx_packet* %115)
  store i32 %116, i32* %15, align 4
  br label %149

117:                                              ; preds = %38
  %118 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %5, align 8
  %119 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %11, align 8
  %120 = call i32 @kvaser_pciefd_handle_status_packet(%struct.kvaser_pciefd* %118, %struct.kvaser_pciefd_rx_packet* %119)
  store i32 %120, i32* %15, align 4
  br label %149

121:                                              ; preds = %38
  %122 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %5, align 8
  %123 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %11, align 8
  %124 = call i32 @kvaser_pciefd_handle_error_packet(%struct.kvaser_pciefd* %122, %struct.kvaser_pciefd_rx_packet* %123)
  store i32 %124, i32* %15, align 4
  br label %149

125:                                              ; preds = %38
  %126 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %5, align 8
  %127 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %11, align 8
  %128 = call i32 @kvaser_pciefd_handle_eack_packet(%struct.kvaser_pciefd* %126, %struct.kvaser_pciefd_rx_packet* %127)
  store i32 %128, i32* %15, align 4
  br label %149

129:                                              ; preds = %38
  %130 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %5, align 8
  %131 = load %struct.kvaser_pciefd_rx_packet*, %struct.kvaser_pciefd_rx_packet** %11, align 8
  %132 = call i32 @kvaser_pciefd_handle_eflush_packet(%struct.kvaser_pciefd* %130, %struct.kvaser_pciefd_rx_packet* %131)
  store i32 %132, i32* %15, align 4
  br label %149

133:                                              ; preds = %38, %38, %38
  %134 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %5, align 8
  %135 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @dev_info(i32* %137, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %138)
  br label %149

140:                                              ; preds = %38
  %141 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %5, align 8
  %142 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @dev_err(i32* %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %15, align 4
  br label %149

149:                                              ; preds = %140, %133, %129, %125, %121, %117, %113, %112
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i32, i32* %15, align 4
  store i32 %153, i32* %4, align 4
  br label %168

154:                                              ; preds = %149
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load i32, i32* @EIO, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %168

164:                                              ; preds = %154
  %165 = load i32, i32* %13, align 4
  %166 = load i32*, i32** %6, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* %15, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %164, %161, %152, %36
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @kvaser_pciefd_handle_data_packet(%struct.kvaser_pciefd*, %struct.kvaser_pciefd_rx_packet*, i32*) #1

declare dso_local i32 @can_dlc2len(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @kvaser_pciefd_handle_ack_packet(%struct.kvaser_pciefd*, %struct.kvaser_pciefd_rx_packet*) #1

declare dso_local i32 @kvaser_pciefd_handle_status_packet(%struct.kvaser_pciefd*, %struct.kvaser_pciefd_rx_packet*) #1

declare dso_local i32 @kvaser_pciefd_handle_error_packet(%struct.kvaser_pciefd*, %struct.kvaser_pciefd_rx_packet*) #1

declare dso_local i32 @kvaser_pciefd_handle_eack_packet(%struct.kvaser_pciefd*, %struct.kvaser_pciefd_rx_packet*) #1

declare dso_local i32 @kvaser_pciefd_handle_eflush_packet(%struct.kvaser_pciefd*, %struct.kvaser_pciefd_rx_packet*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
