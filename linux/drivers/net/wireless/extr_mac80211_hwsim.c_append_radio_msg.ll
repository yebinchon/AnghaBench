; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_append_radio_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_append_radio_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hwsim_new_radio_params = type { i32, i64, i64, i64, i64, i64, i64 }

@HWSIM_ATTR_RADIO_ID = common dso_local global i32 0, align 4
@HWSIM_ATTR_CHANNELS = common dso_local global i32 0, align 4
@HWSIM_ATTR_REG_HINT_ALPHA2 = common dso_local global i32 0, align 4
@hwsim_world_regdom_custom = common dso_local global i64* null, align 8
@HWSIM_ATTR_REG_CUSTOM_REG = common dso_local global i32 0, align 4
@HWSIM_ATTR_REG_STRICT_REG = common dso_local global i32 0, align 4
@HWSIM_ATTR_SUPPORT_P2P_DEVICE = common dso_local global i32 0, align 4
@HWSIM_ATTR_USE_CHANCTX = common dso_local global i32 0, align 4
@HWSIM_ATTR_RADIO_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.hwsim_new_radio_params*)* @append_radio_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_radio_msg(%struct.sk_buff* %0, i32 %1, %struct.hwsim_new_radio_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hwsim_new_radio_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hwsim_new_radio_params* %2, %struct.hwsim_new_radio_params** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* @HWSIM_ATTR_RADIO_ID, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @nla_put_u32(%struct.sk_buff* %10, i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %152

18:                                               ; preds = %3
  %19 = load %struct.hwsim_new_radio_params*, %struct.hwsim_new_radio_params** %7, align 8
  %20 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* @HWSIM_ATTR_CHANNELS, align 4
  %26 = load %struct.hwsim_new_radio_params*, %struct.hwsim_new_radio_params** %7, align 8
  %27 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @nla_put_u32(%struct.sk_buff* %24, i32 %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %152

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %18
  %36 = load %struct.hwsim_new_radio_params*, %struct.hwsim_new_radio_params** %7, align 8
  %37 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load i32, i32* @HWSIM_ATTR_REG_HINT_ALPHA2, align 4
  %43 = load %struct.hwsim_new_radio_params*, %struct.hwsim_new_radio_params** %7, align 8
  %44 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @nla_put(%struct.sk_buff* %41, i32 %42, i32 2, i64 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %152

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %35
  %53 = load %struct.hwsim_new_radio_params*, %struct.hwsim_new_radio_params** %7, align 8
  %54 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %84, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i64*, i64** @hwsim_world_regdom_custom, align 8
  %61 = call i32 @ARRAY_SIZE(i64* %60)
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %58
  %64 = load i64*, i64** @hwsim_world_regdom_custom, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.hwsim_new_radio_params*, %struct.hwsim_new_radio_params** %7, align 8
  %70 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %84

74:                                               ; preds = %63
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = load i32, i32* @HWSIM_ATTR_REG_CUSTOM_REG, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @nla_put_u32(%struct.sk_buff* %75, i32 %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %152

83:                                               ; preds = %74
  br label %87

84:                                               ; preds = %73
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %58

87:                                               ; preds = %83, %58
  br label %88

88:                                               ; preds = %87, %52
  %89 = load %struct.hwsim_new_radio_params*, %struct.hwsim_new_radio_params** %7, align 8
  %90 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = load i32, i32* @HWSIM_ATTR_REG_STRICT_REG, align 4
  %96 = call i32 @nla_put_flag(%struct.sk_buff* %94, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %4, align 4
  br label %152

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %88
  %103 = load %struct.hwsim_new_radio_params*, %struct.hwsim_new_radio_params** %7, align 8
  %104 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = load i32, i32* @HWSIM_ATTR_SUPPORT_P2P_DEVICE, align 4
  %110 = call i32 @nla_put_flag(%struct.sk_buff* %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  br label %152

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115, %102
  %117 = load %struct.hwsim_new_radio_params*, %struct.hwsim_new_radio_params** %7, align 8
  %118 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = load i32, i32* @HWSIM_ATTR_USE_CHANCTX, align 4
  %124 = call i32 @nla_put_flag(%struct.sk_buff* %122, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %4, align 4
  br label %152

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %116
  %131 = load %struct.hwsim_new_radio_params*, %struct.hwsim_new_radio_params** %7, align 8
  %132 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %130
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = load i32, i32* @HWSIM_ATTR_RADIO_NAME, align 4
  %138 = load %struct.hwsim_new_radio_params*, %struct.hwsim_new_radio_params** %7, align 8
  %139 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @strlen(i64 %140)
  %142 = load %struct.hwsim_new_radio_params*, %struct.hwsim_new_radio_params** %7, align 8
  %143 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @nla_put(%struct.sk_buff* %136, i32 %137, i32 %141, i64 %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %135
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %4, align 4
  br label %152

150:                                              ; preds = %135
  br label %151

151:                                              ; preds = %150, %130
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %151, %148, %127, %113, %99, %81, %49, %32, %16
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
