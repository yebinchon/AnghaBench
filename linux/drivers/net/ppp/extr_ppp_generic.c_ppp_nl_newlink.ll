; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_nl_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_nl_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_config = type { i32, i32, %struct.file* }
%struct.file = type { i64, i32* }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@__const.ppp_nl_newlink.conf = private unnamed_addr constant %struct.ppp_config { i32 -1, i32 1, %struct.file* null }, align 8
@IFLA_PPP_DEV_FD = common dso_local global i64 0, align 8
@EBADF = common dso_local global i32 0, align 4
@ppp_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ppp_device_fops = common dso_local global i32 0, align 4
@IFLA_IFNAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ppp_nl_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppp_nl_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.ppp_config, align 8
  %13 = alloca %struct.file*, align 8
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %15 = bitcast %struct.ppp_config* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.ppp_config* @__const.ppp_nl_newlink.conf to i8*), i64 16, i1 false)
  %16 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %17 = load i64, i64* @IFLA_PPP_DEV_FD, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = call i32 @nla_get_s32(%struct.nlattr* %19)
  %21 = call %struct.file* @fget(i32 %20)
  store %struct.file* %21, %struct.file** %13, align 8
  %22 = load %struct.file*, %struct.file** %13, align 8
  %23 = icmp ne %struct.file* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @EBADF, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %66

27:                                               ; preds = %5
  %28 = call i32 @mutex_trylock(i32* @ppp_mutex)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %14, align 4
  br label %62

33:                                               ; preds = %27
  %34 = load %struct.file*, %struct.file** %13, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, @ppp_device_fops
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.file*, %struct.file** %13, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %33
  %44 = load i32, i32* @EBADF, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  br label %60

46:                                               ; preds = %38
  %47 = load %struct.file*, %struct.file** %13, align 8
  %48 = getelementptr inbounds %struct.ppp_config, %struct.ppp_config* %12, i32 0, i32 2
  store %struct.file* %47, %struct.file** %48, align 8
  %49 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %50 = load i64, i64* @IFLA_IFNAME, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.ppp_config, %struct.ppp_config* %12, i32 0, i32 1
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %54, %46
  %57 = load %struct.net*, %struct.net** %7, align 8
  %58 = load %struct.net_device*, %struct.net_device** %8, align 8
  %59 = call i32 @ppp_dev_configure(%struct.net* %57, %struct.net_device* %58, %struct.ppp_config* %12)
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %56, %43
  %61 = call i32 @mutex_unlock(i32* @ppp_mutex)
  br label %62

62:                                               ; preds = %60, %30
  %63 = load %struct.file*, %struct.file** %13, align 8
  %64 = call i32 @fput(%struct.file* %63)
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %24
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.file* @fget(i32) #2

declare dso_local i32 @nla_get_s32(%struct.nlattr*) #2

declare dso_local i32 @mutex_trylock(i32*) #2

declare dso_local i32 @ppp_dev_configure(%struct.net*, %struct.net_device*, %struct.ppp_config*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @fput(%struct.file*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
