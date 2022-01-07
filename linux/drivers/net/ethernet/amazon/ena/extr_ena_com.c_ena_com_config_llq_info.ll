; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_config_llq_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_config_llq_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_llq_info }
%struct.ena_com_llq_info = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ena_admin_feature_llq_desc = type { i32, i32, i32, i32, i32 }
%struct.ena_llq_configurations = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Invalid header location control, supported: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENA_ADMIN_INLINE_HEADER = common dso_local global i64 0, align 8
@ENA_ADMIN_MULTIPLE_DESCS_PER_ENTRY = common dso_local global i32 0, align 4
@ENA_ADMIN_SINGLE_DESC_PER_ENTRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Invalid desc_stride_ctrl, supported: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"Default llq stride ctrl is not supported, performing fallback, default: 0x%x, supported: 0x%x, used: 0x%x\0A\00", align 1
@ENA_ADMIN_LIST_ENTRY_SIZE_128B = common dso_local global i32 0, align 4
@ENA_ADMIN_LIST_ENTRY_SIZE_192B = common dso_local global i32 0, align 4
@ENA_ADMIN_LIST_ENTRY_SIZE_256B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Invalid entry_size_ctrl, supported: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [111 x i8] c"Default llq ring entry size is not supported, performing fallback, default: 0x%x, supported: 0x%x, used: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"illegal entry size %d\0A\00", align 1
@ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_2 = common dso_local global i32 0, align 4
@ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_1 = common dso_local global i32 0, align 4
@ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_4 = common dso_local global i32 0, align 4
@ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_8 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"Invalid descs_num_before_header, supported: 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [119 x i8] c"Default llq num descs before header is not supported, performing fallback, default: 0x%x, supported: 0x%x, used: 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Cannot set LLQ configuration: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, %struct.ena_admin_feature_llq_desc*, %struct.ena_llq_configurations*)* @ena_com_config_llq_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_config_llq_info(%struct.ena_com_dev* %0, %struct.ena_admin_feature_llq_desc* %1, %struct.ena_llq_configurations* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_dev*, align 8
  %6 = alloca %struct.ena_admin_feature_llq_desc*, align 8
  %7 = alloca %struct.ena_llq_configurations*, align 8
  %8 = alloca %struct.ena_com_llq_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %5, align 8
  store %struct.ena_admin_feature_llq_desc* %1, %struct.ena_admin_feature_llq_desc** %6, align 8
  store %struct.ena_llq_configurations* %2, %struct.ena_llq_configurations** %7, align 8
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %12 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %11, i32 0, i32 0
  store %struct.ena_com_llq_info* %12, %struct.ena_com_llq_info** %8, align 8
  %13 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %14 = call i32 @memset(%struct.ena_com_llq_info* %13, i32 0, i32 32)
  %15 = load %struct.ena_admin_feature_llq_desc*, %struct.ena_admin_feature_llq_desc** %6, align 8
  %16 = getelementptr inbounds %struct.ena_admin_feature_llq_desc, %struct.ena_admin_feature_llq_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %7, align 8
  %20 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %7, align 8
  %27 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %31 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %37

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %292

37:                                               ; preds = %25
  %38 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %39 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ENA_ADMIN_INLINE_HEADER, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @likely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %97

46:                                               ; preds = %37
  %47 = load %struct.ena_admin_feature_llq_desc*, %struct.ena_admin_feature_llq_desc** %6, align 8
  %48 = getelementptr inbounds %struct.ena_admin_feature_llq_desc, %struct.ena_admin_feature_llq_desc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %7, align 8
  %52 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %50, %53
  %55 = call i64 @likely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %7, align 8
  %59 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %62 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %96

63:                                               ; preds = %46
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @ENA_ADMIN_MULTIPLE_DESCS_PER_ENTRY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @ENA_ADMIN_MULTIPLE_DESCS_PER_ENTRY, align 4
  %70 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %71 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  br label %87

72:                                               ; preds = %63
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @ENA_ADMIN_SINGLE_DESC_PER_ENTRY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @ENA_ADMIN_SINGLE_DESC_PER_ENTRY, align 4
  %79 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %80 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  br label %86

81:                                               ; preds = %72
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %292

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %68
  %88 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %7, align 8
  %89 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %93 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %87, %57
  br label %100

97:                                               ; preds = %37
  %98 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %99 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %98, i32 0, i32 1
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %96
  %101 = load %struct.ena_admin_feature_llq_desc*, %struct.ena_admin_feature_llq_desc** %6, align 8
  %102 = getelementptr inbounds %struct.ena_admin_feature_llq_desc, %struct.ena_admin_feature_llq_desc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %7, align 8
  %106 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %104, %107
  %109 = call i64 @likely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %100
  %112 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %7, align 8
  %113 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %116 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %7, align 8
  %118 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %121 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  br label %171

122:                                              ; preds = %100
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @ENA_ADMIN_LIST_ENTRY_SIZE_128B, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load i32, i32* @ENA_ADMIN_LIST_ENTRY_SIZE_128B, align 4
  %129 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %130 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %132 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %131, i32 0, i32 3
  store i32 128, i32* %132, align 8
  br label %162

133:                                              ; preds = %122
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @ENA_ADMIN_LIST_ENTRY_SIZE_192B, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i32, i32* @ENA_ADMIN_LIST_ENTRY_SIZE_192B, align 4
  %140 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %141 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %143 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %142, i32 0, i32 3
  store i32 192, i32* %143, align 8
  br label %161

144:                                              ; preds = %133
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @ENA_ADMIN_LIST_ENTRY_SIZE_256B, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i32, i32* @ENA_ADMIN_LIST_ENTRY_SIZE_256B, align 4
  %151 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %152 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  %153 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %154 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %153, i32 0, i32 3
  store i32 256, i32* %154, align 8
  br label %160

155:                                              ; preds = %144
  %156 = load i32, i32* %9, align 4
  %157 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %4, align 4
  br label %292

160:                                              ; preds = %149
  br label %161

161:                                              ; preds = %160, %138
  br label %162

162:                                              ; preds = %161, %127
  %163 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %7, align 8
  %164 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %168 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.4, i64 0, i64 0), i32 %165, i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %162, %111
  %172 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %173 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, 7
  %176 = call i64 @unlikely(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %180 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %4, align 4
  br label %292

185:                                              ; preds = %171
  %186 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %187 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @ENA_ADMIN_MULTIPLE_DESCS_PER_ENTRY, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %185
  %192 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %193 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = udiv i64 %195, 4
  %197 = trunc i64 %196 to i32
  %198 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %199 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %198, i32 0, i32 4
  store i32 %197, i32* %199, align 4
  br label %203

200:                                              ; preds = %185
  %201 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %202 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %201, i32 0, i32 4
  store i32 1, i32* %202, align 4
  br label %203

203:                                              ; preds = %200, %191
  %204 = load %struct.ena_admin_feature_llq_desc*, %struct.ena_admin_feature_llq_desc** %6, align 8
  %205 = getelementptr inbounds %struct.ena_admin_feature_llq_desc, %struct.ena_admin_feature_llq_desc* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %7, align 8
  %209 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %207, %210
  %212 = call i64 @likely(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %203
  %215 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %7, align 8
  %216 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %219 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %218, i32 0, i32 5
  store i32 %217, i32* %219, align 8
  br label %273

220:                                              ; preds = %203
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* @ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_2, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load i32, i32* @ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_2, align 4
  %227 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %228 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 8
  br label %264

229:                                              ; preds = %220
  %230 = load i32, i32* %9, align 4
  %231 = load i32, i32* @ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_1, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = load i32, i32* @ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_1, align 4
  %236 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %237 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 8
  br label %263

238:                                              ; preds = %229
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* @ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_4, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = load i32, i32* @ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_4, align 4
  %245 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %246 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %245, i32 0, i32 5
  store i32 %244, i32* %246, align 8
  br label %262

247:                                              ; preds = %238
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* @ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_8, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %247
  %253 = load i32, i32* @ENA_ADMIN_LLQ_NUM_DESCS_BEFORE_HEADER_8, align 4
  %254 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %255 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %254, i32 0, i32 5
  store i32 %253, i32* %255, align 8
  br label %261

256:                                              ; preds = %247
  %257 = load i32, i32* %9, align 4
  %258 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %257)
  %259 = load i32, i32* @EINVAL, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %4, align 4
  br label %292

261:                                              ; preds = %252
  br label %262

262:                                              ; preds = %261, %243
  br label %263

263:                                              ; preds = %262, %234
  br label %264

264:                                              ; preds = %263, %225
  %265 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %7, align 8
  %266 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %9, align 4
  %269 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %270 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 8
  %272 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.7, i64 0, i64 0), i32 %267, i32 %268, i32 %271)
  br label %273

273:                                              ; preds = %264, %214
  %274 = load %struct.ena_admin_feature_llq_desc*, %struct.ena_admin_feature_llq_desc** %6, align 8
  %275 = getelementptr inbounds %struct.ena_admin_feature_llq_desc, %struct.ena_admin_feature_llq_desc* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %7, align 8
  %278 = getelementptr inbounds %struct.ena_llq_configurations, %struct.ena_llq_configurations* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = sdiv i32 %276, %279
  %281 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %282 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %281, i32 0, i32 6
  store i32 %280, i32* %282, align 4
  %283 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %284 = call i32 @ena_com_set_llq(%struct.ena_com_dev* %283)
  store i32 %284, i32* %10, align 4
  %285 = load i32, i32* %10, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %273
  %288 = load i32, i32* %10, align 4
  %289 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %288)
  br label %290

290:                                              ; preds = %287, %273
  %291 = load i32, i32* %10, align 4
  store i32 %291, i32* %4, align 4
  br label %292

292:                                              ; preds = %290, %256, %178, %155, %81, %32
  %293 = load i32, i32* %4, align 4
  ret i32 %293
}

declare dso_local i32 @memset(%struct.ena_com_llq_info*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_set_llq(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
