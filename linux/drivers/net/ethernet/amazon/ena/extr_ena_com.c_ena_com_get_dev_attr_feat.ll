; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_get_dev_attr_feat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_get_dev_attr_feat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, i32 }
%struct.ena_com_dev_get_features_ctx = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ena_admin_get_feat_resp = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENA_ADMIN_DEVICE_ATTRIBUTES = common dso_local global i32 0, align 4
@ENA_ADMIN_MAX_QUEUES_EXT = common dso_local global i32 0, align 4
@ENA_FEATURE_MAX_QUEUE_EXT_VER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENA_ADMIN_MAX_QUEUES_NUM = common dso_local global i32 0, align 4
@ENA_ADMIN_AENQ_CONFIG = common dso_local global i32 0, align 4
@ENA_ADMIN_STATELESS_OFFLOAD_CONFIG = common dso_local global i32 0, align 4
@ENA_ADMIN_HW_HINTS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENA_ADMIN_LLQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_get_dev_attr_feat(%struct.ena_com_dev* %0, %struct.ena_com_dev_get_features_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca %struct.ena_com_dev_get_features_ctx*, align 8
  %6 = alloca %struct.ena_admin_get_feat_resp, align 8
  %7 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store %struct.ena_com_dev_get_features_ctx* %1, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %8 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %9 = load i32, i32* @ENA_ADMIN_DEVICE_ATTRIBUTES, align 4
  %10 = call i32 @ena_com_get_feature(%struct.ena_com_dev* %8, %struct.ena_admin_get_feat_resp* %6, i32 %9, i64 0)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %161

15:                                               ; preds = %2
  %16 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %6, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 6
  %20 = call i32 @memcpy(i32* %17, %struct.TYPE_6__* %19, i32 24)
  %21 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %26 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %28 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ENA_ADMIN_MAX_QUEUES_EXT, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %15
  %35 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %36 = load i32, i32* @ENA_ADMIN_MAX_QUEUES_EXT, align 4
  %37 = load i64, i64* @ENA_FEATURE_MAX_QUEUE_EXT_VER, align 8
  %38 = call i32 @ena_com_get_feature(%struct.ena_com_dev* %35, %struct.ena_admin_get_feat_resp* %6, i32 %36, i64 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %161

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %6, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ENA_FEATURE_MAX_QUEUE_EXT_VER, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %161

53:                                               ; preds = %43
  %54 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %6, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 5
  %58 = call i32 @memcpy(i32* %55, %struct.TYPE_6__* %57, i32 24)
  %59 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %6, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %65 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %86

66:                                               ; preds = %15
  %67 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %68 = load i32, i32* @ENA_ADMIN_MAX_QUEUES_NUM, align 4
  %69 = call i32 @ena_com_get_feature(%struct.ena_com_dev* %67, %struct.ena_admin_get_feat_resp* %6, i32 %68, i64 0)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %6, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  %74 = call i32 @memcpy(i32* %71, %struct.TYPE_6__* %73, i32 24)
  %75 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %6, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %80 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %66
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %161

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85, %53
  %87 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %88 = load i32, i32* @ENA_ADMIN_AENQ_CONFIG, align 4
  %89 = call i32 @ena_com_get_feature(%struct.ena_com_dev* %87, %struct.ena_admin_get_feat_resp* %6, i32 %88, i64 0)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %161

94:                                               ; preds = %86
  %95 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %6, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = call i32 @memcpy(i32* %96, %struct.TYPE_6__* %98, i32 24)
  %100 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %101 = load i32, i32* @ENA_ADMIN_STATELESS_OFFLOAD_CONFIG, align 4
  %102 = call i32 @ena_com_get_feature(%struct.ena_com_dev* %100, %struct.ena_admin_get_feat_resp* %6, i32 %101, i64 0)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %161

107:                                              ; preds = %94
  %108 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %109 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %6, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = call i32 @memcpy(i32* %109, %struct.TYPE_6__* %111, i32 24)
  %113 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %114 = load i32, i32* @ENA_ADMIN_HW_HINTS, align 4
  %115 = call i32 @ena_com_get_feature(%struct.ena_com_dev* %113, %struct.ena_admin_get_feat_resp* %6, i32 %114, i64 0)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %107
  %119 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %120 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %6, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = call i32 @memcpy(i32* %120, %struct.TYPE_6__* %122, i32 24)
  br label %136

124:                                              ; preds = %107
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @EOPNOTSUPP, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %131 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %130, i32 0, i32 1
  %132 = call i32 @memset(i32* %131, i32 0, i32 4)
  br label %135

133:                                              ; preds = %124
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %3, align 4
  br label %161

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %118
  %137 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %138 = load i32, i32* @ENA_ADMIN_LLQ, align 4
  %139 = call i32 @ena_com_get_feature(%struct.ena_com_dev* %137, %struct.ena_admin_get_feat_resp* %6, i32 %138, i64 0)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %136
  %143 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %144 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %6, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = call i32 @memcpy(i32* %144, %struct.TYPE_6__* %146, i32 24)
  br label %160

148:                                              ; preds = %136
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @EOPNOTSUPP, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %5, align 8
  %155 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %154, i32 0, i32 0
  %156 = call i32 @memset(i32* %155, i32 0, i32 4)
  br label %159

157:                                              ; preds = %148
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %3, align 4
  br label %161

159:                                              ; preds = %153
  br label %160

160:                                              ; preds = %159, %142
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %160, %157, %133, %105, %92, %83, %50, %41, %13
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @ena_com_get_feature(%struct.ena_com_dev*, %struct.ena_admin_get_feat_resp*, i32, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
