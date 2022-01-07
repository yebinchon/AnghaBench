; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_parse_gbp_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_parse_gbp_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlanhdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.vxlan_metadata = type { i32 }
%struct.vxlanhdr_gbp = type { i64, i64, i32 }
%struct.metadata_dst = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@VXLAN_HF_GBP = common dso_local global i32 0, align 4
@TUNNEL_VXLAN_OPT = common dso_local global i32 0, align 4
@VXLAN_GBP_DONT_LEARN = common dso_local global i32 0, align 4
@VXLAN_GBP_POLICY_APPLIED = common dso_local global i32 0, align 4
@VXLAN_F_COLLECT_METADATA = common dso_local global i32 0, align 4
@VXLAN_GBP_USED_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlanhdr*, %struct.sk_buff*, i32, %struct.vxlan_metadata*)* @vxlan_parse_gbp_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_parse_gbp_hdr(%struct.vxlanhdr* %0, %struct.sk_buff* %1, i32 %2, %struct.vxlan_metadata* %3) #0 {
  %5 = alloca %struct.vxlanhdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vxlan_metadata*, align 8
  %9 = alloca %struct.vxlanhdr_gbp*, align 8
  %10 = alloca %struct.metadata_dst*, align 8
  store %struct.vxlanhdr* %0, %struct.vxlanhdr** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.vxlan_metadata* %3, %struct.vxlan_metadata** %8, align 8
  %11 = load %struct.vxlanhdr*, %struct.vxlanhdr** %5, align 8
  %12 = bitcast %struct.vxlanhdr* %11 to %struct.vxlanhdr_gbp*
  store %struct.vxlanhdr_gbp* %12, %struct.vxlanhdr_gbp** %9, align 8
  %13 = load %struct.vxlanhdr*, %struct.vxlanhdr** %5, align 8
  %14 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VXLAN_HF_GBP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %79

20:                                               ; preds = %4
  %21 = load %struct.vxlanhdr_gbp*, %struct.vxlanhdr_gbp** %9, align 8
  %22 = getelementptr inbounds %struct.vxlanhdr_gbp, %struct.vxlanhdr_gbp* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ntohs(i32 %23)
  %25 = load %struct.vxlan_metadata*, %struct.vxlan_metadata** %8, align 8
  %26 = getelementptr inbounds %struct.vxlan_metadata, %struct.vxlan_metadata* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i64 @skb_dst(%struct.sk_buff* %27)
  %29 = inttoptr i64 %28 to %struct.metadata_dst*
  store %struct.metadata_dst* %29, %struct.metadata_dst** %10, align 8
  %30 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %31 = icmp ne %struct.metadata_dst* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %20
  %33 = load i32, i32* @TUNNEL_VXLAN_OPT, align 4
  %34 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %35 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %33
  store i32 %40, i32* %38, align 4
  %41 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %42 = getelementptr inbounds %struct.metadata_dst, %struct.metadata_dst* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 4, i32* %44, align 4
  br label %45

45:                                               ; preds = %32, %20
  %46 = load %struct.vxlanhdr_gbp*, %struct.vxlanhdr_gbp** %9, align 8
  %47 = getelementptr inbounds %struct.vxlanhdr_gbp, %struct.vxlanhdr_gbp* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @VXLAN_GBP_DONT_LEARN, align 4
  %52 = load %struct.vxlan_metadata*, %struct.vxlan_metadata** %8, align 8
  %53 = getelementptr inbounds %struct.vxlan_metadata, %struct.vxlan_metadata* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %45
  %57 = load %struct.vxlanhdr_gbp*, %struct.vxlanhdr_gbp** %9, align 8
  %58 = getelementptr inbounds %struct.vxlanhdr_gbp, %struct.vxlanhdr_gbp* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @VXLAN_GBP_POLICY_APPLIED, align 4
  %63 = load %struct.vxlan_metadata*, %struct.vxlan_metadata** %8, align 8
  %64 = getelementptr inbounds %struct.vxlan_metadata, %struct.vxlan_metadata* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @VXLAN_F_COLLECT_METADATA, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %67
  %73 = load %struct.vxlan_metadata*, %struct.vxlan_metadata** %8, align 8
  %74 = getelementptr inbounds %struct.vxlan_metadata, %struct.vxlan_metadata* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %72, %67
  br label %79

79:                                               ; preds = %78, %19
  %80 = load i32, i32* @VXLAN_GBP_USED_BITS, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.vxlanhdr*, %struct.vxlanhdr** %5, align 8
  %83 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  ret void
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @skb_dst(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
