; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_build_gbp_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_build_gbp_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlanhdr = type { i32 }
%struct.vxlan_metadata = type { i32 }
%struct.vxlanhdr_gbp = type { i32, i32, i32 }

@VXLAN_HF_GBP = common dso_local global i32 0, align 4
@VXLAN_GBP_DONT_LEARN = common dso_local global i32 0, align 4
@VXLAN_GBP_POLICY_APPLIED = common dso_local global i32 0, align 4
@VXLAN_GBP_ID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlanhdr*, i32, %struct.vxlan_metadata*)* @vxlan_build_gbp_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_build_gbp_hdr(%struct.vxlanhdr* %0, i32 %1, %struct.vxlan_metadata* %2) #0 {
  %4 = alloca %struct.vxlanhdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vxlan_metadata*, align 8
  %7 = alloca %struct.vxlanhdr_gbp*, align 8
  store %struct.vxlanhdr* %0, %struct.vxlanhdr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vxlan_metadata* %2, %struct.vxlan_metadata** %6, align 8
  %8 = load %struct.vxlan_metadata*, %struct.vxlan_metadata** %6, align 8
  %9 = getelementptr inbounds %struct.vxlan_metadata, %struct.vxlan_metadata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %49

13:                                               ; preds = %3
  %14 = load %struct.vxlanhdr*, %struct.vxlanhdr** %4, align 8
  %15 = bitcast %struct.vxlanhdr* %14 to %struct.vxlanhdr_gbp*
  store %struct.vxlanhdr_gbp* %15, %struct.vxlanhdr_gbp** %7, align 8
  %16 = load i32, i32* @VXLAN_HF_GBP, align 4
  %17 = load %struct.vxlanhdr*, %struct.vxlanhdr** %4, align 8
  %18 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.vxlan_metadata*, %struct.vxlan_metadata** %6, align 8
  %22 = getelementptr inbounds %struct.vxlan_metadata, %struct.vxlan_metadata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VXLAN_GBP_DONT_LEARN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = load %struct.vxlanhdr_gbp*, %struct.vxlanhdr_gbp** %7, align 8
  %29 = getelementptr inbounds %struct.vxlanhdr_gbp, %struct.vxlanhdr_gbp* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %13
  %31 = load %struct.vxlan_metadata*, %struct.vxlan_metadata** %6, align 8
  %32 = getelementptr inbounds %struct.vxlan_metadata, %struct.vxlan_metadata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VXLAN_GBP_POLICY_APPLIED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.vxlanhdr_gbp*, %struct.vxlanhdr_gbp** %7, align 8
  %39 = getelementptr inbounds %struct.vxlanhdr_gbp, %struct.vxlanhdr_gbp* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %30
  %41 = load %struct.vxlan_metadata*, %struct.vxlan_metadata** %6, align 8
  %42 = getelementptr inbounds %struct.vxlan_metadata, %struct.vxlan_metadata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @VXLAN_GBP_ID_MASK, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @htons(i32 %45)
  %47 = load %struct.vxlanhdr_gbp*, %struct.vxlanhdr_gbp** %7, align 8
  %48 = getelementptr inbounds %struct.vxlanhdr_gbp, %struct.vxlanhdr_gbp* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %12
  ret void
}

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
