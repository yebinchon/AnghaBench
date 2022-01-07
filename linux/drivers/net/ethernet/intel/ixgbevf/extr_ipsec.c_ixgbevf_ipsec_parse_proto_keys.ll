; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ipsec.c_ixgbevf_ipsec_parse_proto_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ipsec.c_ixgbevf_ipsec_parse_proto_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i8*, i32, i8* }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Unsupported IPsec algorithm\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IXGBE_IPSEC_AUTH_BITS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"IPsec offload requires %d bit authentication\0A\00", align 1
@aes_gcm_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Unsupported IPsec algorithm - please use %s\0A\00", align 1
@IXGBE_IPSEC_KEY_BITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"IPsec hw offload only supports keys up to 128 bits with a 32 bit salt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, i32*, i32*)* @ixgbevf_ipsec_parse_proto_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_ipsec_parse_proto_keys(%struct.xfrm_state* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %13 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  store i8* null, i8** %10, align 8
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %17 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %92

25:                                               ; preds = %3
  %26 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %27 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IXGBE_IPSEC_AUTH_BITS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = load i64, i64* @IXGBE_IPSEC_AUTH_BITS, align 8
  %36 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %92

39:                                               ; preds = %25
  %40 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %41 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8* %45, i8** %9, align 8
  %46 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %47 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %11, align 4
  %51 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %52 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* @aes_gcm_name, align 4
  %58 = call i64 @strcmp(i8* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %39
  %61 = load %struct.net_device*, %struct.net_device** %8, align 8
  %62 = load i32, i32* @aes_gcm_name, align 4
  %63 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %92

66:                                               ; preds = %39
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @IXGBE_IPSEC_KEY_BITS, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i8*, i8** %9, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  br label %88

76:                                               ; preds = %66
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @IXGBE_IPSEC_KEY_BITS, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32*, i32** %7, align 8
  store i32 0, i32* %81, align 4
  br label %87

82:                                               ; preds = %76
  %83 = load %struct.net_device*, %struct.net_device** %8, align 8
  %84 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %83, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %92

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %70
  %89 = load i32*, i32** %6, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @memcpy(i32* %89, i8* %90, i32 16)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %88, %82, %60, %33, %20
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
