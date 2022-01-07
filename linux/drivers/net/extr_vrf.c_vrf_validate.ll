; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@IFLA_ADDRESS = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Invalid hardware address\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @vrf_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrf_validate(%struct.nlattr** %0, %struct.nlattr** %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %8 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %9 = load i64, i64* @IFLA_ADDRESS, align 8
  %10 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %8, i64 %9
  %11 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %12 = icmp ne %struct.nlattr* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  %14 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %15 = load i64, i64* @IFLA_ADDRESS, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = call i64 @nla_len(%struct.nlattr* %17)
  %19 = load i64, i64* @ETH_ALEN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %23 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %41

26:                                               ; preds = %13
  %27 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %28 = load i64, i64* @IFLA_ADDRESS, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i32 @nla_data(%struct.nlattr* %30)
  %32 = call i32 @is_valid_ether_addr(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %36 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EADDRNOTAVAIL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %41

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %3
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %34, %21
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
