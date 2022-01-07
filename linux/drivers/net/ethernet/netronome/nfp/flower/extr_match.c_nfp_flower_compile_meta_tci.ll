; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_meta_tci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_meta_tci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_flower_meta_tci = type { i8*, i32, i8* }
%struct.flow_cls_offload = type { i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_vlan = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@FLOW_DISSECTOR_KEY_VLAN = common dso_local global i32 0, align 4
@NFP_FLOWER_MASK_VLAN_PRESENT = common dso_local global i32 0, align 4
@NFP_FLOWER_MASK_VLAN_PRIO = common dso_local global i32 0, align 4
@NFP_FLOWER_MASK_VLAN_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_flower_meta_tci*, %struct.nfp_flower_meta_tci*, %struct.flow_cls_offload*, i8*)* @nfp_flower_compile_meta_tci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_compile_meta_tci(%struct.nfp_flower_meta_tci* %0, %struct.nfp_flower_meta_tci* %1, %struct.flow_cls_offload* %2, i8* %3) #0 {
  %5 = alloca %struct.nfp_flower_meta_tci*, align 8
  %6 = alloca %struct.nfp_flower_meta_tci*, align 8
  %7 = alloca %struct.flow_cls_offload*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.flow_rule*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.flow_match_vlan, align 8
  store %struct.nfp_flower_meta_tci* %0, %struct.nfp_flower_meta_tci** %5, align 8
  store %struct.nfp_flower_meta_tci* %1, %struct.nfp_flower_meta_tci** %6, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %13 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %12)
  store %struct.flow_rule* %13, %struct.flow_rule** %9, align 8
  %14 = load %struct.nfp_flower_meta_tci*, %struct.nfp_flower_meta_tci** %5, align 8
  %15 = call i32 @memset(%struct.nfp_flower_meta_tci* %14, i32 0, i32 24)
  %16 = load %struct.nfp_flower_meta_tci*, %struct.nfp_flower_meta_tci** %6, align 8
  %17 = call i32 @memset(%struct.nfp_flower_meta_tci* %16, i32 0, i32 24)
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.nfp_flower_meta_tci*, %struct.nfp_flower_meta_tci** %5, align 8
  %20 = getelementptr inbounds %struct.nfp_flower_meta_tci, %struct.nfp_flower_meta_tci* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.nfp_flower_meta_tci*, %struct.nfp_flower_meta_tci** %5, align 8
  %22 = getelementptr inbounds %struct.nfp_flower_meta_tci, %struct.nfp_flower_meta_tci* %21, i32 0, i32 1
  store i32 -1, i32* %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.nfp_flower_meta_tci*, %struct.nfp_flower_meta_tci** %6, align 8
  %25 = getelementptr inbounds %struct.nfp_flower_meta_tci, %struct.nfp_flower_meta_tci* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.nfp_flower_meta_tci*, %struct.nfp_flower_meta_tci** %6, align 8
  %27 = getelementptr inbounds %struct.nfp_flower_meta_tci, %struct.nfp_flower_meta_tci* %26, i32 0, i32 1
  store i32 -1, i32* %27, align 8
  %28 = load %struct.flow_rule*, %struct.flow_rule** %9, align 8
  %29 = load i32, i32* @FLOW_DISSECTOR_KEY_VLAN, align 4
  %30 = call i64 @flow_rule_match_key(%struct.flow_rule* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %75

32:                                               ; preds = %4
  %33 = load %struct.flow_rule*, %struct.flow_rule** %9, align 8
  %34 = call i32 @flow_rule_match_vlan(%struct.flow_rule* %33, %struct.flow_match_vlan* %11)
  %35 = load i32, i32* @NFP_FLOWER_MASK_VLAN_PRESENT, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @NFP_FLOWER_MASK_VLAN_PRIO, align 4
  %37 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %11, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @FIELD_PREP(i32 %36, i32 %40)
  %42 = load i32, i32* @NFP_FLOWER_MASK_VLAN_VID, align 4
  %43 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %11, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @FIELD_PREP(i32 %42, i32 %46)
  %48 = or i32 %41, %47
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i8* @cpu_to_be16(i32 %51)
  %53 = load %struct.nfp_flower_meta_tci*, %struct.nfp_flower_meta_tci** %5, align 8
  %54 = getelementptr inbounds %struct.nfp_flower_meta_tci, %struct.nfp_flower_meta_tci* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* @NFP_FLOWER_MASK_VLAN_PRESENT, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* @NFP_FLOWER_MASK_VLAN_PRIO, align 4
  %57 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %11, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @FIELD_PREP(i32 %56, i32 %60)
  %62 = load i32, i32* @NFP_FLOWER_MASK_VLAN_VID, align 4
  %63 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %11, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @FIELD_PREP(i32 %62, i32 %66)
  %68 = or i32 %61, %67
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i8* @cpu_to_be16(i32 %71)
  %73 = load %struct.nfp_flower_meta_tci*, %struct.nfp_flower_meta_tci** %6, align 8
  %74 = getelementptr inbounds %struct.nfp_flower_meta_tci, %struct.nfp_flower_meta_tci* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %32, %4
  ret void
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @memset(%struct.nfp_flower_meta_tci*, i32, i32) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_vlan(%struct.flow_rule*, %struct.flow_match_vlan*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
