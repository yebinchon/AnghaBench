; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_arp_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_arp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.bond_vlan_tag = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"arp %d on slave: dst %pI4 src %pI4\0A\00", align 1
@ETH_P_ARP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ARP packet allocation failed\0A\00", align 1
@VLAN_N_VID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"inner tag: proto %X vid %X\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to insert inner VLAN tag\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"outer tag: proto %X vid %X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slave*, i32, i32, i32, %struct.bond_vlan_tag*)* @bond_arp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_arp_send(%struct.slave* %0, i32 %1, i32 %2, i32 %3, %struct.bond_vlan_tag* %4) #0 {
  %6 = alloca %struct.slave*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bond_vlan_tag*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.bond_vlan_tag*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.net_device*, align 8
  store %struct.slave* %0, %struct.slave** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.bond_vlan_tag* %4, %struct.bond_vlan_tag** %10, align 8
  %15 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %10, align 8
  store %struct.bond_vlan_tag* %15, %struct.bond_vlan_tag** %12, align 8
  %16 = load %struct.slave*, %struct.slave** %6, align 8
  %17 = getelementptr inbounds %struct.slave, %struct.slave* %16, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %13, align 8
  %19 = load %struct.slave*, %struct.slave** %6, align 8
  %20 = getelementptr inbounds %struct.slave, %struct.slave* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %14, align 8
  %24 = load %struct.net_device*, %struct.net_device** %14, align 8
  %25 = load %struct.net_device*, %struct.net_device** %13, align 8
  %26 = load i32, i32* %7, align 4
  %27 = ptrtoint i32* %8 to i32
  %28 = call i32 (%struct.net_device*, %struct.net_device*, i8*, i32, i32, ...) @slave_dbg(%struct.net_device* %24, %struct.net_device* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32* %9)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ETH_P_ARP, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.net_device*, %struct.net_device** %13, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.net_device*, %struct.net_device** %13, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.sk_buff* @arp_create(i32 %29, i32 %30, i32 %31, %struct.net_device* %32, i32 %33, i32* null, i32 %36, i32* null)
  store %struct.sk_buff* %37, %struct.sk_buff** %11, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %5
  %41 = call i32 @net_err_ratelimited(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %123

42:                                               ; preds = %5
  %43 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %10, align 8
  %44 = icmp ne %struct.bond_vlan_tag* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %10, align 8
  %47 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @VLAN_N_VID, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %42
  br label %120

52:                                               ; preds = %45
  %53 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %10, align 8
  %54 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %53, i32 1
  store %struct.bond_vlan_tag* %54, %struct.bond_vlan_tag** %10, align 8
  br label %55

55:                                               ; preds = %92, %66, %52
  %56 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %10, align 8
  %57 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @VLAN_N_VID, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %95

61:                                               ; preds = %55
  %62 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %10, align 8
  %63 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %10, align 8
  %68 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %67, i32 1
  store %struct.bond_vlan_tag* %68, %struct.bond_vlan_tag** %10, align 8
  br label %55

69:                                               ; preds = %61
  %70 = load %struct.net_device*, %struct.net_device** %14, align 8
  %71 = load %struct.net_device*, %struct.net_device** %13, align 8
  %72 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %12, align 8
  %73 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ntohs(i32 %74)
  %76 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %10, align 8
  %77 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (%struct.net_device*, %struct.net_device*, i8*, i32, i32, ...) @slave_dbg(%struct.net_device* %70, %struct.net_device* %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %81 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %10, align 8
  %82 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %10, align 8
  %85 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.sk_buff* @vlan_insert_tag_set_proto(%struct.sk_buff* %80, i32 %83, i32 %86)
  store %struct.sk_buff* %87, %struct.sk_buff** %11, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %89 = icmp ne %struct.sk_buff* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %69
  %91 = call i32 @net_err_ratelimited(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %123

92:                                               ; preds = %69
  %93 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %10, align 8
  %94 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %93, i32 1
  store %struct.bond_vlan_tag* %94, %struct.bond_vlan_tag** %10, align 8
  br label %55

95:                                               ; preds = %55
  %96 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %12, align 8
  %97 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %95
  %101 = load %struct.net_device*, %struct.net_device** %14, align 8
  %102 = load %struct.net_device*, %struct.net_device** %13, align 8
  %103 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %12, align 8
  %104 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ntohs(i32 %105)
  %107 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %12, align 8
  %108 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (%struct.net_device*, %struct.net_device*, i8*, i32, i32, ...) @slave_dbg(%struct.net_device* %101, %struct.net_device* %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %106, i32 %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %112 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %12, align 8
  %113 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.bond_vlan_tag*, %struct.bond_vlan_tag** %12, align 8
  %116 = getelementptr inbounds %struct.bond_vlan_tag, %struct.bond_vlan_tag* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %111, i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %100, %95
  br label %120

120:                                              ; preds = %119, %51
  %121 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %122 = call i32 @arp_xmit(%struct.sk_buff* %121)
  br label %123

123:                                              ; preds = %120, %90, %40
  ret void
}

declare dso_local i32 @slave_dbg(%struct.net_device*, %struct.net_device*, i8*, i32, i32, ...) #1

declare dso_local %struct.sk_buff* @arp_create(i32, i32, i32, %struct.net_device*, i32, i32*, i32, i32*) #1

declare dso_local i32 @net_err_ratelimited(i8*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.sk_buff* @vlan_insert_tag_set_proto(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @arp_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
