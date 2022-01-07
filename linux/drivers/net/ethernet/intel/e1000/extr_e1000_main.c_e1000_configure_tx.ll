; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_configure_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_configure_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.e1000_hw }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.e1000_hw = type { i32, i64, i64 }

@TDLEN = common dso_local global i32 0, align 4
@TDBAH = common dso_local global i32 0, align 4
@TDBAL = common dso_local global i32 0, align 4
@TDT = common dso_local global i32 0, align 4
@TDH = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i32 0, align 4
@E1000_TDH = common dso_local global i32 0, align 4
@E1000_82542_TDH = common dso_local global i32 0, align 4
@E1000_TDT = common dso_local global i32 0, align 4
@E1000_82542_TDT = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@DEFAULT_82543_TIPG_IPGT_FIBER = common dso_local global i32 0, align 4
@DEFAULT_82543_TIPG_IPGT_COPPER = common dso_local global i32 0, align 4
@DEFAULT_82542_TIPG_IPGT = common dso_local global i32 0, align 4
@DEFAULT_82542_TIPG_IPGR1 = common dso_local global i32 0, align 4
@DEFAULT_82542_TIPG_IPGR2 = common dso_local global i32 0, align 4
@DEFAULT_82543_TIPG_IPGR1 = common dso_local global i32 0, align 4
@DEFAULT_82543_TIPG_IPGR2 = common dso_local global i32 0, align 4
@E1000_TIPG_IPGR1_SHIFT = common dso_local global i32 0, align 4
@E1000_TIPG_IPGR2_SHIFT = common dso_local global i32 0, align 4
@TIPG = common dso_local global i32 0, align 4
@TIDV = common dso_local global i32 0, align 4
@e1000_82540 = common dso_local global i32 0, align 4
@TADV = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_CT = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@E1000_TCTL_RTLC = common dso_local global i32 0, align 4
@E1000_COLLISION_THRESHOLD = common dso_local global i32 0, align 4
@E1000_CT_SHIFT = common dso_local global i32 0, align 4
@E1000_TXD_CMD_EOP = common dso_local global i32 0, align 4
@E1000_TXD_CMD_IFCS = common dso_local global i32 0, align 4
@E1000_TXD_CMD_IDE = common dso_local global i32 0, align 4
@E1000_TXD_CMD_RPS = common dso_local global i32 0, align 4
@E1000_TXD_CMD_RS = common dso_local global i32 0, align 4
@e1000_82544 = common dso_local global i32 0, align 4
@e1000_bus_type_pcix = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_configure_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_configure_tx(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 6
  store %struct.e1000_hw* %11, %struct.e1000_hw** %4, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %16 [
    i32 1, label %15
  ]

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %1, %15
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 5
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @TDLEN, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ew32(i32 %32, i32 %33)
  %35 = load i32, i32* @TDBAH, align 4
  %36 = load i32, i32* %3, align 4
  %37 = ashr i32 %36, 32
  %38 = call i32 @ew32(i32 %35, i32 %37)
  %39 = load i32, i32* @TDBAL, align 4
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = and i64 %41, 4294967295
  %43 = trunc i64 %42 to i32
  %44 = call i32 @ew32(i32 %39, i32 %43)
  %45 = load i32, i32* @TDT, align 4
  %46 = call i32 @ew32(i32 %45, i32 0)
  %47 = load i32, i32* @TDH, align 4
  %48 = call i32 @ew32(i32 %47, i32 0)
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @e1000_82543, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %16
  %55 = load i32, i32* @E1000_TDH, align 4
  br label %58

56:                                               ; preds = %16
  %57 = load i32, i32* @E1000_82542_TDH, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %60, i32 0, i32 5
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store i32 %59, i32* %64, align 4
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @e1000_82543, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* @E1000_TDT, align 4
  br label %74

72:                                               ; preds = %58
  %73 = load i32, i32* @E1000_82542_TDT, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %76, i32 0, i32 5
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32 %75, i32* %80, align 4
  br label %81

81:                                               ; preds = %74
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @e1000_media_type_fiber, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87, %81
  %94 = load i32, i32* @DEFAULT_82543_TIPG_IPGT_FIBER, align 4
  store i32 %94, i32* %7, align 4
  br label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @DEFAULT_82543_TIPG_IPGT_COPPER, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %99 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %105 [
    i32 129, label %101
    i32 128, label %101
  ]

101:                                              ; preds = %97, %97
  %102 = load i32, i32* @DEFAULT_82542_TIPG_IPGT, align 4
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* @DEFAULT_82542_TIPG_IPGR1, align 4
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* @DEFAULT_82542_TIPG_IPGR2, align 4
  store i32 %104, i32* %9, align 4
  br label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @DEFAULT_82543_TIPG_IPGR1, align 4
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* @DEFAULT_82543_TIPG_IPGR2, align 4
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %105, %101
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @E1000_TIPG_IPGR1_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @E1000_TIPG_IPGR2_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* @TIPG, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @ew32(i32 %119, i32 %120)
  %122 = load i32, i32* @TIDV, align 4
  %123 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %124 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ew32(i32 %122, i32 %125)
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %128 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @e1000_82540, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %108
  %133 = load i32, i32* @TADV, align 4
  %134 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %135 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @ew32(i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %132, %108
  %139 = load i32, i32* @TCTL, align 4
  %140 = call i32 @er32(i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* @E1000_TCTL_CT, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %6, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* @E1000_TCTL_PSP, align 4
  %146 = load i32, i32* @E1000_TCTL_RTLC, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @E1000_COLLISION_THRESHOLD, align 4
  %149 = load i32, i32* @E1000_CT_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = or i32 %147, %150
  %152 = load i32, i32* %6, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %6, align 4
  %154 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %155 = call i32 @e1000_config_collision_dist(%struct.e1000_hw* %154)
  %156 = load i32, i32* @E1000_TXD_CMD_EOP, align 4
  %157 = load i32, i32* @E1000_TXD_CMD_IFCS, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %160 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %162 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %138
  %166 = load i32, i32* @E1000_TXD_CMD_IDE, align 4
  %167 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %168 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %165, %138
  %172 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %173 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @e1000_82543, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %171
  %178 = load i32, i32* @E1000_TXD_CMD_RPS, align 4
  %179 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %180 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %189

183:                                              ; preds = %171
  %184 = load i32, i32* @E1000_TXD_CMD_RS, align 4
  %185 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %186 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %183, %177
  %190 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %191 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @e1000_82544, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %204

195:                                              ; preds = %189
  %196 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %197 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @e1000_bus_type_pcix, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %203 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %202, i32 0, i32 4
  store i32 1, i32* %203, align 8
  br label %204

204:                                              ; preds = %201, %195, %189
  %205 = load i32, i32* @TCTL, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @ew32(i32 %205, i32 %206)
  ret void
}

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000_config_collision_dist(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
