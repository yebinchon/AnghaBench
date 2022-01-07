; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_update_xoff_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_update_xoff_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, %struct.ixgbe_ring**, %struct.ixgbe_ring**, i32, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.ixgbe_hw_stats, %struct.ixgbe_hw }
%struct.ixgbe_ring = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_hw_stats = type { i32* }
%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IXGBE_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@MAX_TX_PACKET_BUFFERS = common dso_local global i32 0, align 4
@__IXGBE_HANG_CHECK_ARMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_update_xoff_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_update_xoff_received(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_hw_stats*, align 8
  %5 = alloca [8 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ixgbe_ring*, align 8
  %11 = alloca %struct.ixgbe_ring*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 9
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %3, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 8
  store %struct.ixgbe_hw_stats* %15, %struct.ixgbe_hw_stats** %4, align 8
  %16 = bitcast [8 x i64]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 64, i1 false)
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %21, i32 0, i32 6
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %1
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 6
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %25, %1
  %38 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IXGBE_FLAG_DCB_ENABLED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44, %37
  %48 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %49 = call i32 @ixgbe_update_xoff_rx_lfc(%struct.ixgbe_adapter* %48)
  br label %157

50:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %92, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @MAX_TX_PACKET_BUFFERS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %95

55:                                               ; preds = %51
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %65 [
    i32 128, label %60
  ]

60:                                               ; preds = %55
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @IXGBE_PXOFFRXC(i32 %62)
  %64 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %61, i32 %63)
  store i64 %64, i64* %9, align 8
  br label %70

65:                                               ; preds = %55
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @IXGBE_PXOFFRXCNT(i32 %67)
  %69 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %66, i32 %68)
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.ixgbe_hw_stats*, %struct.ixgbe_hw_stats** %4, align 8
  %73 = getelementptr inbounds %struct.ixgbe_hw_stats, %struct.ixgbe_hw_stats* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %71
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @netdev_get_prio_tc_map(i32 %84, i32 %85)
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %70
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %51

95:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %123, %95
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %99 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %126

102:                                              ; preds = %96
  %103 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %104 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %103, i32 0, i32 4
  %105 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %105, i64 %107
  %109 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %108, align 8
  store %struct.ixgbe_ring* %109, %struct.ixgbe_ring** %10, align 8
  %110 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %10, align 8
  %111 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %6, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %102
  %118 = load i32, i32* @__IXGBE_HANG_CHECK_ARMED, align 4
  %119 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %10, align 8
  %120 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %119, i32 0, i32 1
  %121 = call i32 @clear_bit(i32 %118, i32* %120)
  br label %122

122:                                              ; preds = %117, %102
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %96

126:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %154, %126
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %130 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %157

133:                                              ; preds = %127
  %134 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %135 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %134, i32 0, i32 3
  %136 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %136, i64 %138
  %140 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %139, align 8
  store %struct.ixgbe_ring* %140, %struct.ixgbe_ring** %11, align 8
  %141 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %142 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %6, align 8
  %144 = load i64, i64* %6, align 8
  %145 = getelementptr inbounds [8 x i64], [8 x i64]* %5, i64 0, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %133
  %149 = load i32, i32* @__IXGBE_HANG_CHECK_ARMED, align 4
  %150 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %11, align 8
  %151 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %150, i32 0, i32 1
  %152 = call i32 @clear_bit(i32 %149, i32* %151)
  br label %153

153:                                              ; preds = %148, %133
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %127

157:                                              ; preds = %47, %127
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ixgbe_update_xoff_rx_lfc(%struct.ixgbe_adapter*) #2

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #2

declare dso_local i32 @IXGBE_PXOFFRXC(i32) #2

declare dso_local i32 @IXGBE_PXOFFRXCNT(i32) #2

declare dso_local i64 @netdev_get_prio_tc_map(i32, i32) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
