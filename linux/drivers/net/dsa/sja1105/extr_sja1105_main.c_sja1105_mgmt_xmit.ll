; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_mgmt_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_mgmt_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.TYPE_3__*, %struct.sja1105_private* }
%struct.TYPE_3__ = type { i32 }
%struct.sja1105_private = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sja1105_mgmt_entry = type { i32, i32, i64, i32, i32, i32 }
%struct.ethhdr = type { i32 }

@BLK_IDX_MGMT_ROUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to poll for mgmt route\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"xmit timed out\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, i32, %struct.sk_buff*, i32)* @sja1105_mgmt_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_mgmt_xmit(%struct.dsa_switch* %0, i32 %1, i32 %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dsa_switch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sja1105_mgmt_entry, align 8
  %13 = alloca %struct.sja1105_private*, align 8
  %14 = alloca %struct.ethhdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = bitcast %struct.sja1105_mgmt_entry* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 32, i1 false)
  %18 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %19 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %18, i32 0, i32 1
  %20 = load %struct.sja1105_private*, %struct.sja1105_private** %19, align 8
  store %struct.sja1105_private* %20, %struct.sja1105_private** %13, align 8
  store i32 10, i32* %15, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %21)
  store %struct.ethhdr* %22, %struct.ethhdr** %14, align 8
  %23 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %24 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ether_addr_to_u64(i32 %25)
  %27 = getelementptr inbounds %struct.sja1105_mgmt_entry, %struct.sja1105_mgmt_entry* %12, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = getelementptr inbounds %struct.sja1105_mgmt_entry, %struct.sja1105_mgmt_entry* %12, i32 0, i32 3
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.sja1105_mgmt_entry, %struct.sja1105_mgmt_entry* %12, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = getelementptr inbounds %struct.sja1105_mgmt_entry, %struct.sja1105_mgmt_entry* %12, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = getelementptr inbounds %struct.sja1105_mgmt_entry, %struct.sja1105_mgmt_entry* %12, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.sja1105_private*, %struct.sja1105_private** %13, align 8
  %36 = load i32, i32* @BLK_IDX_MGMT_ROUTE, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @sja1105_dynamic_config_write(%struct.sja1105_private* %35, i32 %36, i32 %37, %struct.sja1105_mgmt_entry* %12, i32 1)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %5
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = call i32 @kfree_skb(%struct.sk_buff* %42)
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %6, align 4
  br label %98

45:                                               ; preds = %5
  %46 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %47 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  %48 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dsa_enqueue_skb(%struct.sk_buff* %46, i32 %54)
  br label %56

56:                                               ; preds = %80, %45
  %57 = load %struct.sja1105_private*, %struct.sja1105_private** %13, align 8
  %58 = load i32, i32* @BLK_IDX_MGMT_ROUTE, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @sja1105_dynamic_config_read(%struct.sja1105_private* %57, i32 %58, i32 %59, %struct.sja1105_mgmt_entry* %12)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.sja1105_private*, %struct.sja1105_private** %13, align 8
  %65 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_err_ratelimited(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %72

70:                                               ; preds = %56
  %71 = call i32 (...) @cpu_relax()
  br label %72

72:                                               ; preds = %70, %63
  %73 = getelementptr inbounds %struct.sja1105_mgmt_entry, %struct.sja1105_mgmt_entry* %12, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i1 [ false, %72 ], [ %79, %76 ]
  br i1 %81, label %56, label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %82
  %86 = load %struct.sja1105_private*, %struct.sja1105_private** %13, align 8
  %87 = load i32, i32* @BLK_IDX_MGMT_ROUTE, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @sja1105_dynamic_config_write(%struct.sja1105_private* %86, i32 %87, i32 %88, %struct.sja1105_mgmt_entry* %12, i32 0)
  %90 = load %struct.sja1105_private*, %struct.sja1105_private** %13, align 8
  %91 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_err_ratelimited(i32 %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %85, %82
  %97 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %96, %41
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #2

declare dso_local i32 @ether_addr_to_u64(i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @sja1105_dynamic_config_write(%struct.sja1105_private*, i32, i32, %struct.sja1105_mgmt_entry*, i32) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

declare dso_local i32 @dsa_enqueue_skb(%struct.sk_buff*, i32) #2

declare dso_local i32 @sja1105_dynamic_config_read(%struct.sja1105_private*, i32, i32, %struct.sja1105_mgmt_entry*) #2

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #2

declare dso_local i32 @cpu_relax(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
