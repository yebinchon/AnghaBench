; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_dump_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_dump_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_10__, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__*, i64 }
%struct.TYPE_9__ = type { i64, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.iwl_fw_error_dump_data = type { i8*, i64, i8* }
%struct.iwl_fw_error_dump_fw_mon = type { i32, i32 }

@IWL_DEVICE_FAMILY_7000 = common dso_local global i64 0, align 8
@IWL_DEVICE_FAMILY_AX210 = common dso_local global i64 0, align 8
@IWL_FW_ERROR_DUMP_FW_MONITOR = common dso_local global i32 0, align 4
@SMEM_MODE = common dso_local global i64 0, align 8
@IWL_LDBG_M2S_BUF_BA_MSK = common dso_local global i32 0, align 4
@IWL_M2S_UNIT_SIZE = common dso_local global i32 0, align 4
@MARBH_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_fw_error_dump_data**, i32)* @iwl_trans_pcie_dump_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_dump_monitor(%struct.iwl_trans* %0, %struct.iwl_fw_error_dump_data** %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_fw_error_dump_data**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_fw_error_dump_fw_mon*, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_fw_error_dump_data** %1, %struct.iwl_fw_error_dump_data*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %3
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %184

21:                                               ; preds = %15
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %23 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IWL_DEVICE_FAMILY_7000, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IWL_DEVICE_FAMILY_AX210, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %184

37:                                               ; preds = %29, %21, %3
  %38 = load i32, i32* @IWL_FW_ERROR_DUMP_FW_MONITOR, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %5, align 8
  %41 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %40, align 8
  %42 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %5, align 8
  %44 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %43, align 8
  %45 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = bitcast i8* %47 to %struct.iwl_fw_error_dump_fw_mon*
  store %struct.iwl_fw_error_dump_fw_mon* %48, %struct.iwl_fw_error_dump_fw_mon** %8, align 8
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %50 = load %struct.iwl_fw_error_dump_fw_mon*, %struct.iwl_fw_error_dump_fw_mon** %8, align 8
  %51 = call i32 @iwl_trans_pcie_dump_pointers(%struct.iwl_trans* %49, %struct.iwl_fw_error_dump_fw_mon* %50)
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, 32
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %57 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %37
  %62 = load %struct.iwl_fw_error_dump_fw_mon*, %struct.iwl_fw_error_dump_fw_mon** %8, align 8
  %63 = getelementptr inbounds %struct.iwl_fw_error_dump_fw_mon, %struct.iwl_fw_error_dump_fw_mon* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %66 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %73 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcpy(i32 %64, i32 %71, i32 %78)
  %80 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %81 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %6, align 4
  br label %172

87:                                               ; preds = %37
  %88 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %89 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SMEM_MODE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %155

96:                                               ; preds = %87
  %97 = load %struct.iwl_fw_error_dump_fw_mon*, %struct.iwl_fw_error_dump_fw_mon** %8, align 8
  %98 = getelementptr inbounds %struct.iwl_fw_error_dump_fw_mon, %struct.iwl_fw_error_dump_fw_mon* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le32_to_cpu(i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %102 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %96
  %109 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @iwl_read_prph(%struct.iwl_trans* %109, i32 %110)
  %112 = load i32, i32* @IWL_LDBG_M2S_BUF_BA_MSK, align 4
  %113 = and i32 %111, %112
  %114 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %115 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = shl i32 %113, %119
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* @IWL_M2S_UNIT_SIZE, align 4
  %122 = load i32, i32* %9, align 4
  %123 = mul nsw i32 %122, %121
  store i32 %123, i32* %9, align 4
  %124 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %125 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %124, i32 0, i32 1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %9, align 4
  br label %144

133:                                              ; preds = %96
  %134 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @iwl_read_prph(%struct.iwl_trans* %134, i32 %135)
  %137 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %138 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = shl i32 %136, %142
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %133, %108
  %145 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.iwl_fw_error_dump_fw_mon*, %struct.iwl_fw_error_dump_fw_mon** %8, align 8
  %148 = getelementptr inbounds %struct.iwl_fw_error_dump_fw_mon, %struct.iwl_fw_error_dump_fw_mon* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = udiv i64 %151, 4
  %153 = trunc i64 %152 to i32
  %154 = call i32 @iwl_trans_read_mem(%struct.iwl_trans* %145, i32 %146, i32 %149, i32 %153)
  br label %171

155:                                              ; preds = %87
  %156 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %157 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @MARBH_MODE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %155
  %165 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %166 = load %struct.iwl_fw_error_dump_fw_mon*, %struct.iwl_fw_error_dump_fw_mon** %8, align 8
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @iwl_trans_pci_dump_marbh_monitor(%struct.iwl_trans* %165, %struct.iwl_fw_error_dump_fw_mon* %166, i32 %167)
  store i32 %168, i32* %6, align 4
  br label %170

169:                                              ; preds = %155
  store i32 0, i32* %6, align 4
  br label %170

170:                                              ; preds = %169, %164
  br label %171

171:                                              ; preds = %170, %144
  br label %172

172:                                              ; preds = %171, %61
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = add i64 %177, 8
  %179 = trunc i64 %178 to i32
  %180 = call i8* @cpu_to_le32(i32 %179)
  %181 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %5, align 8
  %182 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %181, align 8
  %183 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %182, i32 0, i32 0
  store i8* %180, i8** %183, align 8
  br label %184

184:                                              ; preds = %172, %29, %15
  %185 = load i32, i32* %7, align 4
  ret i32 %185
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_trans_pcie_dump_pointers(%struct.iwl_trans*, %struct.iwl_fw_error_dump_fw_mon*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @iwl_read_prph(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_trans_read_mem(%struct.iwl_trans*, i32, i32, i32) #1

declare dso_local i32 @iwl_trans_pci_dump_marbh_monitor(%struct.iwl_trans*, %struct.iwl_fw_error_dump_fw_mon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
