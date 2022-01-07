; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_ethtool_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_ethtool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32, %struct.bnxt_test_info*, %struct.net_device*, %struct.hwrm_selftest_qlist_output* }
%struct.bnxt_test_info = type { i32, i8**, i64 }
%struct.net_device = type { i32 }
%struct.hwrm_selftest_qlist_output = type { i32, i32, i8*, i32 }
%struct.hwrm_selftest_qlist_input = type { i32 }

@BNXT_FW_CAP_PKG_VER = common dso_local global i32 0, align 4
@HWRM_SELFTEST_QLIST = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@BNXT_DRV_TESTS = common dso_local global i32 0, align 4
@BNXT_MAX_TEST = common dso_local global i32 0, align 4
@BNXT_MACLPBK_TEST_IDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Mac loopback test (offline)\00", align 1
@BNXT_PHYLPBK_TEST_IDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Phy loopback test (offline)\00", align 1
@BNXT_EXTLPBK_TEST_IDX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Ext loopback test (offline)\00", align 1
@BNXT_IRQ_TEST_IDX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Interrupt_test (offline)\00", align 1
@ETH_GSTRING_LEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c" test\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" (offline)\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" (online)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_ethtool_init(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.hwrm_selftest_qlist_output*, align 8
  %4 = alloca %struct.hwrm_selftest_qlist_input, align 4
  %5 = alloca %struct.bnxt_test_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 6
  %13 = load %struct.hwrm_selftest_qlist_output*, %struct.hwrm_selftest_qlist_output** %12, align 8
  store %struct.hwrm_selftest_qlist_output* %13, %struct.hwrm_selftest_qlist_output** %3, align 8
  %14 = bitcast %struct.hwrm_selftest_qlist_input* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  %15 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 5
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %6, align 8
  %18 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BNXT_FW_CAP_PKG_VER, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = call i32 @bnxt_get_pkgver(%struct.net_device* %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %29 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %31 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 67332
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %36 = call i32 @BNXT_SINGLE_PF(%struct.bnxt* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %27
  br label %199

39:                                               ; preds = %34
  %40 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %41 = load i32, i32* @HWRM_SELFTEST_QLIST, align 4
  %42 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %40, %struct.hwrm_selftest_qlist_input* %4, i32 %41, i32 -1, i32 -1)
  %43 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %44 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %43, i32 0, i32 3
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %47 = load i64, i64* @HWRM_CMD_TIMEOUT, align 8
  %48 = call i32 @_hwrm_send_message(%struct.bnxt* %46, %struct.hwrm_selftest_qlist_input* %4, i32 4, i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %195

52:                                               ; preds = %39
  %53 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %54 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %53, i32 0, i32 4
  %55 = load %struct.bnxt_test_info*, %struct.bnxt_test_info** %54, align 8
  store %struct.bnxt_test_info* %55, %struct.bnxt_test_info** %5, align 8
  %56 = load %struct.bnxt_test_info*, %struct.bnxt_test_info** %5, align 8
  %57 = icmp ne %struct.bnxt_test_info* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.bnxt_test_info* @kzalloc(i32 24, i32 %59)
  store %struct.bnxt_test_info* %60, %struct.bnxt_test_info** %5, align 8
  br label %61

61:                                               ; preds = %58, %52
  %62 = load %struct.bnxt_test_info*, %struct.bnxt_test_info** %5, align 8
  %63 = icmp ne %struct.bnxt_test_info* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %195

65:                                               ; preds = %61
  %66 = load %struct.bnxt_test_info*, %struct.bnxt_test_info** %5, align 8
  %67 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %68 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %67, i32 0, i32 4
  store %struct.bnxt_test_info* %66, %struct.bnxt_test_info** %68, align 8
  %69 = load %struct.hwrm_selftest_qlist_output*, %struct.hwrm_selftest_qlist_output** %3, align 8
  %70 = getelementptr inbounds %struct.hwrm_selftest_qlist_output, %struct.hwrm_selftest_qlist_output* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BNXT_DRV_TESTS, align 4
  %73 = add nsw i32 %71, %72
  %74 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %75 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %77 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BNXT_MAX_TEST, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %65
  %82 = load i32, i32* @BNXT_MAX_TEST, align 4
  %83 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %84 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %65
  %86 = load %struct.hwrm_selftest_qlist_output*, %struct.hwrm_selftest_qlist_output** %3, align 8
  %87 = getelementptr inbounds %struct.hwrm_selftest_qlist_output, %struct.hwrm_selftest_qlist_output* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.bnxt_test_info*, %struct.bnxt_test_info** %5, align 8
  %90 = getelementptr inbounds %struct.bnxt_test_info, %struct.bnxt_test_info* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.hwrm_selftest_qlist_output*, %struct.hwrm_selftest_qlist_output** %3, align 8
  %92 = getelementptr inbounds %struct.hwrm_selftest_qlist_output, %struct.hwrm_selftest_qlist_output* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @le16_to_cpu(i32 %93)
  %95 = load %struct.bnxt_test_info*, %struct.bnxt_test_info** %5, align 8
  %96 = getelementptr inbounds %struct.bnxt_test_info, %struct.bnxt_test_info* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load %struct.bnxt_test_info*, %struct.bnxt_test_info** %5, align 8
  %98 = getelementptr inbounds %struct.bnxt_test_info, %struct.bnxt_test_info* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %85
  %102 = load i64, i64* @HWRM_CMD_TIMEOUT, align 8
  %103 = load %struct.bnxt_test_info*, %struct.bnxt_test_info** %5, align 8
  %104 = getelementptr inbounds %struct.bnxt_test_info, %struct.bnxt_test_info* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %101, %85
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %191, %105
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %109 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %194

112:                                              ; preds = %106
  %113 = load %struct.bnxt_test_info*, %struct.bnxt_test_info** %5, align 8
  %114 = getelementptr inbounds %struct.bnxt_test_info, %struct.bnxt_test_info* %113, i32 0, i32 1
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %9, align 8
  %120 = load %struct.hwrm_selftest_qlist_output*, %struct.hwrm_selftest_qlist_output** %3, align 8
  %121 = getelementptr inbounds %struct.hwrm_selftest_qlist_output, %struct.hwrm_selftest_qlist_output* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = mul nsw i32 %123, 32
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  store i8* %126, i8** %10, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @BNXT_MACLPBK_TEST_IDX, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %112
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 @strcpy(i8* %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %190

133:                                              ; preds = %112
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @BNXT_PHYLPBK_TEST_IDX, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i8*, i8** %9, align 8
  %139 = call i32 @strcpy(i8* %138, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %189

140:                                              ; preds = %133
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @BNXT_EXTLPBK_TEST_IDX, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i8*, i8** %9, align 8
  %146 = call i32 @strcpy(i8* %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %188

147:                                              ; preds = %140
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @BNXT_IRQ_TEST_IDX, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i8*, i8** %9, align 8
  %153 = call i32 @strcpy(i8* %152, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %187

154:                                              ; preds = %147
  %155 = load i8*, i8** %9, align 8
  %156 = load i8*, i8** %10, align 8
  %157 = load i64, i64* @ETH_GSTRING_LEN, align 8
  %158 = call i32 @strlcpy(i8* %155, i8* %156, i64 %157)
  %159 = load i8*, i8** %9, align 8
  %160 = load i64, i64* @ETH_GSTRING_LEN, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = call i64 @strlen(i8* %161)
  %163 = sub nsw i64 %160, %162
  %164 = call i32 @strncat(i8* %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %163)
  %165 = load %struct.bnxt_test_info*, %struct.bnxt_test_info** %5, align 8
  %166 = getelementptr inbounds %struct.bnxt_test_info, %struct.bnxt_test_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = shl i32 1, %168
  %170 = and i32 %167, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %154
  %173 = load i8*, i8** %9, align 8
  %174 = load i64, i64* @ETH_GSTRING_LEN, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = call i64 @strlen(i8* %175)
  %177 = sub nsw i64 %174, %176
  %178 = call i32 @strncat(i8* %173, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %177)
  br label %186

179:                                              ; preds = %154
  %180 = load i8*, i8** %9, align 8
  %181 = load i64, i64* @ETH_GSTRING_LEN, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = call i64 @strlen(i8* %182)
  %184 = sub nsw i64 %181, %183
  %185 = call i32 @strncat(i8* %180, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 %184)
  br label %186

186:                                              ; preds = %179, %172
  br label %187

187:                                              ; preds = %186, %151
  br label %188

188:                                              ; preds = %187, %144
  br label %189

189:                                              ; preds = %188, %137
  br label %190

190:                                              ; preds = %189, %130
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %7, align 4
  br label %106

194:                                              ; preds = %106
  br label %195

195:                                              ; preds = %194, %64, %51
  %196 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %197 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %196, i32 0, i32 3
  %198 = call i32 @mutex_unlock(i32* %197)
  br label %199

199:                                              ; preds = %195, %38
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_get_pkgver(%struct.net_device*) #2

declare dso_local i32 @BNXT_SINGLE_PF(%struct.bnxt*) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_selftest_qlist_input*, i32, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_selftest_qlist_input*, i32, i64) #2

declare dso_local %struct.bnxt_test_info* @kzalloc(i32, i32) #2

declare dso_local i64 @le16_to_cpu(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local i32 @strncat(i8*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
