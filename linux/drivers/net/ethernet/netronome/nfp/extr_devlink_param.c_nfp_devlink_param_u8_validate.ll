; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_devlink_param.c_nfp_devlink_param_u8_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_devlink_param.c_nfp_devlink_param_u8_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_devlink_param_u8_arg = type { i64, i64 }
%struct.devlink = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%union.devlink_param_value = type { i64 }

@nfp_devlink_u8_args = common dso_local global %struct.nfp_devlink_param_u8_arg* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"parameter out of range\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unknown/invalid value specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i64, i64, %struct.netlink_ext_ack*)* @nfp_devlink_param_u8_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_devlink_param_u8_validate(%struct.devlink* %0, i64 %1, i64 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.devlink_param_value, align 8
  %7 = alloca %struct.devlink*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.nfp_devlink_param_u8_arg*, align 8
  %11 = getelementptr inbounds %union.devlink_param_value, %union.devlink_param_value* %6, i32 0, i32 0
  store i64 %2, i64* %11, align 8
  store %struct.devlink* %0, %struct.devlink** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** @nfp_devlink_u8_args, align 8
  %14 = call i64 @ARRAY_SIZE(%struct.nfp_devlink_param_u8_arg* %13)
  %15 = icmp uge i64 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %47

19:                                               ; preds = %4
  %20 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** @nfp_devlink_u8_args, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.nfp_devlink_param_u8_arg, %struct.nfp_devlink_param_u8_arg* %20, i64 %21
  store %struct.nfp_devlink_param_u8_arg* %22, %struct.nfp_devlink_param_u8_arg** %10, align 8
  %23 = bitcast %union.devlink_param_value* %6 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** %10, align 8
  %26 = getelementptr inbounds %struct.nfp_devlink_param_u8_arg, %struct.nfp_devlink_param_u8_arg* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %31 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %47

34:                                               ; preds = %19
  %35 = bitcast %union.devlink_param_value* %6 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.nfp_devlink_param_u8_arg*, %struct.nfp_devlink_param_u8_arg** %10, align 8
  %38 = getelementptr inbounds %struct.nfp_devlink_param_u8_arg, %struct.nfp_devlink_param_u8_arg* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %43 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %47

46:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %41, %29, %16
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @ARRAY_SIZE(%struct.nfp_devlink_param_u8_arg*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
