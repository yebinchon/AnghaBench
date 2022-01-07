; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_build_gpe_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_build_gpe_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlanhdr = type { i32 }
%struct.vxlanhdr_gpe = type { i32, i32 }

@EPFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlanhdr*, i32, i32)* @vxlan_build_gpe_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_build_gpe_hdr(%struct.vxlanhdr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vxlanhdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vxlanhdr_gpe*, align 8
  store %struct.vxlanhdr* %0, %struct.vxlanhdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.vxlanhdr*, %struct.vxlanhdr** %5, align 8
  %10 = bitcast %struct.vxlanhdr* %9 to %struct.vxlanhdr_gpe*
  store %struct.vxlanhdr_gpe* %10, %struct.vxlanhdr_gpe** %8, align 8
  %11 = load %struct.vxlanhdr_gpe*, %struct.vxlanhdr_gpe** %8, align 8
  %12 = getelementptr inbounds %struct.vxlanhdr_gpe, %struct.vxlanhdr_gpe* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @tun_p_from_eth_p(i32 %13)
  %15 = load %struct.vxlanhdr_gpe*, %struct.vxlanhdr_gpe** %8, align 8
  %16 = getelementptr inbounds %struct.vxlanhdr_gpe, %struct.vxlanhdr_gpe* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.vxlanhdr_gpe*, %struct.vxlanhdr_gpe** %8, align 8
  %18 = getelementptr inbounds %struct.vxlanhdr_gpe, %struct.vxlanhdr_gpe* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EPFNOSUPPORT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @tun_p_from_eth_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
