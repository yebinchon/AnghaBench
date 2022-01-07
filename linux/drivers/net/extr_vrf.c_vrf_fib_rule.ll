; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_fib_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_fib_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fib_rule_hdr = type { i32, i64 }
%struct.nlmsghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@RTNL_FAMILY_IP6MR = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@FR_ACT_TO_TBL = common dso_local global i32 0, align 4
@FRA_PROTOCOL = common dso_local global i32 0, align 4
@RTPROT_KERNEL = common dso_local global i32 0, align 4
@FRA_L3MDEV = common dso_local global i32 0, align 4
@FRA_PRIORITY = common dso_local global i32 0, align 4
@FIB_RULE_PREF = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64, i32)* @vrf_fib_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrf_fib_rule(%struct.net_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fib_rule_hdr*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @AF_INET6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @RTNL_FAMILY_IP6MR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %3
  %20 = call i32 (...) @ipv6_mod_enabled()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %114

23:                                               ; preds = %19, %15
  %24 = call i32 (...) @vrf_fib_rule_nl_size()
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.sk_buff* @nlmsg_new(i32 %24, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %10, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %114

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %33, i32 0, i32 0, i32 0, i32 16, i32 0)
  store %struct.nlmsghdr* %34, %struct.nlmsghdr** %9, align 8
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %36 = icmp ne %struct.nlmsghdr* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %109

38:                                               ; preds = %32
  %39 = load i32, i32* @NLM_F_EXCL, align 4
  %40 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %41 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %45 = call %struct.fib_rule_hdr* @nlmsg_data(%struct.nlmsghdr* %44)
  store %struct.fib_rule_hdr* %45, %struct.fib_rule_hdr** %8, align 8
  %46 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %47 = call i32 @memset(%struct.fib_rule_hdr* %46, i32 0, i32 16)
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %50 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @FR_ACT_TO_TBL, align 4
  %52 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %8, align 8
  %53 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = load i32, i32* @FRA_PROTOCOL, align 4
  %56 = load i32, i32* @RTPROT_KERNEL, align 4
  %57 = call i64 @nla_put_u8(%struct.sk_buff* %54, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %38
  br label %109

60:                                               ; preds = %38
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = load i32, i32* @FRA_L3MDEV, align 4
  %63 = call i64 @nla_put_u8(%struct.sk_buff* %61, i32 %62, i32 1)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %109

66:                                               ; preds = %60
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = load i32, i32* @FRA_PRIORITY, align 4
  %69 = load i32, i32* @FIB_RULE_PREF, align 4
  %70 = call i64 @nla_put_u32(%struct.sk_buff* %67, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %109

73:                                               ; preds = %66
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %76 = call i32 @nlmsg_end(%struct.sk_buff* %74, %struct.nlmsghdr* %75)
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = call %struct.TYPE_2__* @dev_net(%struct.net_device* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %73
  %86 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %87 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %88 = call i32 @fib_nl_newrule(%struct.sk_buff* %86, %struct.nlmsghdr* %87, i32* null)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @EEXIST, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %93, %85
  br label %105

95:                                               ; preds = %73
  %96 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %97 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %98 = call i32 @fib_nl_delrule(%struct.sk_buff* %96, %struct.nlmsghdr* %97, i32* null)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @ENOENT, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %103, %95
  br label %105

105:                                              ; preds = %104, %94
  %106 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %107 = call i32 @nlmsg_free(%struct.sk_buff* %106)
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %4, align 4
  br label %114

109:                                              ; preds = %72, %65, %59, %37
  %110 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %111 = call i32 @nlmsg_free(%struct.sk_buff* %110)
  %112 = load i32, i32* @EMSGSIZE, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %109, %105, %29, %22
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @ipv6_mod_enabled(...) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @vrf_fib_rule_nl_size(...) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.fib_rule_hdr* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memset(%struct.fib_rule_hdr*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local %struct.TYPE_2__* @dev_net(%struct.net_device*) #1

declare dso_local i32 @fib_nl_newrule(%struct.sk_buff*, %struct.nlmsghdr*, i32*) #1

declare dso_local i32 @fib_nl_delrule(%struct.sk_buff*, %struct.nlmsghdr*, i32*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
