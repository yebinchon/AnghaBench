; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_nl2flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_nl2flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vxlan_config = type { i64 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@vxlan_policy = common dso_local global %struct.TYPE_2__* null, align 8
@NLA_FLAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_config*, %struct.nlattr**, i32, i64, i32, i32, %struct.netlink_ext_ack*)* @vxlan_nl2flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_nl2flag(%struct.vxlan_config* %0, %struct.nlattr** %1, i32 %2, i64 %3, i32 %4, i32 %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vxlan_config*, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca i64, align 8
  store %struct.vxlan_config* %0, %struct.vxlan_config** %9, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  %17 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %77

24:                                               ; preds = %7
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %33 = call i32 @vxlan_flag_attr_error(i32 %31, %struct.netlink_ext_ack* %32)
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %77

36:                                               ; preds = %27, %24
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vxlan_policy, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NLA_FLAG, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %47 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %12, align 8
  %50 = or i64 %48, %49
  store i64 %50, i64* %16, align 8
  br label %73

51:                                               ; preds = %36
  %52 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %52, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = call i64 @nla_get_u8(%struct.nlattr* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %61 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %12, align 8
  %64 = or i64 %62, %63
  store i64 %64, i64* %16, align 8
  br label %72

65:                                               ; preds = %51
  %66 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %67 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = xor i64 %69, -1
  %71 = and i64 %68, %70
  store i64 %71, i64* %16, align 8
  br label %72

72:                                               ; preds = %65, %59
  br label %73

73:                                               ; preds = %72, %45
  %74 = load i64, i64* %16, align 8
  %75 = load %struct.vxlan_config*, %struct.vxlan_config** %9, align 8
  %76 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %30, %23
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @vxlan_flag_attr_error(i32, %struct.netlink_ext_ack*) #1

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
