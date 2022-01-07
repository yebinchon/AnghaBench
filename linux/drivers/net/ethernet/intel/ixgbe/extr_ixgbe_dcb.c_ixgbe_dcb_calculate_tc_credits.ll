; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_calculate_tc_credits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb.c_ixgbe_dcb_calculate_tc_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ixgbe_dcb_config = type { i64**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.tc_bw_alloc* }
%struct.tc_bw_alloc = type { i64, i64, i64, i64, i64 }

@DCB_ERR_CONFIG = common dso_local global i32 0, align 4
@DCB_CREDIT_QUANTUM = common dso_local global i32 0, align 4
@MAX_TRAFFIC_CLASS = common dso_local global i64 0, align 8
@MAX_CREDIT_REFILL = common dso_local global i32 0, align 4
@MAX_CREDIT = common dso_local global i64 0, align 8
@DCB_TX_CONFIG = common dso_local global i64 0, align 8
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@MINIMUM_CREDIT_FOR_TSO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_calculate_tc_credits(%struct.ixgbe_hw* %0, %struct.ixgbe_dcb_config* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca %struct.ixgbe_dcb_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.tc_bw_alloc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store %struct.ixgbe_dcb_config* %1, %struct.ixgbe_dcb_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 100, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %19 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %7, align 8
  %20 = icmp ne %struct.ixgbe_dcb_config* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @DCB_ERR_CONFIG, align 4
  store i32 %22, i32* %5, align 4
  br label %190

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = sdiv i32 %24, 2
  %26 = load i32, i32* @DCB_CREDIT_QUANTUM, align 4
  %27 = add nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* @DCB_CREDIT_QUANTUM, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %11, align 4
  store i64 0, i64* %18, align 8
  br label %31

31:                                               ; preds = %74, %23
  %32 = load i64, i64* %18, align 8
  %33 = load i64, i64* @MAX_TRAFFIC_CLASS, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %31
  %36 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %7, align 8
  %37 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.tc_bw_alloc*, %struct.tc_bw_alloc** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.tc_bw_alloc, %struct.tc_bw_alloc* %42, i64 %43
  store %struct.tc_bw_alloc* %44, %struct.tc_bw_alloc** %10, align 8
  %45 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %7, align 8
  %46 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %45, i32 0, i32 0
  %47 = load i64**, i64*** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i64*, i64** %47, i64 %48
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.tc_bw_alloc*, %struct.tc_bw_alloc** %10, align 8
  %52 = getelementptr inbounds %struct.tc_bw_alloc, %struct.tc_bw_alloc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %17, align 8
  %56 = load %struct.tc_bw_alloc*, %struct.tc_bw_alloc** %10, align 8
  %57 = getelementptr inbounds %struct.tc_bw_alloc, %struct.tc_bw_alloc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* %17, align 8
  %61 = mul i64 %59, %60
  %62 = udiv i64 %61, 100
  store i64 %62, i64* %16, align 8
  %63 = load i64, i64* %16, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %35
  %66 = load i64, i64* %16, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, i64* %16, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %70, %65, %35
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %18, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %18, align 8
  br label %31

77:                                               ; preds = %31
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %13, align 4
  %80 = sdiv i32 %78, %79
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  store i64 0, i64* %18, align 8
  br label %82

82:                                               ; preds = %186, %77
  %83 = load i64, i64* %18, align 8
  %84 = load i64, i64* @MAX_TRAFFIC_CLASS, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %189

86:                                               ; preds = %82
  %87 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %7, align 8
  %88 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i64, i64* %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load %struct.tc_bw_alloc*, %struct.tc_bw_alloc** %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds %struct.tc_bw_alloc, %struct.tc_bw_alloc* %93, i64 %94
  store %struct.tc_bw_alloc* %95, %struct.tc_bw_alloc** %10, align 8
  %96 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %7, align 8
  %97 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %96, i32 0, i32 0
  %98 = load i64**, i64*** %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i64*, i64** %98, i64 %99
  %101 = load i64*, i64** %100, align 8
  %102 = load %struct.tc_bw_alloc*, %struct.tc_bw_alloc** %10, align 8
  %103 = getelementptr inbounds %struct.tc_bw_alloc, %struct.tc_bw_alloc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %17, align 8
  %107 = load %struct.tc_bw_alloc*, %struct.tc_bw_alloc** %10, align 8
  %108 = getelementptr inbounds %struct.tc_bw_alloc, %struct.tc_bw_alloc* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %16, align 8
  %110 = load i64, i64* %16, align 8
  %111 = load i64, i64* %17, align 8
  %112 = mul i64 %110, %111
  %113 = udiv i64 %112, 100
  store i64 %113, i64* %16, align 8
  %114 = load %struct.tc_bw_alloc*, %struct.tc_bw_alloc** %10, align 8
  %115 = getelementptr inbounds %struct.tc_bw_alloc, %struct.tc_bw_alloc* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ugt i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %86
  %119 = load i64, i64* %16, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i64 1, i64* %16, align 8
  br label %122

122:                                              ; preds = %121, %118, %86
  %123 = load i64, i64* %16, align 8
  %124 = load %struct.tc_bw_alloc*, %struct.tc_bw_alloc** %10, align 8
  %125 = getelementptr inbounds %struct.tc_bw_alloc, %struct.tc_bw_alloc* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load i64, i64* %16, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 %126, %128
  %130 = load i32, i32* @MAX_CREDIT_REFILL, align 4
  %131 = call i32 @min(i64 %129, i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %135, %122
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.tc_bw_alloc*, %struct.tc_bw_alloc** %10, align 8
  %141 = getelementptr inbounds %struct.tc_bw_alloc, %struct.tc_bw_alloc* %140, i32 0, i32 3
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* %16, align 8
  %143 = load i64, i64* @MAX_CREDIT, align 8
  %144 = mul i64 %142, %143
  %145 = udiv i64 %144, 100
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %137
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %150, %137
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* @DCB_TX_CONFIG, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %181

156:                                              ; preds = %152
  %157 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %158 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %156
  %164 = load i32, i32* %15, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* @MINIMUM_CREDIT_FOR_TSO, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i32, i32* @MINIMUM_CREDIT_FOR_TSO, align 4
  store i32 %171, i32* %15, align 4
  br label %172

172:                                              ; preds = %170, %166, %163, %156
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = load %struct.ixgbe_dcb_config*, %struct.ixgbe_dcb_config** %7, align 8
  %176 = getelementptr inbounds %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config* %175, i32 0, i32 1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load i64, i64* %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  store i64 %174, i64* %180, align 8
  br label %181

181:                                              ; preds = %172, %152
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = load %struct.tc_bw_alloc*, %struct.tc_bw_alloc** %10, align 8
  %185 = getelementptr inbounds %struct.tc_bw_alloc, %struct.tc_bw_alloc* %184, i32 0, i32 4
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %181
  %187 = load i64, i64* %18, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %18, align 8
  br label %82

189:                                              ; preds = %82
  store i32 0, i32* %5, align 4
  br label %190

190:                                              ; preds = %189, %21
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
