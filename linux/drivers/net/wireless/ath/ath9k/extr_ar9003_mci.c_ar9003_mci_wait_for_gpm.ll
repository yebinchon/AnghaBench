; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_wait_for_gpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_mci.c_ar9003_mci_wait_for_gpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_mci }
%struct.ath9k_hw_mci = type { i64 }
%struct.ath_common = type { i32 }

@MCI_GPM_BT_CAL_DONE = common dso_local global i64 0, align 8
@MCI_GPM_NOMORE = common dso_local global i64 0, align 8
@MCI_GPM_MORE = common dso_local global i64 0, align 8
@AR_MCI_INTERRUPT_RX_MSG_RAW = common dso_local global i32 0, align 4
@AR_MCI_INTERRUPT_RX_MSG_GPM = common dso_local global i32 0, align 4
@MCI_GPM_INVALID = common dso_local global i64 0, align 8
@MCI_GPM_BT_CAL_GRANT = common dso_local global i64 0, align 8
@MCI_GPM_BT_CAL_REQ = common dso_local global i64 0, align 8
@MCI_GPM_WLAN_CAL_GRANT = common dso_local global i32 0, align 4
@MCI_GPM = common dso_local global i32 0, align 4
@MCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"MCI GPM subtype not match 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ath_hw*, i64, i64, i32)* @ar9003_mci_wait_for_gpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ar9003_mci_wait_for_gpm(%struct.ath_hw* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca %struct.ath9k_hw_mci*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca [4 x i64], align 16
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %20 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %19)
  store %struct.ath_common* %20, %struct.ath_common** %9, align 8
  %21 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.ath9k_hw_mci* %23, %struct.ath9k_hw_mci** %10, align 8
  store i64* null, i64** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @MCI_GPM_BT_CAL_DONE, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i64, i64* @MCI_GPM_NOMORE, align 8
  br label %34

32:                                               ; preds = %4
  %33 = load i64, i64* @MCI_GPM_MORE, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %137, %113, %91, %65, %34
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %138

