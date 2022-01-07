; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_pull_vdev_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_pull_vdev_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_tlv_vdev_stats = type { i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath10k_fw_stats_vdev = type { i8**, i8**, i8**, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wmi_tlv_vdev_stats*, %struct.ath10k_fw_stats_vdev*)* @ath10k_wmi_tlv_pull_vdev_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_tlv_pull_vdev_stats(%struct.wmi_tlv_vdev_stats* %0, %struct.ath10k_fw_stats_vdev* %1) #0 {
  %3 = alloca %struct.wmi_tlv_vdev_stats*, align 8
  %4 = alloca %struct.ath10k_fw_stats_vdev*, align 8
  %5 = alloca i32, align 4
  store %struct.wmi_tlv_vdev_stats* %0, %struct.wmi_tlv_vdev_stats** %3, align 8
  store %struct.ath10k_fw_stats_vdev* %1, %struct.ath10k_fw_stats_vdev** %4, align 8
  %6 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %7 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %6, i32 0, i32 13
  %8 = load i32, i32* %7, align 8
  %9 = call i8* @__le32_to_cpu(i32 %8)
  %10 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %11 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %10, i32 0, i32 13
  store i8* %9, i8** %11, align 8
  %12 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %13 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @__le32_to_cpu(i32 %14)
  %16 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %17 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %16, i32 0, i32 12
  store i8* %15, i8** %17, align 8
  %18 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %19 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %18, i32 0, i32 11
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @__le32_to_cpu(i32 %20)
  %22 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %23 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %22, i32 0, i32 11
  store i8* %21, i8** %23, align 8
  %24 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %25 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @__le32_to_cpu(i32 %26)
  %28 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %29 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %28, i32 0, i32 10
  store i8* %27, i8** %29, align 8
  %30 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %31 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @__le32_to_cpu(i32 %32)
  %34 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %35 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %34, i32 0, i32 9
  store i8* %33, i8** %35, align 8
  %36 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %37 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @__le32_to_cpu(i32 %38)
  %40 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %41 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %40, i32 0, i32 8
  store i8* %39, i8** %41, align 8
  %42 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %43 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @__le32_to_cpu(i32 %44)
  %46 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %47 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %46, i32 0, i32 7
  store i8* %45, i8** %47, align 8
  %48 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %49 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @__le32_to_cpu(i32 %50)
  %52 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %53 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %55 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @__le32_to_cpu(i32 %56)
  %58 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %59 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %82, %2
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %63 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @ARRAY_SIZE(i32* %64)
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %60
  %68 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %69 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @__le32_to_cpu(i32 %74)
  %76 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %77 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %76, i32 0, i32 4
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %75, i8** %81, align 8
  br label %82

82:                                               ; preds = %67
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %60

85:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %108, %85
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %89 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @ARRAY_SIZE(i32* %90)
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %86
  %94 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %95 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @__le32_to_cpu(i32 %100)
  %102 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %103 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %102, i32 0, i32 3
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  store i8* %101, i8** %107, align 8
  br label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %86

111:                                              ; preds = %86
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %134, %111
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %115 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @ARRAY_SIZE(i32* %116)
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %112
  %120 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %121 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @__le32_to_cpu(i32 %126)
  %128 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %129 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %128, i32 0, i32 2
  %130 = load i8**, i8*** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  store i8* %127, i8** %133, align 8
  br label %134

134:                                              ; preds = %119
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %112

137:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %160, %137
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %141 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @ARRAY_SIZE(i32* %142)
  %144 = icmp slt i32 %139, %143
  br i1 %144, label %145, label %163

145:                                              ; preds = %138
  %146 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %147 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @__le32_to_cpu(i32 %152)
  %154 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %155 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %154, i32 0, i32 1
  %156 = load i8**, i8*** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  store i8* %153, i8** %159, align 8
  br label %160

160:                                              ; preds = %145
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  br label %138

163:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %186, %163
  %165 = load i32, i32* %5, align 4
  %166 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %167 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @ARRAY_SIZE(i32* %168)
  %170 = icmp slt i32 %165, %169
  br i1 %170, label %171, label %189

171:                                              ; preds = %164
  %172 = load %struct.wmi_tlv_vdev_stats*, %struct.wmi_tlv_vdev_stats** %3, align 8
  %173 = getelementptr inbounds %struct.wmi_tlv_vdev_stats, %struct.wmi_tlv_vdev_stats* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @__le32_to_cpu(i32 %178)
  %180 = load %struct.ath10k_fw_stats_vdev*, %struct.ath10k_fw_stats_vdev** %4, align 8
  %181 = getelementptr inbounds %struct.ath10k_fw_stats_vdev, %struct.ath10k_fw_stats_vdev* %180, i32 0, i32 0
  %182 = load i8**, i8*** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  store i8* %179, i8** %185, align 8
  br label %186

186:                                              ; preds = %171
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %5, align 4
  br label %164

189:                                              ; preds = %164
  ret void
}

declare dso_local i8* @__le32_to_cpu(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
