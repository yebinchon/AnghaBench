; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_ndo_fdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_ndo_fdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndmsg = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.igb_adapter = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i32, i32, %struct.netlink_ext_ack*)* @igb_ndo_fdb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_ndo_fdb_add(%struct.ndmsg* %0, %struct.nlattr** %1, %struct.net_device* %2, i8* %3, i32 %4, i32 %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ndmsg*, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.netlink_ext_ack*, align 8
  %16 = alloca %struct.igb_adapter*, align 8
  %17 = alloca i32, align 4
  store %struct.ndmsg* %0, %struct.ndmsg** %9, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %10, align 8
  store %struct.net_device* %2, %struct.net_device** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %15, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = call i64 @is_unicast_ether_addr(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %7
  %22 = load i8*, i8** %12, align 8
  %23 = call i64 @is_link_local_ether_addr(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %21, %7
  %26 = load %struct.net_device*, %struct.net_device** %11, align 8
  %27 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %26)
  store %struct.igb_adapter* %27, %struct.igb_adapter** %16, align 8
  %28 = load %struct.igb_adapter*, %struct.igb_adapter** %16, align 8
  %29 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %17, align 4
  %31 = load %struct.net_device*, %struct.net_device** %11, align 8
  %32 = call i64 @netdev_uc_count(%struct.net_device* %31)
  %33 = load %struct.igb_adapter*, %struct.igb_adapter** %16, align 8
  %34 = load i32, i32* %17, align 4
  %35 = call i64 @igb_available_rars(%struct.igb_adapter* %33, i32 %34)
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %49

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %21
  %42 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %43 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %44 = load %struct.net_device*, %struct.net_device** %11, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @ndo_dflt_fdb_add(%struct.ndmsg* %42, %struct.nlattr** %43, %struct.net_device* %44, i8* %45, i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %41, %37
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i64 @is_unicast_ether_addr(i8*) #1

declare dso_local i64 @is_link_local_ether_addr(i8*) #1

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netdev_uc_count(%struct.net_device*) #1

declare dso_local i64 @igb_available_rars(%struct.igb_adapter*, i32) #1

declare dso_local i32 @ndo_dflt_fdb_add(%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
