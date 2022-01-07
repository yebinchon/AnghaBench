; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_nl_fill_one_option_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/team/extr_team.c_team_nl_fill_one_option_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.team = type { i32 }
%struct.team_option_inst = type { i32, i64, %struct.team_option*, %struct.team_option_inst_info }
%struct.team_option = type { i32, i64, i32 }
%struct.team_option_inst_info = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.team_gsetter_ctx = type { %struct.TYPE_8__, %struct.team_option_inst_info* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@TEAM_ATTR_ITEM_OPTION = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@TEAM_ATTR_OPTION_NAME = common dso_local global i32 0, align 4
@TEAM_ATTR_OPTION_PORT_IFINDEX = common dso_local global i32 0, align 4
@TEAM_ATTR_OPTION_ARRAY_INDEX = common dso_local global i32 0, align 4
@TEAM_ATTR_OPTION_TYPE = common dso_local global i32 0, align 4
@NLA_U32 = common dso_local global i32 0, align 4
@TEAM_ATTR_OPTION_DATA = common dso_local global i32 0, align 4
@NLA_STRING = common dso_local global i32 0, align 4
@NLA_BINARY = common dso_local global i32 0, align 4
@NLA_FLAG = common dso_local global i32 0, align 4
@NLA_S32 = common dso_local global i32 0, align 4
@TEAM_ATTR_OPTION_REMOVED = common dso_local global i32 0, align 4
@TEAM_ATTR_OPTION_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.team*, %struct.team_option_inst*)* @team_nl_fill_one_option_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @team_nl_fill_one_option_get(%struct.sk_buff* %0, %struct.team* %1, %struct.team_option_inst* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.team*, align 8
  %7 = alloca %struct.team_option_inst*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.team_option*, align 8
  %10 = alloca %struct.team_option_inst_info*, align 8
  %11 = alloca %struct.team_gsetter_ctx, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.team* %1, %struct.team** %6, align 8
  store %struct.team_option_inst* %2, %struct.team_option_inst** %7, align 8
  %13 = load %struct.team_option_inst*, %struct.team_option_inst** %7, align 8
  %14 = getelementptr inbounds %struct.team_option_inst, %struct.team_option_inst* %13, i32 0, i32 2
  %15 = load %struct.team_option*, %struct.team_option** %14, align 8
  store %struct.team_option* %15, %struct.team_option** %9, align 8
  %16 = load %struct.team_option_inst*, %struct.team_option_inst** %7, align 8
  %17 = getelementptr inbounds %struct.team_option_inst, %struct.team_option_inst* %16, i32 0, i32 3
  store %struct.team_option_inst_info* %17, %struct.team_option_inst_info** %10, align 8
  %18 = load %struct.team_option_inst_info*, %struct.team_option_inst_info** %10, align 8
  %19 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %11, i32 0, i32 1
  store %struct.team_option_inst_info* %18, %struct.team_option_inst_info** %19, align 8
  %20 = load %struct.team*, %struct.team** %6, align 8
  %21 = load %struct.team_option_inst*, %struct.team_option_inst** %7, align 8
  %22 = call i32 @team_option_get(%struct.team* %20, %struct.team_option_inst* %21, %struct.team_gsetter_ctx* %11)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %4, align 4
  br label %212

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @TEAM_ATTR_ITEM_OPTION, align 4
  %30 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %28, i32 %29)
  store %struct.nlattr* %30, %struct.nlattr** %8, align 8
  %31 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EMSGSIZE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %212

