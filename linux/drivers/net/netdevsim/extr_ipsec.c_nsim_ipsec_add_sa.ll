; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_ipsec.c_nsim_ipsec_add_sa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_ipsec.c_nsim_ipsec_add_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nsim_sa, %struct.nsim_sa }
%struct.nsim_sa = type { i32, i32, i32, i32*, i32, i32, %struct.xfrm_state* }
%struct.TYPE_5__ = type { i64 }
%struct.nsim_ipsec = type { i32, i32* }
%struct.netdevsim = type { %struct.nsim_ipsec }

@IPPROTO_ESP = common dso_local global i32 0, align 4
@IPPROTO_AH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unsupported protocol 0x%04x for ipsec offload\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Compression offload not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"No space for SA in Rx table!\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to get key data for SA table\0A\00", align 1
@XFRM_OFFLOAD_INBOUND = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@NSIM_IPSEC_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*)* @nsim_ipsec_add_sa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_ipsec_add_sa(%struct.xfrm_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.nsim_ipsec*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netdevsim*, align 8
  %7 = alloca %struct.nsim_sa, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %11 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.netdevsim* @netdev_priv(%struct.net_device* %14)
  store %struct.netdevsim* %15, %struct.netdevsim** %6, align 8
  %16 = load %struct.netdevsim*, %struct.netdevsim** %6, align 8
  %17 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %16, i32 0, i32 0
  store %struct.nsim_ipsec* %17, %struct.nsim_ipsec** %4, align 8
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %19 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IPPROTO_ESP, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %1
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %26 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IPPROTO_AH, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %34 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %151

40:                                               ; preds = %24, %1
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %151

50:                                               ; preds = %40
  %51 = load %struct.nsim_ipsec*, %struct.nsim_ipsec** %4, align 8
  %52 = call i32 @nsim_ipsec_find_empty_idx(%struct.nsim_ipsec* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %2, align 4
  br label %151

59:                                               ; preds = %50
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %8, align 8
  %62 = call i32 @memset(%struct.nsim_sa* %7, i32 0, i32 40)
  %63 = getelementptr inbounds %struct.nsim_sa, %struct.nsim_sa* %7, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %65 = getelementptr inbounds %struct.nsim_sa, %struct.nsim_sa* %7, i32 0, i32 6
  store %struct.xfrm_state* %64, %struct.xfrm_state** %65, align 8
  %66 = getelementptr inbounds %struct.nsim_sa, %struct.nsim_sa* %7, i32 0, i32 6
  %67 = load %struct.xfrm_state*, %struct.xfrm_state** %66, align 8
  %68 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IPPROTO_ESP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %59
  %75 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %76 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %81 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i1 [ true, %74 ], [ %83, %79 ]
  %86 = zext i1 %85 to i32
  %87 = getelementptr inbounds %struct.nsim_sa, %struct.nsim_sa* %7, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %59
  %89 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %90 = getelementptr inbounds %struct.nsim_sa, %struct.nsim_sa* %7, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.nsim_sa, %struct.nsim_sa* %7, i32 0, i32 4
  %93 = call i32 @nsim_ipsec_parse_proto_keys(%struct.xfrm_state* %89, i32 %91, i32* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load %struct.net_device*, %struct.net_device** %5, align 8
  %98 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %2, align 4
  br label %151

100:                                              ; preds = %88
  %101 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %102 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @XFRM_OFFLOAD_INBOUND, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %134

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.nsim_sa, %struct.nsim_sa* %7, i32 0, i32 2
  store i32 1, i32* %109, align 8
  %110 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %111 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @AF_INET6, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.nsim_sa, %struct.nsim_sa* %7, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %120 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = call i32 @memcpy(i32* %118, %struct.nsim_sa* %122, i32 16)
  br label %133

124:                                              ; preds = %108
  %125 = getelementptr inbounds %struct.nsim_sa, %struct.nsim_sa* %7, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %129 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = call i32 @memcpy(i32* %127, %struct.nsim_sa* %131, i32 4)
  br label %133

133:                                              ; preds = %124, %116
  br label %134

134:                                              ; preds = %133, %100
  %135 = load %struct.nsim_ipsec*, %struct.nsim_ipsec** %4, align 8
  %136 = getelementptr inbounds %struct.nsim_ipsec, %struct.nsim_ipsec* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i64, i64* %8, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = call i32 @memcpy(i32* %139, %struct.nsim_sa* %7, i32 40)
  %141 = load i64, i64* %8, align 8
  %142 = load i64, i64* @NSIM_IPSEC_VALID, align 8
  %143 = or i64 %141, %142
  %144 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %145 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  store i64 %143, i64* %146, align 8
  %147 = load %struct.nsim_ipsec*, %struct.nsim_ipsec** %4, align 8
  %148 = getelementptr inbounds %struct.nsim_ipsec, %struct.nsim_ipsec* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %134, %96, %55, %45, %31
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.netdevsim* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @nsim_ipsec_find_empty_idx(%struct.nsim_ipsec*) #1

declare dso_local i32 @memset(%struct.nsim_sa*, i32, i32) #1

declare dso_local i32 @nsim_ipsec_parse_proto_keys(%struct.xfrm_state*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.nsim_sa*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
