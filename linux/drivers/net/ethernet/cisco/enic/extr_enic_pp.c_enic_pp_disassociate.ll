; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_pp.c_enic_pp_disassociate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_pp.c_enic_pp_disassociate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.enic_port_profile = type { i32 }

@vnic_dev_del_addr = common dso_local global i32 0, align 4
@PORT_SELF_VF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic*, i32, %struct.enic_port_profile*, i32*)* @enic_pp_disassociate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_pp_disassociate(%struct.enic* %0, i32 %1, %struct.enic_port_profile* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.enic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.enic_port_profile*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.enic_port_profile*, align 8
  %12 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.enic_port_profile* %2, %struct.enic_port_profile** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.enic*, %struct.enic** %6, align 8
  %14 = getelementptr inbounds %struct.enic, %struct.enic* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %10, align 8
  %16 = load %struct.enic*, %struct.enic** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.enic_port_profile*, %struct.enic_port_profile** %11, align 8
  %19 = call i32 @ENIC_PP_BY_INDEX(%struct.enic* %16, i32 %17, %struct.enic_port_profile* %18, i32* %12)
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %63

24:                                               ; preds = %4
  %25 = load %struct.enic_port_profile*, %struct.enic_port_profile** %11, align 8
  %26 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @is_zero_ether_addr(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.enic*, %struct.enic** %6, align 8
  %34 = load i32, i32* @vnic_dev_del_addr, align 4
  %35 = load %struct.enic_port_profile*, %struct.enic_port_profile** %11, align 8
  %36 = getelementptr inbounds %struct.enic_port_profile, %struct.enic_port_profile* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ENIC_DEVCMD_PROXY_BY_INDEX(i32 %31, i32 %32, %struct.enic* %33, i32 %34, i32 %37)
  br label %59

39:                                               ; preds = %24
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @PORT_SELF_VF, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load %struct.net_device*, %struct.net_device** %10, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @is_zero_ether_addr(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.enic*, %struct.enic** %6, align 8
  %53 = load i32, i32* @vnic_dev_del_addr, align 4
  %54 = load %struct.net_device*, %struct.net_device** %10, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ENIC_DEVCMD_PROXY_BY_INDEX(i32 %50, i32 %51, %struct.enic* %52, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %49, %43, %39
  br label %59

59:                                               ; preds = %58, %30
  %60 = load %struct.enic*, %struct.enic** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @enic_unset_port_profile(%struct.enic* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %22
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @ENIC_PP_BY_INDEX(%struct.enic*, i32, %struct.enic_port_profile*, i32*) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @ENIC_DEVCMD_PROXY_BY_INDEX(i32, i32, %struct.enic*, i32, i32) #1

declare dso_local i32 @enic_unset_port_profile(%struct.enic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
