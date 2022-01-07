; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_ipsec.c_nsim_ipsec_parse_proto_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_ipsec.c_nsim_ipsec_parse_proto_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8*, i32, i8* }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@__const.nsim_ipsec_parse_proto_keys.aes_gcm_name = private unnamed_addr constant [18 x i8] c"rfc4106(gcm(aes))\00", align 16
@.str = private unnamed_addr constant [29 x i8] c"Unsupported IPsec algorithm\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NSIM_IPSEC_AUTH_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"IPsec offload requires %d bit authentication\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Unsupported IPsec algorithm - please use %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"IPsec hw offload only supports 128 bit keys with optional 32 bit salt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, i32*, i32*)* @nsim_ipsec_parse_proto_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_ipsec_parse_proto_keys(%struct.xfrm_state* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [18 x i8], align 16
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = bitcast [18 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 getelementptr inbounds ([18 x i8], [18 x i8]* @__const.nsim_ipsec_parse_proto_keys.aes_gcm_name, i32 0, i32 0), i64 18, i1 false)
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %9, align 8
  store i8* null, i8** %11, align 8
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %19 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.net_device*, %struct.net_device** %9, align 8
  %24 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %94

27:                                               ; preds = %3
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %29 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NSIM_IPSEC_AUTH_BITS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.net_device*, %struct.net_device** %9, align 8
  %37 = load i32, i32* @NSIM_IPSEC_AUTH_BITS, align 4
  %38 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %94

41:                                               ; preds = %27
  %42 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %43 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8* %47, i8** %10, align 8
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %49 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %12, align 4
  %53 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %54 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds [18 x i8], [18 x i8]* %8, i64 0, i64 0
  %60 = call i64 @strcmp(i8* %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %41
  %63 = load %struct.net_device*, %struct.net_device** %9, align 8
  %64 = getelementptr inbounds [18 x i8], [18 x i8]* %8, i64 0, i64 0
  %65 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %94

68:                                               ; preds = %41
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @NSIM_IPSEC_AUTH_BITS, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i8*, i8** %10, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  br label %90

78:                                               ; preds = %68
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @NSIM_IPSEC_AUTH_BITS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32*, i32** %7, align 8
  store i32 0, i32* %83, align 4
  br label %89

84:                                               ; preds = %78
  %85 = load %struct.net_device*, %struct.net_device** %9, align 8
  %86 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %85, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %94

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i32*, i32** %6, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @memcpy(i32* %91, i8* %92, i32 16)
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %84, %62, %35, %22
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