39:                                               ; preds = %36
  %40 = load i64*, i64** %11, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64*, i64** %11, align 8
  %44 = call i32 @MCI_GPM_RECYCLE(i64* %43)
  store i64* null, i64** %11, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @MCI_GPM_MORE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %51 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_RAW, align 4
  %52 = load i32, i32* @AR_MCI_INTERRUPT_RX_MSG_GPM, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ar9003_mci_wait_for_interrupt(%struct.ath_hw* %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %138

59:                                               ; preds = %55
  %60 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %61 = call i64 @ar9003_mci_get_next_gpm_offset(%struct.ath_hw* %60, i64* %13)
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @MCI_GPM_INVALID, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %36

66:                                               ; preds = %59
  %67 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %10, align 8
  %68 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %14, align 8
  %71 = add nsw i64 %69, %70
  %72 = inttoptr i64 %71 to i64*
  store i64* %72, i64** %11, align 8
  %73 = load i64*, i64** %11, align 8
  %74 = call i64 @MCI_GPM_TYPE(i64* %73)
  store i64 %74, i64* %15, align 8
  %75 = load i64*, i64** %11, align 8
  %76 = call i64 @MCI_GPM_OPCODE(i64* %75)
  store i64 %76, i64* %16, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i64 @MCI_GPM_IS_CAL_TYPE(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %66
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %6, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @MCI_GPM_BT_CAL_DONE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* @MCI_GPM_BT_CAL_GRANT, align 8
  store i64 %92, i64* %6, align 8
  br label %36

93:                                               ; preds = %88, %84
  br label %138

94:                                               ; preds = %80
  br label %105

95:                                               ; preds = %66
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* %7, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %138

104:                                              ; preds = %99, %95
  br label %105

105:                                              ; preds = %104, %94
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @MCI_GPM_BT_CAL_GRANT, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* @MCI_GPM_BT_CAL_REQ, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = bitcast [4 x i64]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %114, i8 0, i64 32, i1 false)
  %115 = load i64, i64* @MCI_GPM_BT_CAL_DONE, align 8
  store i64 %115, i64* %6, align 8
  %116 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %117 = load i32, i32* @MCI_GPM_WLAN_CAL_GRANT, align 4
  %118 = call i32 @MCI_GPM_SET_CAL_TYPE(i64* %116, i32 %117)
  %119 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %120 = load i32, i32* @MCI_GPM, align 4
  %121 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %122 = call i32 @ar9003_mci_send_message(%struct.ath_hw* %119, i32 %120, i32 0, i64* %121, i32 16, i32 0, i32 0)
  br label %36

123:                                              ; preds = %109, %105
  %124 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %125 = load i32, i32* @MCI, align 4
  %126 = load i64*, i64** %11, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @ath_dbg(%struct.ath_common* %124, i32 %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %128)
  %130 = load i64, i64* %12, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %12, align 8
  %132 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %133 = load i64, i64* %15, align 8
  %134 = load i64, i64* %16, align 8
  %135 = load i64*, i64** %11, align 8
  %136 = call i32 @ar9003_mci_process_gpm_extra(%struct.ath_hw* %132, i64 %133, i64 %134, i64* %135)
  br label %137

137:                                              ; preds = %123
  br label %36

138:                                              ; preds = %103, %93, %58, %36
  %139 = load i64*, i64** %11, align 8
  %140 = icmp ne i64* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i64*, i64** %11, align 8
  %143 = call i32 @MCI_GPM_RECYCLE(i64* %142)
  store i64* null, i64** %11, align 8
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %8, align 4
  %146 = icmp sle i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %147, %144
  br label %149

149:                                              ; preds = %180, %148
  %150 = load i64, i64* %13, align 8
  %151 = load i64, i64* @MCI_GPM_MORE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %183

153:                                              ; preds = %149
  %154 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %155 = call i64 @ar9003_mci_get_next_gpm_offset(%struct.ath_hw* %154, i64* %13)
  store i64 %155, i64* %14, align 8
  %156 = load i64, i64* %14, align 8
  %157 = load i64, i64* @MCI_GPM_INVALID, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %183

160:                                              ; preds = %153
  %161 = load %struct.ath9k_hw_mci*, %struct.ath9k_hw_mci** %10, align 8
  %162 = getelementptr inbounds %struct.ath9k_hw_mci, %struct.ath9k_hw_mci* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %14, align 8
  %165 = add nsw i64 %163, %164
  %166 = inttoptr i64 %165 to i64*
  store i64* %166, i64** %11, align 8
  %167 = load i64*, i64** %11, align 8
  %168 = call i64 @MCI_GPM_TYPE(i64* %167)
  store i64 %168, i64* %15, align 8
  %169 = load i64*, i64** %11, align 8
  %170 = call i64 @MCI_GPM_OPCODE(i64* %169)
  store i64 %170, i64* %16, align 8
  %171 = load i64, i64* %15, align 8
  %172 = call i64 @MCI_GPM_IS_CAL_TYPE(i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %160
  %175 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %176 = load i64, i64* %15, align 8
  %177 = load i64, i64* %16, align 8
  %178 = load i64*, i64** %11, align 8
  %179 = call i32 @ar9003_mci_process_gpm_extra(%struct.ath_hw* %175, i64 %176, i64 %177, i64* %178)
  br label %180

180:                                              ; preds = %174, %160
  %181 = load i64*, i64** %11, align 8
  %182 = call i32 @MCI_GPM_RECYCLE(i64* %181)
  br label %149

183:                                              ; preds = %159, %149
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  ret i64 %185
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @MCI_GPM_RECYCLE(i64*) #1

declare dso_local i32 @ar9003_mci_wait_for_interrupt(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @ar9003_mci_get_next_gpm_offset(%struct.ath_hw*, i64*) #1

declare dso_local i64 @MCI_GPM_TYPE(i64*) #1

declare dso_local i64 @MCI_GPM_OPCODE(i64*) #1

declare dso_local i64 @MCI_GPM_IS_CAL_TYPE(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MCI_GPM_SET_CAL_TYPE(i64*, i32) #1

declare dso_local i32 @ar9003_mci_send_message(%struct.ath_hw*, i32, i32, i64*, i32, i32, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64) #1

declare dso_local i32 @ar9003_mci_process_gpm_extra(%struct.ath_hw*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
