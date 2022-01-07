; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_fill_generic_tlv_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_fill_generic_tlv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.qed_common_cb_ops* }
%struct.qed_common_cb_ops = type { i32 (i32, %struct.qed_generic_tlvs*)* }
%struct.qed_generic_tlvs = type { i32, i32* }
%struct.qed_mfw_tlv_generic = type { i32*, i32, i32, i32, i64, i64, i64, i64, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.qed_eth_stats_common = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qed_eth_stats = type { %struct.qed_eth_stats_common }

@QED_TLV_IP_CSUM = common dso_local global i32 0, align 4
@QED_TLV_LSO = common dso_local global i32 0, align 4
@QED_TLV_MAC_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_dev*, %struct.qed_mfw_tlv_generic*)* @qed_fill_generic_tlv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_fill_generic_tlv_data(%struct.qed_dev* %0, %struct.qed_mfw_tlv_generic* %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_mfw_tlv_generic*, align 8
  %5 = alloca %struct.qed_common_cb_ops*, align 8
  %6 = alloca %struct.qed_eth_stats_common*, align 8
  %7 = alloca %struct.qed_generic_tlvs, align 8
  %8 = alloca %struct.qed_eth_stats, align 8
  %9 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store %struct.qed_mfw_tlv_generic* %1, %struct.qed_mfw_tlv_generic** %4, align 8
  %10 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %11 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %12, align 8
  store %struct.qed_common_cb_ops* %13, %struct.qed_common_cb_ops** %5, align 8
  %14 = call i32 @memset(%struct.qed_generic_tlvs* %7, i32 0, i32 16)
  %15 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %5, align 8
  %16 = getelementptr inbounds %struct.qed_common_cb_ops, %struct.qed_common_cb_ops* %15, i32 0, i32 0
  %17 = load i32 (i32, %struct.qed_generic_tlvs*)*, i32 (i32, %struct.qed_generic_tlvs*)** %16, align 8
  %18 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %19 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %17(i32 %20, %struct.qed_generic_tlvs* %7)
  %22 = getelementptr inbounds %struct.qed_generic_tlvs, %struct.qed_generic_tlvs* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @QED_TLV_IP_CSUM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %4, align 8
  %29 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %2
  %32 = getelementptr inbounds %struct.qed_generic_tlvs, %struct.qed_generic_tlvs* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @QED_TLV_LSO, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %4, align 8
  %39 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %38, i32 0, i32 9
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %4, align 8
  %43 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %42, i32 0, i32 9
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 1, i32* %44, align 8
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %80, %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @QED_TLV_MAC_COUNT, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.qed_generic_tlvs, %struct.qed_generic_tlvs* %7, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @is_valid_ether_addr(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %49
  %59 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %4, align 8
  %60 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %59, i32 0, i32 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.qed_generic_tlvs, %struct.qed_generic_tlvs* %7, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ether_addr_copy(i32 %65, i32 %71)
  %73 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %4, align 8
  %74 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %58, %49
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %45

83:                                               ; preds = %45
  %84 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %85 = call i32 @qed_get_vport_stats(%struct.qed_dev* %84, %struct.qed_eth_stats* %8)
  %86 = getelementptr inbounds %struct.qed_eth_stats, %struct.qed_eth_stats* %8, i32 0, i32 0
  store %struct.qed_eth_stats_common* %86, %struct.qed_eth_stats_common** %6, align 8
  %87 = load %struct.qed_eth_stats_common*, %struct.qed_eth_stats_common** %6, align 8
  %88 = getelementptr inbounds %struct.qed_eth_stats_common, %struct.qed_eth_stats_common* %87, i32 0, i32 11
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.qed_eth_stats_common*, %struct.qed_eth_stats_common** %6, align 8
  %91 = getelementptr inbounds %struct.qed_eth_stats_common, %struct.qed_eth_stats_common* %90, i32 0, i32 10
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load %struct.qed_eth_stats_common*, %struct.qed_eth_stats_common** %6, align 8
  %95 = getelementptr inbounds %struct.qed_eth_stats_common, %struct.qed_eth_stats_common* %94, i32 0, i32 9
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %4, align 8
  %99 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %98, i32 0, i32 7
  store i64 %97, i64* %99, align 8
  %100 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %4, align 8
  %101 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %100, i32 0, i32 1
  store i32 1, i32* %101, align 8
  %102 = load %struct.qed_eth_stats_common*, %struct.qed_eth_stats_common** %6, align 8
  %103 = getelementptr inbounds %struct.qed_eth_stats_common, %struct.qed_eth_stats_common* %102, i32 0, i32 8
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.qed_eth_stats_common*, %struct.qed_eth_stats_common** %6, align 8
  %106 = getelementptr inbounds %struct.qed_eth_stats_common, %struct.qed_eth_stats_common* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = load %struct.qed_eth_stats_common*, %struct.qed_eth_stats_common** %6, align 8
  %110 = getelementptr inbounds %struct.qed_eth_stats_common, %struct.qed_eth_stats_common* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %4, align 8
  %114 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %113, i32 0, i32 6
  store i64 %112, i64* %114, align 8
  %115 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %4, align 8
  %116 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %115, i32 0, i32 2
  store i32 1, i32* %116, align 4
  %117 = load %struct.qed_eth_stats_common*, %struct.qed_eth_stats_common** %6, align 8
  %118 = getelementptr inbounds %struct.qed_eth_stats_common, %struct.qed_eth_stats_common* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.qed_eth_stats_common*, %struct.qed_eth_stats_common** %6, align 8
  %121 = getelementptr inbounds %struct.qed_eth_stats_common, %struct.qed_eth_stats_common* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %119, %122
  %124 = load %struct.qed_eth_stats_common*, %struct.qed_eth_stats_common** %6, align 8
  %125 = getelementptr inbounds %struct.qed_eth_stats_common, %struct.qed_eth_stats_common* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %4, align 8
  %129 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %128, i32 0, i32 5
  store i64 %127, i64* %129, align 8
  %130 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %4, align 8
  %131 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %130, i32 0, i32 3
  store i32 1, i32* %131, align 8
  %132 = load %struct.qed_eth_stats_common*, %struct.qed_eth_stats_common** %6, align 8
  %133 = getelementptr inbounds %struct.qed_eth_stats_common, %struct.qed_eth_stats_common* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.qed_eth_stats_common*, %struct.qed_eth_stats_common** %6, align 8
  %136 = getelementptr inbounds %struct.qed_eth_stats_common, %struct.qed_eth_stats_common* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %134, %137
  %139 = load %struct.qed_eth_stats_common*, %struct.qed_eth_stats_common** %6, align 8
  %140 = getelementptr inbounds %struct.qed_eth_stats_common, %struct.qed_eth_stats_common* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %138, %141
  %143 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %4, align 8
  %144 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %143, i32 0, i32 4
  store i64 %142, i64* %144, align 8
  %145 = load %struct.qed_mfw_tlv_generic*, %struct.qed_mfw_tlv_generic** %4, align 8
  %146 = getelementptr inbounds %struct.qed_mfw_tlv_generic, %struct.qed_mfw_tlv_generic* %145, i32 0, i32 2
  store i32 1, i32* %146, align 4
  ret void
}

declare dso_local i32 @memset(%struct.qed_generic_tlvs*, i32, i32) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @qed_get_vport_stats(%struct.qed_dev*, %struct.qed_eth_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
