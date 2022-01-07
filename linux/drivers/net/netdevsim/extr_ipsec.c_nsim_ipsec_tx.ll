; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_ipsec.c_nsim_ipsec_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_ipsec.c_nsim_ipsec_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdevsim = type { i32, %struct.nsim_ipsec }
%struct.nsim_ipsec = type { i32, %struct.nsim_sa* }
%struct.nsim_sa = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sec_path = type { i64 }
%struct.xfrm_state = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"no xfrm state len = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"no xfrm_input_state() xs = %p\0A\00", align 1
@NSIM_IPSEC_VALID = common dso_local global i64 0, align 8
@NSIM_IPSEC_MAX_SA_COUNT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"bad sa_idx=%d max=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"unused sa_idx=%d\0A\00", align 1
@IPPROTO_ESP = common dso_local global i64 0, align 8
@IPPROTO_AH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"unexpected proto=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsim_ipsec_tx(%struct.netdevsim* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netdevsim*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sec_path*, align 8
  %7 = alloca %struct.nsim_ipsec*, align 8
  %8 = alloca %struct.xfrm_state*, align 8
  %9 = alloca %struct.nsim_sa*, align 8
  %10 = alloca i64, align 8
  store %struct.netdevsim* %0, %struct.netdevsim** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %11)
  store %struct.sec_path* %12, %struct.sec_path** %6, align 8
  %13 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %14 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %13, i32 0, i32 1
  store %struct.nsim_ipsec* %14, %struct.nsim_ipsec** %7, align 8
  %15 = load %struct.sec_path*, %struct.sec_path** %6, align 8
  %16 = icmp ne %struct.sec_path* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %119

18:                                               ; preds = %2
  %19 = load %struct.sec_path*, %struct.sec_path** %6, align 8
  %20 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %29 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sec_path*, %struct.sec_path** %6, align 8
  %32 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i32, i8*, ...) @netdev_err(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %33)
  store i32 0, i32* %3, align 4
  br label %119

35:                                               ; preds = %18
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff* %36)
  store %struct.xfrm_state* %37, %struct.xfrm_state** %8, align 8
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %39 = icmp ne %struct.xfrm_state* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %46 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %49 = call i32 (i32, i8*, ...) @netdev_err(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.xfrm_state* %48)
  store i32 0, i32* %3, align 4
  br label %119

50:                                               ; preds = %35
  %51 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %52 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NSIM_IPSEC_VALID, align 8
  %56 = xor i64 %55, -1
  %57 = and i64 %54, %56
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @NSIM_IPSEC_MAX_SA_COUNT, align 8
  %60 = icmp uge i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %50
  %65 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %66 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @NSIM_IPSEC_MAX_SA_COUNT, align 8
  %70 = call i32 (i32, i8*, ...) @netdev_err(i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %68, i64 %69)
  store i32 0, i32* %3, align 4
  br label %119

71:                                               ; preds = %50
  %72 = load %struct.nsim_ipsec*, %struct.nsim_ipsec** %7, align 8
  %73 = getelementptr inbounds %struct.nsim_ipsec, %struct.nsim_ipsec* %72, i32 0, i32 1
  %74 = load %struct.nsim_sa*, %struct.nsim_sa** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds %struct.nsim_sa, %struct.nsim_sa* %74, i64 %75
  store %struct.nsim_sa* %76, %struct.nsim_sa** %9, align 8
  %77 = load %struct.nsim_sa*, %struct.nsim_sa** %9, align 8
  %78 = getelementptr inbounds %struct.nsim_sa, %struct.nsim_sa* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %71
  %86 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %87 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i32 (i32, i8*, ...) @netdev_err(i32 %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %89)
  store i32 0, i32* %3, align 4
  br label %119

91:                                               ; preds = %71
  %92 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %93 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @IPPROTO_ESP, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %91
  %99 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %100 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @IPPROTO_AH, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %98
  %106 = load %struct.netdevsim*, %struct.netdevsim** %4, align 8
  %107 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %110 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (i32, i8*, ...) @netdev_err(i32 %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %112)
  store i32 0, i32* %3, align 4
  br label %119

114:                                              ; preds = %98, %91
  %115 = load %struct.nsim_ipsec*, %struct.nsim_ipsec** %7, align 8
  %116 = getelementptr inbounds %struct.nsim_ipsec, %struct.nsim_ipsec* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  store i32 1, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %105, %85, %64, %44, %27, %17
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
