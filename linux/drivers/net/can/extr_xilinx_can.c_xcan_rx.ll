; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.xcan_priv = type { i32 (%struct.xcan_priv*, i32)* }
%struct.can_frame = type { i32, i32, i64 }
%struct.sk_buff = type { i32 }

@XCAN_DLCR_DLC_SHIFT = common dso_local global i32 0, align 4
@XCAN_IDR_IDE_MASK = common dso_local global i32 0, align 4
@XCAN_IDR_ID1_MASK = common dso_local global i32 0, align 4
@XCAN_IDR_ID2_MASK = common dso_local global i32 0, align 4
@XCAN_IDR_ID2_SHIFT = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@XCAN_IDR_RTR_MASK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@XCAN_IDR_ID1_SHIFT = common dso_local global i32 0, align 4
@XCAN_IDR_SRR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @xcan_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcan_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xcan_priv*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca %struct.can_frame*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.xcan_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.xcan_priv* %14, %struct.xcan_priv** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  store %struct.net_device_stats* %16, %struct.net_device_stats** %7, align 8
  %17 = bitcast [2 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.sk_buff* @alloc_can_skb(%struct.net_device* %18, %struct.can_frame** %8)
  store %struct.sk_buff* %19, %struct.sk_buff** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %28 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %172

31:                                               ; preds = %2
  %32 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %33 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %32, i32 0, i32 0
  %34 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %33, align 8
  %35 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @XCAN_FRAME_ID_OFFSET(i32 %36)
  %38 = call i32 %34(%struct.xcan_priv* %35, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %40 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %39, i32 0, i32 0
  %41 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %40, align 8
  %42 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @XCAN_FRAME_DLC_OFFSET(i32 %43)
  %45 = call i32 %41(%struct.xcan_priv* %42, i32 %44)
  %46 = load i32, i32* @XCAN_DLCR_DLC_SHIFT, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @get_can_dlc(i32 %48)
  %50 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %51 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @XCAN_IDR_IDE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %88

56:                                               ; preds = %31
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @XCAN_IDR_ID1_MASK, align 4
  %59 = and i32 %57, %58
  %60 = ashr i32 %59, 3
  %61 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %62 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @XCAN_IDR_ID2_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @XCAN_IDR_ID2_SHIFT, align 4
  %67 = ashr i32 %65, %66
  %68 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %69 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @CAN_EFF_FLAG, align 4
  %73 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %74 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @XCAN_IDR_RTR_MASK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %56
  %82 = load i32, i32* @CAN_RTR_FLAG, align 4
  %83 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %84 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %56
  br label %107

88:                                               ; preds = %31
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @XCAN_IDR_ID1_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @XCAN_IDR_ID1_SHIFT, align 4
  %93 = ashr i32 %91, %92
  %94 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %95 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @XCAN_IDR_SRR_MASK, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %88
  %101 = load i32, i32* @CAN_RTR_FLAG, align 4
  %102 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %103 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %88
  br label %107

107:                                              ; preds = %106, %87
  %108 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %109 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %108, i32 0, i32 0
  %110 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %109, align 8
  %111 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @XCAN_FRAME_DW1_OFFSET(i32 %112)
  %114 = call i32 %110(%struct.xcan_priv* %111, i32 %113)
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %114, i32* %115, align 4
  %116 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %117 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %116, i32 0, i32 0
  %118 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %117, align 8
  %119 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @XCAN_FRAME_DW2_OFFSET(i32 %120)
  %122 = call i32 %118(%struct.xcan_priv* %119, i32 %121)
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %122, i32* %123, align 4
  %124 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %125 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @CAN_RTR_FLAG, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %158, label %130

130:                                              ; preds = %107
  %131 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %132 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @cpu_to_be32(i32 %137)
  %139 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %140 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to i32*
  store i32 %138, i32* %142, align 4
  br label %143

143:                                              ; preds = %135, %130
  %144 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %145 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %146, 4
  br i1 %147, label %148, label %157

148:                                              ; preds = %143
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @cpu_to_be32(i32 %150)
  %152 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %153 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 4
  %156 = inttoptr i64 %155 to i32*
  store i32 %151, i32* %156, align 4
  br label %157

157:                                              ; preds = %148, %143
  br label %158

158:                                              ; preds = %157, %107
  %159 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %160 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %163 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %167 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %171 = call i32 @netif_receive_skb(%struct.sk_buff* %170)
  store i32 1, i32* %3, align 4
  br label %172

172:                                              ; preds = %158, %26
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.xcan_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @XCAN_FRAME_ID_OFFSET(i32) #1

declare dso_local i32 @XCAN_FRAME_DLC_OFFSET(i32) #1

declare dso_local i32 @get_can_dlc(i32) #1

declare dso_local i32 @XCAN_FRAME_DW1_OFFSET(i32) #1

declare dso_local i32 @XCAN_FRAME_DW2_OFFSET(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
