; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndmsg = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.vxlan_dev = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%union.vxlan_addr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@NUD_PERMANENT = common dso_local global i32 0, align 4
@NUD_REACHABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RTM_NEWNEIGH with invalid state %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NDA_DST = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@NTF_VXLAN_ADDED_BY_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i32, i32, %struct.netlink_ext_ack*)* @vxlan_fdb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_add(%struct.ndmsg* %0, %struct.nlattr** %1, %struct.net_device* %2, i8* %3, i32 %4, i32 %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ndmsg*, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca %struct.vxlan_dev*, align 8
  %17 = alloca %union.vxlan_addr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.ndmsg* %0, %struct.ndmsg** %9, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %10, align 8
  store %struct.net_device* %2, %struct.net_device** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  %24 = load %struct.net_device*, %struct.net_device** %11, align 8
  %25 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %24)
  store %struct.vxlan_dev* %25, %struct.vxlan_dev** %16, align 8
  %26 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %27 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NUD_PERMANENT, align 4
  %30 = load i32, i32* @NUD_REACHABLE, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %7
  %35 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %36 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %107

41:                                               ; preds = %7
  %42 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %43 = load i64, i64* @NDA_DST, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp eq %struct.nlattr* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %107

50:                                               ; preds = %41
  %51 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %52 = load %struct.vxlan_dev*, %struct.vxlan_dev** %16, align 8
  %53 = call i32 @vxlan_fdb_parse(%struct.nlattr** %51, %struct.vxlan_dev* %52, %union.vxlan_addr* %17, i32* %18, i32* %19, i32* %20, i64* %21)
  store i32 %53, i32* %23, align 4
  %54 = load i32, i32* %23, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %23, align 4
  store i32 %57, i32* %8, align 4
  br label %107

58:                                               ; preds = %50
  %59 = load %struct.vxlan_dev*, %struct.vxlan_dev** %16, align 8
  %60 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = bitcast %union.vxlan_addr* %17 to %struct.TYPE_8__*
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = load i32, i32* @EAFNOSUPPORT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %107

72:                                               ; preds = %58
  %73 = load %struct.vxlan_dev*, %struct.vxlan_dev** %16, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %19, align 4
  %76 = call i64 @fdb_head_index(%struct.vxlan_dev* %73, i8* %74, i32 %75)
  store i64 %76, i64* %22, align 8
  %77 = load %struct.vxlan_dev*, %struct.vxlan_dev** %16, align 8
  %78 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %22, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = call i32 @spin_lock_bh(i32* %81)
  %83 = load %struct.vxlan_dev*, %struct.vxlan_dev** %16, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %86 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %20, align 4
  %92 = load i64, i64* %21, align 8
  %93 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %94 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @NTF_VXLAN_ADDED_BY_USER, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %15, align 8
  %99 = call i32 @vxlan_fdb_update(%struct.vxlan_dev* %83, i8* %84, %union.vxlan_addr* %17, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i64 %92, i32 %97, i32 1, %struct.netlink_ext_ack* %98)
  store i32 %99, i32* %23, align 4
  %100 = load %struct.vxlan_dev*, %struct.vxlan_dev** %16, align 8
  %101 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %22, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = call i32 @spin_unlock_bh(i32* %104)
  %106 = load i32, i32* %23, align 4
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %72, %69, %56, %47, %34
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @vxlan_fdb_parse(%struct.nlattr**, %struct.vxlan_dev*, %union.vxlan_addr*, i32*, i32*, i32*, i64*) #1

declare dso_local i64 @fdb_head_index(%struct.vxlan_dev*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @vxlan_fdb_update(%struct.vxlan_dev*, i8*, %union.vxlan_addr*, i32, i32, i32, i32, i32, i64, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
