; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.tun_struct = type { i32, i32, i32, i32, i32 }

@IFLA_TUN_TYPE = common dso_local global i32 0, align 4
@TUN_TYPE_MASK = common dso_local global i32 0, align 4
@IFLA_TUN_OWNER = common dso_local global i32 0, align 4
@IFLA_TUN_GROUP = common dso_local global i32 0, align 4
@IFLA_TUN_PI = common dso_local global i32 0, align 4
@IFF_NO_PI = common dso_local global i32 0, align 4
@IFLA_TUN_VNET_HDR = common dso_local global i32 0, align 4
@IFF_VNET_HDR = common dso_local global i32 0, align 4
@IFLA_TUN_PERSIST = common dso_local global i32 0, align 4
@IFF_PERSIST = common dso_local global i32 0, align 4
@IFLA_TUN_MULTI_QUEUE = common dso_local global i32 0, align 4
@IFF_MULTI_QUEUE = common dso_local global i32 0, align 4
@IFLA_TUN_NUM_QUEUES = common dso_local global i32 0, align 4
@IFLA_TUN_NUM_DISABLED_QUEUES = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @tun_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_fill_info(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.tun_struct*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = call %struct.tun_struct* @netdev_priv(%struct.net_device* %7)
  store %struct.tun_struct* %8, %struct.tun_struct** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @IFLA_TUN_TYPE, align 4
  %11 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %12 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TUN_TYPE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = call i64 @nla_put_u8(%struct.sk_buff* %9, i32 %10, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %139

19:                                               ; preds = %2
  %20 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %21 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @uid_valid(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load i32, i32* @IFLA_TUN_OWNER, align 4
  %28 = call i32 (...) @current_user_ns()
  %29 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %30 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @from_kuid_munged(i32 %28, i32 %31)
  %33 = call i64 @nla_put_u32(%struct.sk_buff* %26, i32 %27, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %139

36:                                               ; preds = %25, %19
  %37 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %38 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @gid_valid(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load i32, i32* @IFLA_TUN_GROUP, align 4
  %45 = call i32 (...) @current_user_ns()
  %46 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %47 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @from_kgid_munged(i32 %45, i32 %48)
  %50 = call i64 @nla_put_u32(%struct.sk_buff* %43, i32 %44, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %139

53:                                               ; preds = %42, %36
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load i32, i32* @IFLA_TUN_PI, align 4
  %56 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %57 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IFF_NO_PI, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @nla_put_u8(%struct.sk_buff* %54, i32 %55, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %139

67:                                               ; preds = %53
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load i32, i32* @IFLA_TUN_VNET_HDR, align 4
  %70 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %71 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IFF_VNET_HDR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @nla_put_u8(%struct.sk_buff* %68, i32 %69, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %139

82:                                               ; preds = %67
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = load i32, i32* @IFLA_TUN_PERSIST, align 4
  %85 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %86 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IFF_PERSIST, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i64 @nla_put_u8(%struct.sk_buff* %83, i32 %84, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %82
  br label %139

97:                                               ; preds = %82
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = load i32, i32* @IFLA_TUN_MULTI_QUEUE, align 4
  %100 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %101 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @IFF_MULTI_QUEUE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i64 @nla_put_u8(%struct.sk_buff* %98, i32 %99, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  br label %139

112:                                              ; preds = %97
  %113 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %114 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IFF_MULTI_QUEUE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %112
  %120 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %121 = load i32, i32* @IFLA_TUN_NUM_QUEUES, align 4
  %122 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %123 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @nla_put_u32(%struct.sk_buff* %120, i32 %121, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %139

128:                                              ; preds = %119
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = load i32, i32* @IFLA_TUN_NUM_DISABLED_QUEUES, align 4
  %131 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %132 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @nla_put_u32(%struct.sk_buff* %129, i32 %130, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %139

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137, %112
  store i32 0, i32* %3, align 4
  br label %142

139:                                              ; preds = %136, %127, %111, %96, %81, %66, %52, %35, %18
  %140 = load i32, i32* @EMSGSIZE, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %139, %138
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.tun_struct* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @uid_valid(i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @from_kuid_munged(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i64 @gid_valid(i32) #1

declare dso_local i32 @from_kgid_munged(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
