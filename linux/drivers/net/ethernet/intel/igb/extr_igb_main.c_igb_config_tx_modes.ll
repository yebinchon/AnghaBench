; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_config_tx_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_config_tx_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.e1000_hw, %struct.net_device*, %struct.igb_ring** }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }
%struct.igb_ring = type { i32, i32, i32, i32, i64, i64 }

@e1000_i210 = common dso_local global i64 0, align 8
@TX_QUEUE_PRIO_HIGH = common dso_local global i32 0, align 4
@QUEUE_MODE_STREAM_RESERVATION = common dso_local global i32 0, align 4
@TX_QUEUE_PRIO_LOW = common dso_local global i32 0, align 4
@QUEUE_MODE_STRICT_PRIORITY = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@E1000_I210_TQAVCTRL = common dso_local global i32 0, align 4
@E1000_TQAVCTRL_DATATRANARB = common dso_local global i32 0, align 4
@E1000_TQAVCC_IDLESLOPE_MASK = common dso_local global i32 0, align 4
@E1000_TQAVCTRL_DATATRANTIM = common dso_local global i32 0, align 4
@E1000_TQAVCTRL_FETCHTIME_DELTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"Qav Tx mode: cbs %s, launchtime %s, queue %d idleslope %d sendslope %d hiCredit %d locredit %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, i32)* @igb_config_tx_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_config_tx_modes(%struct.igb_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_ring*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 2
  %13 = load %struct.igb_ring**, %struct.igb_ring*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.igb_ring*, %struct.igb_ring** %13, i64 %15
  %17 = load %struct.igb_ring*, %struct.igb_ring** %16, align 8
  store %struct.igb_ring* %17, %struct.igb_ring** %5, align 8
  %18 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %18, i32 0, i32 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %6, align 8
  %21 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %21, i32 0, i32 0
  store %struct.e1000_hw* %22, %struct.e1000_hw** %7, align 8
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @e1000_i210, align 8
  %28 = icmp ne i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 1
  br label %36

36:                                               ; preds = %33, %2
  %37 = phi i1 [ true, %2 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %41 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %46 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44, %36
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @TX_QUEUE_PRIO_HIGH, align 4
  %53 = call i32 @set_tx_desc_fetch_prio(%struct.e1000_hw* %50, i32 %51, i32 %52)
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @QUEUE_MODE_STREAM_RESERVATION, align 4
  %57 = call i32 @set_queue_mode(%struct.e1000_hw* %54, i32 %55, i32 %56)
  br label %67

58:                                               ; preds = %44
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @TX_QUEUE_PRIO_LOW, align 4
  %62 = call i32 @set_tx_desc_fetch_prio(%struct.e1000_hw* %59, i32 %60, i32 %61)
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @QUEUE_MODE_STRICT_PRIORITY, align 4
  %66 = call i32 @set_queue_mode(%struct.e1000_hw* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %49
  %68 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %69 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %126

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %80 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %85 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %84, i32 0, i32 0
  store i32 1000000, i32* %85, align 8
  %86 = load i32, i32* @ETH_FRAME_LEN, align 4
  %87 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %88 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %78, %75
  %90 = load i32, i32* @E1000_I210_TQAVCTRL, align 4
  %91 = call i32 @rd32(i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* @E1000_TQAVCTRL_DATATRANARB, align 4
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* @E1000_I210_TQAVCTRL, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @wr32(i32 %95, i32 %96)
  %98 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %99 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 61034
  %103 = call i32 @DIV_ROUND_UP_ULL(i64 %102, i32 1000000)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @E1000_I210_TQAVCC(i32 %104)
  %106 = call i32 @rd32(i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* @E1000_TQAVCC_IDLESLOPE_MASK, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @E1000_I210_TQAVCC(i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @wr32(i32 %115, i32 %116)
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @E1000_I210_TQAVHC(i32 %118)
  %120 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %121 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %122, 30517
  %124 = add i32 -2147483648, %123
  %125 = call i32 @wr32(i32 %119, i32 %124)
  br label %155

126:                                              ; preds = %72
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @E1000_I210_TQAVCC(i32 %127)
  %129 = call i32 @rd32(i32 %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* @E1000_TQAVCC_IDLESLOPE_MASK, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %8, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @E1000_I210_TQAVCC(i32 %134)
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @wr32(i32 %135, i32 %136)
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @E1000_I210_TQAVHC(i32 %138)
  %140 = call i32 @wr32(i32 %139, i32 0)
  %141 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %142 = call i32 @is_any_cbs_enabled(%struct.igb_adapter* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %126
  %145 = load i32, i32* @E1000_I210_TQAVCTRL, align 4
  %146 = call i32 @rd32(i32 %145)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* @E1000_TQAVCTRL_DATATRANARB, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %9, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* @E1000_I210_TQAVCTRL, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @wr32(i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %144, %126
  br label %155

155:                                              ; preds = %154, %89
  %156 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %157 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %155
  %161 = load i32, i32* @E1000_I210_TQAVCTRL, align 4
  %162 = call i32 @rd32(i32 %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* @E1000_TQAVCTRL_DATATRANTIM, align 4
  %164 = load i32, i32* @E1000_TQAVCTRL_FETCHTIME_DELTA, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* %9, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* @E1000_I210_TQAVCTRL, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @wr32(i32 %168, i32 %169)
  br label %190

171:                                              ; preds = %155
  %172 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %173 = call i32 @is_any_txtime_enabled(%struct.igb_adapter* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %189, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* @E1000_I210_TQAVCTRL, align 4
  %177 = call i32 @rd32(i32 %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* @E1000_TQAVCTRL_DATATRANTIM, align 4
  %179 = xor i32 %178, -1
  %180 = load i32, i32* %9, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* @E1000_TQAVCTRL_FETCHTIME_DELTA, align 4
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %9, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* @E1000_I210_TQAVCTRL, align 4
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @wr32(i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %175, %171
  br label %190

190:                                              ; preds = %189, %160
  %191 = load %struct.net_device*, %struct.net_device** %6, align 8
  %192 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %193 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %198 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %199 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %204 = load i32, i32* %4, align 4
  %205 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %206 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %210 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %213 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %216 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @netdev_dbg(%struct.net_device* %191, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i8* %197, i8* %203, i32 %204, i64 %208, i32 %211, i32 %214, i32 %217)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @set_tx_desc_fetch_prio(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @set_queue_mode(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP_ULL(i64, i32) #1

declare dso_local i32 @E1000_I210_TQAVCC(i32) #1

declare dso_local i32 @E1000_I210_TQAVHC(i32) #1

declare dso_local i32 @is_any_cbs_enabled(%struct.igb_adapter*) #1

declare dso_local i32 @is_any_txtime_enabled(%struct.igb_adapter*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i8*, i8*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
