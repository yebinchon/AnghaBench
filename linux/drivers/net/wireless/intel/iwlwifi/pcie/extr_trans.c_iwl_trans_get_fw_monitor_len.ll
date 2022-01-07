; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_get_fw_monitor_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_get_fw_monitor_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_10__, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@IWL_LDBG_M2S_BUF_BA_MSK = common dso_local global i32 0, align 4
@IWL_M2S_UNIT_SIZE = common dso_local global i32 0, align 4
@IWL_LDBG_M2S_BUF_SIZE_MSK = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_8000 = common dso_local global i64 0, align 8
@MARBH_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32*)* @iwl_trans_get_fw_monitor_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_get_fw_monitor_len(%struct.iwl_trans* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 8, %23
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, %24
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  br label %174

37:                                               ; preds = %2
  %38 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %39 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %43, label %172

43:                                               ; preds = %37
  %44 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %45 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %97

51:                                               ; preds = %43
  %52 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %53 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @iwl_read_prph(%struct.iwl_trans* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @IWL_LDBG_M2S_BUF_BA_MSK, align 4
  %64 = and i32 %62, %63
  %65 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %66 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %64, %70
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @IWL_M2S_UNIT_SIZE, align 4
  %73 = load i32, i32* %6, align 4
  %74 = mul nsw i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %76 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %75, i32 0, i32 2
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @IWL_LDBG_M2S_BUF_SIZE_MSK, align 4
  %86 = and i32 %84, %85
  %87 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %88 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = ashr i32 %86, %92
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* @IWL_M2S_UNIT_SIZE, align 4
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 %95, %94
  store i32 %96, i32* %9, align 4
  br label %162

97:                                               ; preds = %43
  %98 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %99 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le32_to_cpu(i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %106 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @le32_to_cpu(i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @iwl_read_prph(%struct.iwl_trans* %112, i32 %113)
  %115 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %116 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %114, %120
  store i32 %121, i32* %6, align 4
  %122 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @iwl_read_prph(%struct.iwl_trans* %122, i32 %123)
  %125 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %126 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = shl i32 %124, %130
  store i32 %131, i32* %7, align 4
  %132 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %133 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @IWL_DEVICE_FAMILY_8000, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %148, label %139

139:                                              ; preds = %97
  %140 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %141 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @MARBH_MODE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %139, %97
  %149 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %150 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = shl i32 1, %154
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %148, %139
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %6, align 4
  %161 = sub nsw i32 %159, %160
  store i32 %161, i32* %9, align 4
  br label %162

162:                                              ; preds = %158, %51
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = add i64 8, %164
  %166 = load i32*, i32** %5, align 8
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = add i64 %168, %165
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %166, align 4
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %3, align 4
  br label %174

172:                                              ; preds = %37
  br label %173

173:                                              ; preds = %172
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %173, %162, %15
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @iwl_read_prph(%struct.iwl_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
