; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_macvlan_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_macvlan_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.vfpf_set_q_filters_tlv = type { i32, %struct.vfpf_q_mac_vlan_filter* }
%struct.vfpf_q_mac_vlan_filter = type { i32, i32, i32 }
%struct.bnx2x_vf_mac_vlan_filters = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@filters = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VFPF_Q_FILTER_DEST_MAC_VALID = common dso_local global i32 0, align 4
@BNX2X_VF_FILTER_MAC = common dso_local global i32 0, align 4
@VFPF_Q_FILTER_VLAN_TAG_VALID = common dso_local global i32 0, align 4
@BNX2X_VF_FILTER_VLAN = common dso_local global i32 0, align 4
@VFPF_Q_FILTER_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.vfpf_set_q_filters_tlv*, %struct.bnx2x_vf_mac_vlan_filters**, i32)* @bnx2x_vf_mbx_macvlan_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_vf_mbx_macvlan_list(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.vfpf_set_q_filters_tlv* %2, %struct.bnx2x_vf_mac_vlan_filters** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.bnx2x_virtf*, align 8
  %9 = alloca %struct.vfpf_set_q_filters_tlv*, align 8
  %10 = alloca %struct.bnx2x_vf_mac_vlan_filters**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bnx2x_vf_mac_vlan_filters*, align 8
  %15 = alloca %struct.vfpf_q_mac_vlan_filter*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %8, align 8
  store %struct.vfpf_set_q_filters_tlv* %2, %struct.vfpf_set_q_filters_tlv** %9, align 8
  store %struct.bnx2x_vf_mac_vlan_filters** %3, %struct.bnx2x_vf_mac_vlan_filters*** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.bnx2x_vf_mac_vlan_filters* null, %struct.bnx2x_vf_mac_vlan_filters** %14, align 8
  %16 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %14, align 8
  %17 = load i32, i32* @filters, align 4
  %18 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %19 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @struct_size(%struct.bnx2x_vf_mac_vlan_filters* %16, i32 %17, i32 %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.bnx2x_vf_mac_vlan_filters* @kzalloc(i32 %21, i32 %22)
  store %struct.bnx2x_vf_mac_vlan_filters* %23, %struct.bnx2x_vf_mac_vlan_filters** %14, align 8
  %24 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %14, align 8
  %25 = icmp ne %struct.bnx2x_vf_mac_vlan_filters* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %148

29:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %133, %29
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %33 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %136

36:                                               ; preds = %30
  %37 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %38 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %37, i32 0, i32 1
  %39 = load %struct.vfpf_q_mac_vlan_filter*, %struct.vfpf_q_mac_vlan_filter** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.vfpf_q_mac_vlan_filter, %struct.vfpf_q_mac_vlan_filter* %39, i64 %41
  store %struct.vfpf_q_mac_vlan_filter* %42, %struct.vfpf_q_mac_vlan_filter** %15, align 8
  %43 = load %struct.vfpf_q_mac_vlan_filter*, %struct.vfpf_q_mac_vlan_filter** %15, align 8
  %44 = getelementptr inbounds %struct.vfpf_q_mac_vlan_filter, %struct.vfpf_q_mac_vlan_filter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %133

51:                                               ; preds = %36
  %52 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %14, align 8
  %53 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = call i32 @memset(%struct.TYPE_2__* %57, i32 0, i32 16)
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @VFPF_Q_FILTER_DEST_MAC_VALID, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %51
  %64 = load %struct.vfpf_q_mac_vlan_filter*, %struct.vfpf_q_mac_vlan_filter** %15, align 8
  %65 = getelementptr inbounds %struct.vfpf_q_mac_vlan_filter, %struct.vfpf_q_mac_vlan_filter* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %14, align 8
  %68 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  store i32 %66, i32* %73, align 4
  %74 = load i32, i32* @BNX2X_VF_FILTER_MAC, align 4
  %75 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %14, align 8
  %76 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %74
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %63, %51
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @VFPF_Q_FILTER_VLAN_TAG_VALID, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %84
  %90 = load %struct.vfpf_q_mac_vlan_filter*, %struct.vfpf_q_mac_vlan_filter** %15, align 8
  %91 = getelementptr inbounds %struct.vfpf_q_mac_vlan_filter, %struct.vfpf_q_mac_vlan_filter* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %14, align 8
  %94 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i32 %92, i32* %99, align 4
  %100 = load i32, i32* @BNX2X_VF_FILTER_VLAN, align 4
  %101 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %14, align 8
  %102 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %100
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %89, %84
  %111 = load %struct.vfpf_q_mac_vlan_filter*, %struct.vfpf_q_mac_vlan_filter** %15, align 8
  %112 = getelementptr inbounds %struct.vfpf_q_mac_vlan_filter, %struct.vfpf_q_mac_vlan_filter* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @VFPF_Q_FILTER_SET, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %14, align 8
  %121 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i32 %119, i32* %126, align 4
  %127 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %14, align 8
  %128 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %110, %50
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %30

136:                                              ; preds = %30
  %137 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %14, align 8
  %138 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  %142 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %14, align 8
  %143 = call i32 @kfree(%struct.bnx2x_vf_mac_vlan_filters* %142)
  br label %147

144:                                              ; preds = %136
  %145 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %14, align 8
  %146 = load %struct.bnx2x_vf_mac_vlan_filters**, %struct.bnx2x_vf_mac_vlan_filters*** %10, align 8
  store %struct.bnx2x_vf_mac_vlan_filters* %145, %struct.bnx2x_vf_mac_vlan_filters** %146, align 8
  br label %147

147:                                              ; preds = %144, %141
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %147, %26
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local %struct.bnx2x_vf_mac_vlan_filters* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.bnx2x_vf_mac_vlan_filters*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @kfree(%struct.bnx2x_vf_mac_vlan_filters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
