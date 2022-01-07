; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_configure_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, i64, i32, i32, i64, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__*, %struct.e1000_hw }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.e1000_hw = type { i64 }

@ETH_DATA_LEN = common dso_local global i64 0, align 8
@e1000_clean_jumbo_rx_irq = common dso_local global i32 0, align 4
@e1000_alloc_jumbo_rx_buffers = common dso_local global i32 0, align 4
@e1000_clean_rx_irq = common dso_local global i32 0, align 4
@e1000_alloc_rx_buffers = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@RDTR = common dso_local global i32 0, align 4
@e1000_82540 = common dso_local global i64 0, align 8
@RADV = common dso_local global i32 0, align 4
@ITR = common dso_local global i32 0, align 4
@RDLEN = common dso_local global i32 0, align 4
@RDBAH = common dso_local global i32 0, align 4
@RDBAL = common dso_local global i32 0, align 4
@RDT = common dso_local global i32 0, align 4
@RDH = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i64 0, align 8
@E1000_RDH = common dso_local global i32 0, align 4
@E1000_82542_RDH = common dso_local global i32 0, align 4
@E1000_RDT = common dso_local global i32 0, align 4
@E1000_82542_RDT = common dso_local global i32 0, align 4
@RXCSUM = common dso_local global i32 0, align 4
@E1000_RXCSUM_TUOFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_configure_rx(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 10
  store %struct.e1000_hw* %9, %struct.e1000_hw** %4, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 9
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ETH_DATA_LEN, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 6
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @e1000_clean_jumbo_rx_irq, align 4
  %28 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @e1000_alloc_jumbo_rx_buffers, align 4
  %31 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  br label %49

33:                                               ; preds = %1
  %34 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %34, i32 0, i32 6
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @e1000_clean_rx_irq, align 4
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @e1000_alloc_rx_buffers, align 4
  %47 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %33, %17
  %50 = load i32, i32* @RCTL, align 4
  %51 = call i32 @er32(i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @RCTL, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @E1000_RCTL_EN, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = call i32 @ew32(i32 %52, i32 %56)
  %58 = load i32, i32* @RDTR, align 4
  %59 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ew32(i32 %58, i32 %61)
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %64 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @e1000_82540, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %49
  %69 = load i32, i32* @RADV, align 4
  %70 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ew32(i32 %69, i32 %72)
  %74 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %68
  %79 = load i32, i32* @ITR, align 4
  %80 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %81 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %82, 256
  %84 = sdiv i32 1000000000, %83
  %85 = call i32 @ew32(i32 %79, i32 %84)
  br label %86

86:                                               ; preds = %78, %68
  br label %87

87:                                               ; preds = %86, %49
  %88 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %92 [
    i32 1, label %91
  ]

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %87, %91
  %93 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %94 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %93, i32 0, i32 6
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* @RDLEN, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @ew32(i32 %99, i32 %100)
  %102 = load i32, i32* @RDBAH, align 4
  %103 = load i32, i32* %3, align 4
  %104 = ashr i32 %103, 32
  %105 = call i32 @ew32(i32 %102, i32 %104)
  %106 = load i32, i32* @RDBAL, align 4
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = and i64 %108, 4294967295
  %110 = trunc i64 %109 to i32
  %111 = call i32 @ew32(i32 %106, i32 %110)
  %112 = load i32, i32* @RDT, align 4
  %113 = call i32 @ew32(i32 %112, i32 0)
  %114 = load i32, i32* @RDH, align 4
  %115 = call i32 @ew32(i32 %114, i32 0)
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %117 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @e1000_82543, align 8
  %120 = icmp sge i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %92
  %122 = load i32, i32* @E1000_RDH, align 4
  br label %125

123:                                              ; preds = %92
  %124 = load i32, i32* @E1000_82542_RDH, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %128 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %127, i32 0, i32 6
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  store i32 %126, i32* %131, align 4
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %133 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @e1000_82543, align 8
  %136 = icmp sge i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %125
  %138 = load i32, i32* @E1000_RDT, align 4
  br label %141

139:                                              ; preds = %125
  %140 = load i32, i32* @E1000_82542_RDT, align 4
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i32 [ %138, %137 ], [ %140, %139 ]
  %143 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %144 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %143, i32 0, i32 6
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  store i32 %142, i32* %147, align 4
  br label %148

148:                                              ; preds = %141
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %150 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @e1000_82543, align 8
  %153 = icmp sge i64 %151, %152
  br i1 %153, label %154, label %174

154:                                              ; preds = %148
  %155 = load i32, i32* @RXCSUM, align 4
  %156 = call i32 @er32(i32 %155)
  store i32 %156, i32* %7, align 4
  %157 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %158 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load i32, i32* @E1000_RXCSUM_TUOFL, align 4
  %163 = load i32, i32* %7, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %7, align 4
  br label %170

165:                                              ; preds = %154
  %166 = load i32, i32* @E1000_RXCSUM_TUOFL, align 4
  %167 = xor i32 %166, -1
  %168 = load i32, i32* %7, align 4
  %169 = and i32 %168, %167
  store i32 %169, i32* %7, align 4
  br label %170

170:                                              ; preds = %165, %161
  %171 = load i32, i32* @RXCSUM, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @ew32(i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %148
  %175 = load i32, i32* @RCTL, align 4
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @E1000_RCTL_EN, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @ew32(i32 %175, i32 %178)
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
