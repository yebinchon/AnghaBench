; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_create_custom_regdomain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_create_custom_regdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32, i8*, %struct.ieee80211_reg_rule* }
%struct.ieee80211_reg_rule = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i8*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.mwifiex_private = type { i32 }

@NL80211_MAX_SUPP_REG_RULES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@reg_rules = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@MWIFIEX_CHANNEL_DISABLED = common dso_local global i32 0, align 4
@MWIFIEX_CHANNEL_NOHT80 = common dso_local global i32 0, align 4
@MWIFIEX_CHANNEL_NOHT40 = common dso_local global i32 0, align 4
@MWIFIEX_CHANNEL_PASSIVE = common dso_local global i32 0, align 4
@NL80211_RRF_NO_IR = common dso_local global i32 0, align 4
@MWIFIEX_CHANNEL_DFS = common dso_local global i32 0, align 4
@NL80211_RRF_DFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_regdomain* (%struct.mwifiex_private*, i32*, i32)* @mwifiex_create_custom_regdomain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_regdomain* @mwifiex_create_custom_regdomain(%struct.mwifiex_private* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_regdomain*, align 8
  %10 = alloca %struct.ieee80211_reg_rule*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @NL80211_MAX_SUPP_REG_RULES, align 4
  %26 = icmp sgt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON_ONCE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.ieee80211_regdomain* @ERR_PTR(i32 %32)
  store %struct.ieee80211_regdomain* %33, %struct.ieee80211_regdomain** %4, align 8
  br label %206

34:                                               ; preds = %3
  %35 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %9, align 8
  %36 = load i32, i32* @reg_rules, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @struct_size(%struct.ieee80211_regdomain* %35, i32 %36, i32 %37)
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.ieee80211_regdomain* @kzalloc(i32 %38, i32 %39)
  store %struct.ieee80211_regdomain* %40, %struct.ieee80211_regdomain** %9, align 8
  %41 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %9, align 8
  %42 = icmp ne %struct.ieee80211_regdomain* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.ieee80211_regdomain* @ERR_PTR(i32 %45)
  store %struct.ieee80211_regdomain* %46, %struct.ieee80211_regdomain** %4, align 8
  br label %206

47:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %190, %47
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %193

52:                                               ; preds = %48
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %6, align 8
  %55 = load i32, i32* %53, align 4
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %20, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %9, align 8
  %60 = call i32 @kfree(%struct.ieee80211_regdomain* %59)
  store %struct.ieee80211_regdomain* null, %struct.ieee80211_regdomain** %4, align 8
  br label %206

61:                                               ; preds = %52
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %6, align 8
  %64 = load i32, i32* %62, align 4
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp sle i32 %65, 14
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  br label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %21, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %21, align 4
  %75 = call i32 @ieee80211_channel_to_frequency(i32 %73, i32 %74)
  store i32 %75, i32* %13, align 4
  store i32 0, i32* %11, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* @MWIFIEX_CHANNEL_DISABLED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %190

81:                                               ; preds = %71
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %81
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @MWIFIEX_CHANNEL_NOHT80, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = call i8* @MHZ_TO_KHZ(i32 80)
  %92 = ptrtoint i8* %91 to i64
  store i64 %92, i64* %15, align 8
  br label %105

93:                                               ; preds = %85
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* @MWIFIEX_CHANNEL_NOHT40, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = call i8* @MHZ_TO_KHZ(i32 40)
  %100 = ptrtoint i8* %99 to i64
  store i64 %100, i64* %15, align 8
  br label %104

101:                                              ; preds = %93
  %102 = call i8* @MHZ_TO_KHZ(i32 20)
  %103 = ptrtoint i8* %102 to i64
  store i64 %103, i64* %15, align 8
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %90
  br label %118

106:                                              ; preds = %81
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* @MWIFIEX_CHANNEL_NOHT40, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = call i8* @MHZ_TO_KHZ(i32 40)
  %113 = ptrtoint i8* %112 to i64
  store i64 %113, i64* %15, align 8
  br label %117

114:                                              ; preds = %106
  %115 = call i8* @MHZ_TO_KHZ(i32 20)
  %116 = ptrtoint i8* %115 to i64
  store i64 %116, i64* %15, align 8
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %117, %105
  %119 = load i32, i32* %12, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %134, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %134, label %125

125:                                              ; preds = %121
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* %15, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %14, align 4
  %132 = sub nsw i32 %130, %131
  %133 = icmp sgt i32 %132, 20
  br i1 %133, label %134, label %137

134:                                              ; preds = %129, %125, %121, %118
  %135 = load i32, i32* %19, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %19, align 4
  store i32 1, i32* %11, align 4
  br label %137

137:                                              ; preds = %134, %129
  %138 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %9, align 8
  %139 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %138, i32 0, i32 2
  %140 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %139, align 8
  %141 = load i32, i32* %19, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %140, i64 %143
  store %struct.ieee80211_reg_rule* %144, %struct.ieee80211_reg_rule** %10, align 8
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 10
  %147 = call i8* @MHZ_TO_KHZ(i32 %146)
  %148 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %149 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  store i8* %147, i8** %150, align 8
  %151 = load i32, i32* %17, align 4
  store i32 %151, i32* %18, align 4
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %14, align 4
  %153 = load i64, i64* %15, align 8
  store i64 %153, i64* %16, align 8
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %137
  br label %190

157:                                              ; preds = %137
  %158 = load i32, i32* %13, align 4
  %159 = sub nsw i32 %158, 10
  %160 = call i8* @MHZ_TO_KHZ(i32 %159)
  %161 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %162 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  store i8* %160, i8** %163, align 8
  %164 = call i32 @DBM_TO_MBM(i32 19)
  %165 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %166 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 4
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* @MWIFIEX_CHANNEL_PASSIVE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %157
  %173 = load i32, i32* @NL80211_RRF_NO_IR, align 4
  %174 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %175 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %172, %157
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* @MWIFIEX_CHANNEL_DFS, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load i32, i32* @NL80211_RRF_DFS, align 4
  %183 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %184 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %181, %176
  %186 = load i64, i64* %15, align 8
  %187 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %10, align 8
  %188 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  store i64 %186, i64* %189, align 8
  br label %190

190:                                              ; preds = %185, %156, %80
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %12, align 4
  br label %48

193:                                              ; preds = %48
  %194 = load i32, i32* %19, align 4
  %195 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %9, align 8
  %196 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %9, align 8
  %198 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 0
  store i8 57, i8* %200, align 1
  %201 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %9, align 8
  %202 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  store i8 57, i8* %204, align 1
  %205 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %9, align 8
  store %struct.ieee80211_regdomain* %205, %struct.ieee80211_regdomain** %4, align 8
  br label %206

206:                                              ; preds = %193, %58, %43, %30
  %207 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  ret %struct.ieee80211_regdomain* %207
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.ieee80211_regdomain* @ERR_PTR(i32) #1

declare dso_local %struct.ieee80211_regdomain* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.ieee80211_regdomain*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i8* @MHZ_TO_KHZ(i32) #1

declare dso_local i32 @DBM_TO_MBM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
