; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_fill_link_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_fill_link_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.il_lq_sta = type { i32, %struct.il_link_quality_cmd }
%struct.il_link_quality_cmd = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.il_scale_tbl_info = type { i32, i32 }

@IL_NUMBER_TRY = common dso_local global i32 0, align 4
@IL_HT_NUMBER_TRY = common dso_local global i32 0, align 4
@LINK_QUAL_MAX_RETRY_NUM = common dso_local global i32 0, align 4
@NUM_TRY_BEFORE_ANT_TOGGLE = common dso_local global i32 0, align 4
@LINK_QUAL_AGG_FRAME_LIMIT_DEF = common dso_local global i32 0, align 4
@LINK_QUAL_AGG_DISABLE_START_DEF = common dso_local global i32 0, align 4
@LINK_QUAL_AGG_TIME_LIMIT_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_lq_sta*, i32)* @il4965_rs_fill_link_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_rs_fill_link_cmd(%struct.il_priv* %0, %struct.il_lq_sta* %1, i32 %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.il_lq_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.il_scale_tbl_info, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.il_link_quality_cmd*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.il_lq_sta* %1, %struct.il_lq_sta** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %16 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %15, i32 0, i32 1
  store %struct.il_link_quality_cmd* %16, %struct.il_link_quality_cmd** %14, align 8
  %17 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @il4965_rs_dbgfs_set_mcs(%struct.il_lq_sta* %17, i32* %6, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %22 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @il4965_rs_get_tbl_info_from_mcs(i32 %20, i32 %23, %struct.il_scale_tbl_info* %7, i32* %9)
  %25 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @is_legacy(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  %30 = load i32, i32* @IL_NUMBER_TRY, align 4
  store i32 %30, i32* %10, align 4
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @IL_HT_NUMBER_TRY, align 4
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @is_mimo(i32 %35)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %14, align 8
  %41 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %14, align 8
  %46 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i8* %44, i8** %51, align 8
  %52 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @il4965_num_of_ant(i32 %53)
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %33
  %57 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %7, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %14, align 8
  %60 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 8
  br label %74

62:                                               ; preds = %33
  %63 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %7, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @il4965_num_of_ant(i32 %64)
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %7, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %14, align 8
  %71 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %62
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %10, align 4
  %79 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %80 = icmp ne %struct.il_priv* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %83 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %81, %74
  br label %87

87:                                               ; preds = %184, %86
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @LINK_QUAL_MAX_RETRY_NUM, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %201

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %123, %91
  %93 = load i32, i32* %10, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @LINK_QUAL_MAX_RETRY_NUM, align 4
  %98 = icmp slt i32 %96, %97
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi i1 [ false, %92 ], [ %98, %95 ]
  br i1 %100, label %101, label %140

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %7, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @is_legacy(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %101
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @NUM_TRY_BEFORE_ANT_TOGGLE, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %122

113:                                              ; preds = %106
  %114 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %115 = icmp ne %struct.il_priv* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32, i32* %13, align 4
  %118 = call i64 @il4965_rs_toggle_antenna(i32 %117, i32* %6, %struct.il_scale_tbl_info* %7)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 1, i32* %11, align 4
  br label %121

121:                                              ; preds = %120, %116, %113
  br label %122

122:                                              ; preds = %121, %110
  br label %123

123:                                              ; preds = %122, %101
  %124 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @il4965_rs_dbgfs_set_mcs(%struct.il_lq_sta* %124, i32* %6, i32 %125)
  %127 = load i32, i32* %6, align 4
  %128 = call i8* @cpu_to_le32(i32 %127)
  %129 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %14, align 8
  %130 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %129, i32 0, i32 1
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store i8* %128, i8** %135, align 8
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %92

140:                                              ; preds = %99
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %143 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @il4965_rs_get_tbl_info_from_mcs(i32 %141, i32 %144, %struct.il_scale_tbl_info* %7, i32* %9)
  %146 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %7, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @is_mimo(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %140
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %14, align 8
  %153 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 8
  br label %155

155:                                              ; preds = %150, %140
  %156 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @il4965_rs_get_lower_rate(%struct.il_lq_sta* %156, %struct.il_scale_tbl_info* %7, i32 %157, i32 %158)
  store i32 %159, i32* %6, align 4
  %160 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %7, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @is_legacy(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %155
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @NUM_TRY_BEFORE_ANT_TOGGLE, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  br label %180

171:                                              ; preds = %164
  %172 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %173 = icmp ne %struct.il_priv* %172, null
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i32, i32* %13, align 4
  %176 = call i64 @il4965_rs_toggle_antenna(i32 %175, i32* %6, %struct.il_scale_tbl_info* %7)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 1, i32* %11, align 4
  br label %179

179:                                              ; preds = %178, %174, %171
  br label %180

180:                                              ; preds = %179, %168
  %181 = load i32, i32* @IL_NUMBER_TRY, align 4
  store i32 %181, i32* %10, align 4
  br label %184

182:                                              ; preds = %155
  %183 = load i32, i32* @IL_HT_NUMBER_TRY, align 4
  store i32 %183, i32* %10, align 4
  br label %184

184:                                              ; preds = %182, %180
  store i32 0, i32* %12, align 4
  %185 = load %struct.il_lq_sta*, %struct.il_lq_sta** %5, align 8
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @il4965_rs_dbgfs_set_mcs(%struct.il_lq_sta* %185, i32* %6, i32 %186)
  %188 = load i32, i32* %6, align 4
  %189 = call i8* @cpu_to_le32(i32 %188)
  %190 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %14, align 8
  %191 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %190, i32 0, i32 1
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  store i8* %189, i8** %196, align 8
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %10, align 4
  br label %87

201:                                              ; preds = %87
  %202 = load i32, i32* @LINK_QUAL_AGG_FRAME_LIMIT_DEF, align 4
  %203 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %14, align 8
  %204 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  store i32 %202, i32* %205, align 8
  %206 = load i32, i32* @LINK_QUAL_AGG_DISABLE_START_DEF, align 4
  %207 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %14, align 8
  %208 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  store i32 %206, i32* %209, align 4
  %210 = load i32, i32* @LINK_QUAL_AGG_TIME_LIMIT_DEF, align 4
  %211 = call i32 @cpu_to_le16(i32 %210)
  %212 = load %struct.il_link_quality_cmd*, %struct.il_link_quality_cmd** %14, align 8
  %213 = getelementptr inbounds %struct.il_link_quality_cmd, %struct.il_link_quality_cmd* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  store i32 %211, i32* %214, align 8
  ret void
}

declare dso_local i32 @il4965_rs_dbgfs_set_mcs(%struct.il_lq_sta*, i32*, i32) #1

declare dso_local i32 @il4965_rs_get_tbl_info_from_mcs(i32, i32, %struct.il_scale_tbl_info*, i32*) #1

declare dso_local i64 @is_legacy(i32) #1

declare dso_local i64 @is_mimo(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @il4965_num_of_ant(i32) #1

declare dso_local i64 @il4965_rs_toggle_antenna(i32, i32*, %struct.il_scale_tbl_info*) #1

declare dso_local i32 @il4965_rs_get_lower_rate(%struct.il_lq_sta*, %struct.il_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
