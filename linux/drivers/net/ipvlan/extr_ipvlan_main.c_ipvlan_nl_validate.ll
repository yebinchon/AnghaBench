; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_nl_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_nl_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@IFLA_IPVLAN_MODE = common dso_local global i64 0, align 8
@IPVLAN_MODE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFLA_IPVLAN_FLAGS = common dso_local global i64 0, align 8
@IPVLAN_F_PRIVATE = common dso_local global i64 0, align 8
@IPVLAN_F_VEPA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ipvlan_nl_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvlan_nl_validate(%struct.nlattr** %0, %struct.nlattr** %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %11 = icmp ne %struct.nlattr** %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

13:                                               ; preds = %3
  %14 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %15 = load i64, i64* @IFLA_IPVLAN_MODE, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %21 = load i64, i64* @IFLA_IPVLAN_MODE, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = call i64 @nla_get_u16(%struct.nlattr* %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @IPVLAN_MODE_MAX, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %69

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %13
  %33 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %34 = load i64, i64* @IFLA_IPVLAN_FLAGS, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %38, label %68

38:                                               ; preds = %32
  %39 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %40 = load i64, i64* @IFLA_IPVLAN_FLAGS, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i64 @nla_get_u16(%struct.nlattr* %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @IPVLAN_F_PRIVATE, align 8
  %46 = load i64, i64* @IPVLAN_F_VEPA, align 8
  %47 = or i64 %45, %46
  %48 = xor i64 %47, -1
  %49 = and i64 %44, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %69

54:                                               ; preds = %38
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @IPVLAN_F_PRIVATE, align 8
  %57 = load i64, i64* @IPVLAN_F_VEPA, align 8
  %58 = or i64 %56, %57
  %59 = and i64 %55, %58
  %60 = load i64, i64* @IPVLAN_F_PRIVATE, align 8
  %61 = load i64, i64* @IPVLAN_F_VEPA, align 8
  %62 = or i64 %60, %61
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %69

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %32
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %64, %51, %28, %12
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @nla_get_u16(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