36:                                               ; preds = %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32, i32* @TEAM_ATTR_OPTION_NAME, align 4
  %39 = load %struct.team_option*, %struct.team_option** %9, align 8
  %40 = getelementptr inbounds %struct.team_option, %struct.team_option* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @nla_put_string(%struct.sk_buff* %37, i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %206

45:                                               ; preds = %36
  %46 = load %struct.team_option_inst_info*, %struct.team_option_inst_info** %10, align 8
  %47 = getelementptr inbounds %struct.team_option_inst_info, %struct.team_option_inst_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i32, i32* @TEAM_ATTR_OPTION_PORT_IFINDEX, align 4
  %53 = load %struct.team_option_inst_info*, %struct.team_option_inst_info** %10, align 8
  %54 = getelementptr inbounds %struct.team_option_inst_info, %struct.team_option_inst_info* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @nla_put_u32(%struct.sk_buff* %51, i32 %52, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %206

63:                                               ; preds = %50, %45
  %64 = load %struct.team_option_inst*, %struct.team_option_inst** %7, align 8
  %65 = getelementptr inbounds %struct.team_option_inst, %struct.team_option_inst* %64, i32 0, i32 2
  %66 = load %struct.team_option*, %struct.team_option** %65, align 8
  %67 = getelementptr inbounds %struct.team_option, %struct.team_option* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load i32, i32* @TEAM_ATTR_OPTION_ARRAY_INDEX, align 4
  %73 = load %struct.team_option_inst_info*, %struct.team_option_inst_info** %10, align 8
  %74 = getelementptr inbounds %struct.team_option_inst_info, %struct.team_option_inst_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @nla_put_u32(%struct.sk_buff* %71, i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %206

79:                                               ; preds = %70, %63
  %80 = load %struct.team_option*, %struct.team_option** %9, align 8
  %81 = getelementptr inbounds %struct.team_option, %struct.team_option* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %175 [
    i32 128, label %83
    i32 129, label %100
    i32 132, label %117
    i32 131, label %139
    i32 130, label %158
  ]

83:                                               ; preds = %79
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = load i32, i32* @TEAM_ATTR_OPTION_TYPE, align 4
  %86 = load i32, i32* @NLA_U32, align 4
  %87 = call i32 @nla_put_u8(%struct.sk_buff* %84, i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %206

90:                                               ; preds = %83
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load i32, i32* @TEAM_ATTR_OPTION_DATA, align 4
  %93 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %11, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @nla_put_u32(%struct.sk_buff* %91, i32 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %206

99:                                               ; preds = %90
  br label %177

100:                                              ; preds = %79
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = load i32, i32* @TEAM_ATTR_OPTION_TYPE, align 4
  %103 = load i32, i32* @NLA_STRING, align 4
  %104 = call i32 @nla_put_u8(%struct.sk_buff* %101, i32 %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %206

107:                                              ; preds = %100
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = load i32, i32* @TEAM_ATTR_OPTION_DATA, align 4
  %110 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %11, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @nla_put_string(%struct.sk_buff* %108, i32 %109, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %206

116:                                              ; preds = %107
  br label %177

117:                                              ; preds = %79
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = load i32, i32* @TEAM_ATTR_OPTION_TYPE, align 4
  %120 = load i32, i32* @NLA_BINARY, align 4
  %121 = call i32 @nla_put_u8(%struct.sk_buff* %118, i32 %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %206

124:                                              ; preds = %117
  %125 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %126 = load i32, i32* @TEAM_ATTR_OPTION_DATA, align 4
  %127 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %11, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %11, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @nla_put(%struct.sk_buff* %125, i32 %126, i32 %130, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %124
  br label %206

138:                                              ; preds = %124
  br label %177

139:                                              ; preds = %79
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %141 = load i32, i32* @TEAM_ATTR_OPTION_TYPE, align 4
  %142 = load i32, i32* @NLA_FLAG, align 4
  %143 = call i32 @nla_put_u8(%struct.sk_buff* %140, i32 %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %206

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %11, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = load i32, i32* @TEAM_ATTR_OPTION_DATA, align 4
  %154 = call i64 @nla_put_flag(%struct.sk_buff* %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %206

157:                                              ; preds = %151, %146
  br label %177

158:                                              ; preds = %79
  %159 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %160 = load i32, i32* @TEAM_ATTR_OPTION_TYPE, align 4
  %161 = load i32, i32* @NLA_S32, align 4
  %162 = call i32 @nla_put_u8(%struct.sk_buff* %159, i32 %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %206

165:                                              ; preds = %158
  %166 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %167 = load i32, i32* @TEAM_ATTR_OPTION_DATA, align 4
  %168 = getelementptr inbounds %struct.team_gsetter_ctx, %struct.team_gsetter_ctx* %11, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @nla_put_s32(%struct.sk_buff* %166, i32 %167, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %206

174:                                              ; preds = %165
  br label %177

175:                                              ; preds = %79
  %176 = call i32 (...) @BUG()
  br label %177

177:                                              ; preds = %175, %174, %157, %138, %116, %99
  %178 = load %struct.team_option_inst*, %struct.team_option_inst** %7, align 8
  %179 = getelementptr inbounds %struct.team_option_inst, %struct.team_option_inst* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %184 = load i32, i32* @TEAM_ATTR_OPTION_REMOVED, align 4
  %185 = call i64 @nla_put_flag(%struct.sk_buff* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %206

188:                                              ; preds = %182, %177
  %189 = load %struct.team_option_inst*, %struct.team_option_inst** %7, align 8
  %190 = getelementptr inbounds %struct.team_option_inst, %struct.team_option_inst* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %188
  %194 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %195 = load i32, i32* @TEAM_ATTR_OPTION_CHANGED, align 4
  %196 = call i64 @nla_put_flag(%struct.sk_buff* %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %206

199:                                              ; preds = %193
  %200 = load %struct.team_option_inst*, %struct.team_option_inst** %7, align 8
  %201 = getelementptr inbounds %struct.team_option_inst, %struct.team_option_inst* %200, i32 0, i32 0
  store i32 0, i32* %201, align 8
  br label %202

202:                                              ; preds = %199, %188
  %203 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %204 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %205 = call i32 @nla_nest_end(%struct.sk_buff* %203, %struct.nlattr* %204)
  store i32 0, i32* %4, align 4
  br label %212

206:                                              ; preds = %198, %187, %173, %164, %156, %145, %137, %123, %115, %106, %98, %89, %78, %62, %44
  %207 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %208 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %209 = call i32 @nla_nest_cancel(%struct.sk_buff* %207, %struct.nlattr* %208)
  %210 = load i32, i32* @EMSGSIZE, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %206, %202, %33, %25
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i32 @team_option_get(%struct.team*, %struct.team_option_inst*, %struct.team_gsetter_ctx*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_put_s32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
