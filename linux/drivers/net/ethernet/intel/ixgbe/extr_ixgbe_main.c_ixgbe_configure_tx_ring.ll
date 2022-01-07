; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i64, i64, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ixgbe_ring = type { i32, i32, i32, i32, i32, i32, %struct.ixgbe_q_vector*, i64, i64, i64, i32*, i32 }
%struct.ixgbe_q_vector = type { i64, i32 }

@IXGBE_TXDCTL_ENABLE = common dso_local global i32 0, align 4
@IXGBE_100K_ITR = common dso_local global i64 0, align 8
@IXGBE_FLAG_FDIR_HASH_CAPABLE = common dso_local global i32 0, align 4
@__IXGBE_TX_FDIR_INIT_DONE = common dso_local global i32 0, align 4
@__IXGBE_TX_XPS_INIT_DONE = common dso_local global i32 0, align 4
@__IXGBE_HANG_CHECK_ARMED = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_LINKS = common dso_local global i64 0, align 8
@IXGBE_LINKS_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not enable Tx Queue %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_configure_tx_ring(%struct.ixgbe_adapter* %0, %struct.ixgbe_ring* %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ixgbe_q_vector*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %4, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 3
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %5, align 8
  %13 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  store i32 10, i32* %7, align 4
  %16 = load i32, i32* @IXGBE_TXDCTL_ENABLE, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %18 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %21 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %20, i32 0, i32 10
  store i32* null, i32** %21, align 8
  %22 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %23 = call i64 @ring_is_xdp(%struct.ixgbe_ring* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %27 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %28 = call i32* @ixgbe_xsk_umem(%struct.ixgbe_adapter* %26, %struct.ixgbe_ring* %27)
  %29 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %30 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %29, i32 0, i32 10
  store i32* %28, i32** %30, align 8
  br label %31

31:                                               ; preds = %25, %2
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @IXGBE_TXDCTL(i32 %33)
  %35 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %32, i64 %34, i32 0)
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %37 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %36)
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @IXGBE_TDBAL(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @DMA_BIT_MASK(i32 32)
  %43 = and i32 %41, %42
  %44 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %38, i64 %40, i32 %43)
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @IXGBE_TDBAH(i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 32
  %50 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %45, i64 %47, i32 %49)
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @IXGBE_TDLEN(i32 %52)
  %54 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %51, i64 %53, i32 %59)
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @IXGBE_TDH(i32 %62)
  %64 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %61, i64 %63, i32 0)
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @IXGBE_TDT(i32 %66)
  %68 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %65, i64 %67, i32 0)
  %69 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @IXGBE_TDT(i32 %72)
  %74 = add nsw i64 %71, %73
  %75 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %76 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %75, i32 0, i32 9
  store i64 %74, i64* %76, align 8
  %77 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %78 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %77, i32 0, i32 6
  %79 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %78, align 8
  %80 = icmp ne %struct.ixgbe_q_vector* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %31
  %82 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %83 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %82, i32 0, i32 6
  %84 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %83, align 8
  %85 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IXGBE_100K_ITR, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %81, %31
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, 65536
  store i32 %91, i32* %8, align 4
  br label %95

92:                                               ; preds = %81
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, 524288
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, 288
  store i32 %97, i32* %8, align 4
  %98 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IXGBE_FLAG_FDIR_HASH_CAPABLE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %95
  %105 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %109 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %108, i32 0, i32 7
  store i64 %107, i64* %109, align 8
  %110 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %111 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %110, i32 0, i32 8
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* @__IXGBE_TX_FDIR_INIT_DONE, align 4
  %113 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %114 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %113, i32 0, i32 3
  %115 = call i32 @set_bit(i32 %112, i32* %114)
  br label %119

116:                                              ; preds = %95
  %117 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %118 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %117, i32 0, i32 7
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %116, %104
  %120 = load i32, i32* @__IXGBE_TX_XPS_INIT_DONE, align 4
  %121 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %122 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %121, i32 0, i32 3
  %123 = call i32 @test_and_set_bit(i32 %120, i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %142, label %125

125:                                              ; preds = %119
  %126 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %127 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %126, i32 0, i32 6
  %128 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %127, align 8
  store %struct.ixgbe_q_vector* %128, %struct.ixgbe_q_vector** %10, align 8
  %129 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %10, align 8
  %130 = icmp ne %struct.ixgbe_q_vector* %129, null
  br i1 %130, label %131, label %141

131:                                              ; preds = %125
  %132 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %133 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %10, align 8
  %136 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %135, i32 0, i32 1
  %137 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %138 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @netif_set_xps_queue(i32 %134, i32* %136, i32 %139)
  br label %141

141:                                              ; preds = %131, %125
  br label %142

142:                                              ; preds = %141, %119
  %143 = load i32, i32* @__IXGBE_HANG_CHECK_ARMED, align 4
  %144 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %145 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %144, i32 0, i32 3
  %146 = call i32 @clear_bit(i32 %143, i32* %145)
  %147 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %148 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %151 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 4, %153
  %155 = trunc i64 %154 to i32
  %156 = call i32 @memset(i32 %149, i32 0, i32 %155)
  %157 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i64 @IXGBE_TXDCTL(i32 %158)
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %157, i64 %159, i32 %160)
  %162 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %163 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %142
  %169 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %170 = load i64, i64* @IXGBE_LINKS, align 8
  %171 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %169, i64 %170)
  %172 = load i32, i32* @IXGBE_LINKS_UP, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %168
  br label %202

176:                                              ; preds = %168, %142
  br label %177

177:                                              ; preds = %193, %176
  %178 = call i32 @usleep_range(i32 1000, i32 2000)
  %179 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %180 = load i32, i32* %9, align 4
  %181 = call i64 @IXGBE_TXDCTL(i32 %180)
  %182 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %179, i64 %181)
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %177
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @IXGBE_TXDCTL_ENABLE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  br label %193

193:                                              ; preds = %187, %183
  %194 = phi i1 [ false, %183 ], [ %192, %187 ]
  br i1 %194, label %177, label %195

195:                                              ; preds = %193
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %195
  %199 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @hw_dbg(%struct.ixgbe_hw* %199, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %175, %198, %195
  ret void
}

declare dso_local i64 @ring_is_xdp(%struct.ixgbe_ring*) #1

declare dso_local i32* @ixgbe_xsk_umem(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i64, i32) #1

declare dso_local i64 @IXGBE_TXDCTL(i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_TDBAL(i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @IXGBE_TDBAH(i32) #1

declare dso_local i64 @IXGBE_TDLEN(i32) #1

declare dso_local i64 @IXGBE_TDH(i32) #1

declare dso_local i64 @IXGBE_TDT(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @netif_set_xps_queue(i32, i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
