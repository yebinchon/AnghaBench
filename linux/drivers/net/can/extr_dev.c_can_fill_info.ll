; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.can_priv = type { i32, i32, i32, i32, i32, %struct.can_ctrlmode, %struct.can_ctrlmode*, %struct.can_ctrlmode*, %struct.can_ctrlmode*, i32, %struct.can_ctrlmode*, %struct.can_ctrlmode, i32 (%struct.net_device*, %struct.can_ctrlmode*)*, %struct.can_ctrlmode, %struct.can_ctrlmode*, %struct.can_ctrlmode, i32 (%struct.net_device*, i32*)*, i32 }
%struct.can_ctrlmode = type { i64, i32 }
%struct.can_berr_counter = type { i64, i32 }

@IFLA_CAN_BITTIMING = common dso_local global i32 0, align 4
@IFLA_CAN_BITTIMING_CONST = common dso_local global i32 0, align 4
@IFLA_CAN_CLOCK = common dso_local global i32 0, align 4
@IFLA_CAN_STATE = common dso_local global i32 0, align 4
@IFLA_CAN_CTRLMODE = common dso_local global i32 0, align 4
@IFLA_CAN_RESTART_MS = common dso_local global i32 0, align 4
@IFLA_CAN_BERR_COUNTER = common dso_local global i32 0, align 4
@IFLA_CAN_DATA_BITTIMING = common dso_local global i32 0, align 4
@IFLA_CAN_DATA_BITTIMING_CONST = common dso_local global i32 0, align 4
@IFLA_CAN_TERMINATION = common dso_local global i32 0, align 4
@IFLA_CAN_TERMINATION_CONST = common dso_local global i32 0, align 4
@IFLA_CAN_BITRATE_CONST = common dso_local global i32 0, align 4
@IFLA_CAN_DATA_BITRATE_CONST = common dso_local global i32 0, align 4
@IFLA_CAN_BITRATE_MAX = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @can_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_fill_info(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.can_priv*, align 8
  %7 = alloca %struct.can_ctrlmode, align 8
  %8 = alloca %struct.can_berr_counter, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.can_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.can_priv* %11, %struct.can_priv** %6, align 8
  %12 = getelementptr inbounds %struct.can_ctrlmode, %struct.can_ctrlmode* %7, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.can_ctrlmode, %struct.can_ctrlmode* %7, i32 0, i32 1
  %14 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %15 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %14, i32 0, i32 17
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %13, align 8
  %17 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %18 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %21 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %20, i32 0, i32 16
  %22 = load i32 (%struct.net_device*, i32*)*, i32 (%struct.net_device*, i32*)** %21, align 8
  %23 = icmp ne i32 (%struct.net_device*, i32*)* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %26 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %25, i32 0, i32 16
  %27 = load i32 (%struct.net_device*, i32*)*, i32 (%struct.net_device*, i32*)** %26, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = call i32 %27(%struct.net_device* %28, i32* %9)
  br label %30

30:                                               ; preds = %24, %2
  %31 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %32 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %31, i32 0, i32 15
  %33 = getelementptr inbounds %struct.can_ctrlmode, %struct.can_ctrlmode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i32, i32* @IFLA_CAN_BITTIMING, align 4
  %39 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %40 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %39, i32 0, i32 15
  %41 = call i64 @nla_put(%struct.sk_buff* %37, i32 %38, i32 16, %struct.can_ctrlmode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %199, label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %45 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %44, i32 0, i32 14
  %46 = load %struct.can_ctrlmode*, %struct.can_ctrlmode** %45, align 8
  %47 = icmp ne %struct.can_ctrlmode* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load i32, i32* @IFLA_CAN_BITTIMING_CONST, align 4
  %51 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %52 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %51, i32 0, i32 14
  %53 = load %struct.can_ctrlmode*, %struct.can_ctrlmode** %52, align 8
  %54 = call i64 @nla_put(%struct.sk_buff* %49, i32 %50, i32 16, %struct.can_ctrlmode* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %199, label %56

56:                                               ; preds = %48, %43
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load i32, i32* @IFLA_CAN_CLOCK, align 4
  %59 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %60 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %59, i32 0, i32 13
  %61 = call i64 @nla_put(%struct.sk_buff* %57, i32 %58, i32 16, %struct.can_ctrlmode* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %199, label %63

63:                                               ; preds = %56
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = load i32, i32* @IFLA_CAN_STATE, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @nla_put_u32(%struct.sk_buff* %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %199, label %69

69:                                               ; preds = %63
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = load i32, i32* @IFLA_CAN_CTRLMODE, align 4
  %72 = call i64 @nla_put(%struct.sk_buff* %70, i32 %71, i32 16, %struct.can_ctrlmode* %7)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %199, label %74

74:                                               ; preds = %69
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = load i32, i32* @IFLA_CAN_RESTART_MS, align 4
  %77 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %78 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @nla_put_u32(%struct.sk_buff* %75, i32 %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %199, label %82

82:                                               ; preds = %74
  %83 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %84 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %83, i32 0, i32 12
  %85 = load i32 (%struct.net_device*, %struct.can_ctrlmode*)*, i32 (%struct.net_device*, %struct.can_ctrlmode*)** %84, align 8
  %86 = icmp ne i32 (%struct.net_device*, %struct.can_ctrlmode*)* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %89 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %88, i32 0, i32 12
  %90 = load i32 (%struct.net_device*, %struct.can_ctrlmode*)*, i32 (%struct.net_device*, %struct.can_ctrlmode*)** %89, align 8
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = bitcast %struct.can_berr_counter* %8 to %struct.can_ctrlmode*
  %93 = call i32 %90(%struct.net_device* %91, %struct.can_ctrlmode* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %87
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = load i32, i32* @IFLA_CAN_BERR_COUNTER, align 4
  %98 = bitcast %struct.can_berr_counter* %8 to %struct.can_ctrlmode*
  %99 = call i64 @nla_put(%struct.sk_buff* %96, i32 %97, i32 16, %struct.can_ctrlmode* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %199, label %101

101:                                              ; preds = %95, %87, %82
  %102 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %103 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %102, i32 0, i32 11
  %104 = getelementptr inbounds %struct.can_ctrlmode, %struct.can_ctrlmode* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = load i32, i32* @IFLA_CAN_DATA_BITTIMING, align 4
  %110 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %111 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %110, i32 0, i32 11
  %112 = call i64 @nla_put(%struct.sk_buff* %108, i32 %109, i32 16, %struct.can_ctrlmode* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %199, label %114

114:                                              ; preds = %107, %101
  %115 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %116 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %115, i32 0, i32 10
  %117 = load %struct.can_ctrlmode*, %struct.can_ctrlmode** %116, align 8
  %118 = icmp ne %struct.can_ctrlmode* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %121 = load i32, i32* @IFLA_CAN_DATA_BITTIMING_CONST, align 4
  %122 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %123 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %122, i32 0, i32 10
  %124 = load %struct.can_ctrlmode*, %struct.can_ctrlmode** %123, align 8
  %125 = call i64 @nla_put(%struct.sk_buff* %120, i32 %121, i32 16, %struct.can_ctrlmode* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %199, label %127

127:                                              ; preds = %119, %114
  %128 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %129 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %128, i32 0, i32 8
  %130 = load %struct.can_ctrlmode*, %struct.can_ctrlmode** %129, align 8
  %131 = icmp ne %struct.can_ctrlmode* %130, null
  br i1 %131, label %132, label %154

132:                                              ; preds = %127
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = load i32, i32* @IFLA_CAN_TERMINATION, align 4
  %135 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %136 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @nla_put_u16(%struct.sk_buff* %133, i32 %134, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %199, label %140

140:                                              ; preds = %132
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = load i32, i32* @IFLA_CAN_TERMINATION_CONST, align 4
  %143 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %144 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = mul i64 16, %146
  %148 = trunc i64 %147 to i32
  %149 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %150 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %149, i32 0, i32 8
  %151 = load %struct.can_ctrlmode*, %struct.can_ctrlmode** %150, align 8
  %152 = call i64 @nla_put(%struct.sk_buff* %141, i32 %142, i32 %148, %struct.can_ctrlmode* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %199, label %154

154:                                              ; preds = %140, %127
  %155 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %156 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %155, i32 0, i32 7
  %157 = load %struct.can_ctrlmode*, %struct.can_ctrlmode** %156, align 8
  %158 = icmp ne %struct.can_ctrlmode* %157, null
  br i1 %158, label %159, label %173

159:                                              ; preds = %154
  %160 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %161 = load i32, i32* @IFLA_CAN_BITRATE_CONST, align 4
  %162 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %163 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = mul i64 16, %165
  %167 = trunc i64 %166 to i32
  %168 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %169 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %168, i32 0, i32 7
  %170 = load %struct.can_ctrlmode*, %struct.can_ctrlmode** %169, align 8
  %171 = call i64 @nla_put(%struct.sk_buff* %160, i32 %161, i32 %167, %struct.can_ctrlmode* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %199, label %173

173:                                              ; preds = %159, %154
  %174 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %175 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %174, i32 0, i32 6
  %176 = load %struct.can_ctrlmode*, %struct.can_ctrlmode** %175, align 8
  %177 = icmp ne %struct.can_ctrlmode* %176, null
  br i1 %177, label %178, label %192

178:                                              ; preds = %173
  %179 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %180 = load i32, i32* @IFLA_CAN_DATA_BITRATE_CONST, align 4
  %181 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %182 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = mul i64 16, %184
  %186 = trunc i64 %185 to i32
  %187 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %188 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %187, i32 0, i32 6
  %189 = load %struct.can_ctrlmode*, %struct.can_ctrlmode** %188, align 8
  %190 = call i64 @nla_put(%struct.sk_buff* %179, i32 %180, i32 %186, %struct.can_ctrlmode* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %178, %173
  %193 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %194 = load i32, i32* @IFLA_CAN_BITRATE_MAX, align 4
  %195 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %196 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %195, i32 0, i32 5
  %197 = call i64 @nla_put(%struct.sk_buff* %193, i32 %194, i32 16, %struct.can_ctrlmode* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %192, %178, %159, %140, %132, %119, %107, %95, %74, %69, %63, %56, %48, %36
  %200 = load i32, i32* @EMSGSIZE, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %3, align 4
  br label %203

202:                                              ; preds = %192
  store i32 0, i32* %3, align 4
  br label %203

203:                                              ; preds = %202, %199
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.can_ctrlmode*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
