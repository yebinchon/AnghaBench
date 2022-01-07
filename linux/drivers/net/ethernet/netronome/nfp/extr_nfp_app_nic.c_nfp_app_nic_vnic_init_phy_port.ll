; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app_nic.c_nfp_app_nic_vnic_init_phy_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app_nic.c_nfp_app_nic_vnic_init_phy_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.nfp_app = type { i32 }
%struct.nfp_net = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@NFP_PORT_PHYS_PORT = common dso_local global i32 0, align 4
@NFP_PORT_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_app_nic_vnic_init_phy_port(%struct.nfp_pf* %0, %struct.nfp_app* %1, %struct.nfp_net* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_pf*, align 8
  %7 = alloca %struct.nfp_app*, align 8
  %8 = alloca %struct.nfp_net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %6, align 8
  store %struct.nfp_app* %1, %struct.nfp_app** %7, align 8
  store %struct.nfp_net* %2, %struct.nfp_net** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.nfp_pf*, %struct.nfp_pf** %6, align 8
  %12 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %61

16:                                               ; preds = %4
  %17 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %18 = load i32, i32* @NFP_PORT_PHYS_PORT, align 4
  %19 = load %struct.nfp_net*, %struct.nfp_net** %8, align 8
  %20 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_8__* @nfp_port_alloc(%struct.nfp_app* %17, i32 %18, i32 %22)
  %24 = load %struct.nfp_net*, %struct.nfp_net** %8, align 8
  %25 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %24, i32 0, i32 0
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %25, align 8
  %26 = load %struct.nfp_net*, %struct.nfp_net** %8, align 8
  %27 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = call i64 @IS_ERR(%struct.TYPE_8__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.nfp_net*, %struct.nfp_net** %8, align 8
  %33 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = call i32 @PTR_ERR(%struct.TYPE_8__* %34)
  store i32 %35, i32* %5, align 4
  br label %61

36:                                               ; preds = %16
  %37 = load %struct.nfp_pf*, %struct.nfp_pf** %6, align 8
  %38 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %39 = load %struct.nfp_net*, %struct.nfp_net** %8, align 8
  %40 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @nfp_port_init_phy_port(%struct.nfp_pf* %37, %struct.nfp_app* %38, %struct.TYPE_8__* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load %struct.nfp_net*, %struct.nfp_net** %8, align 8
  %48 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = call i32 @nfp_port_free(%struct.TYPE_8__* %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %61

52:                                               ; preds = %36
  %53 = load %struct.nfp_net*, %struct.nfp_net** %8, align 8
  %54 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NFP_PORT_INVALID, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %52, %46, %31, %15
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_8__* @nfp_port_alloc(%struct.nfp_app*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @nfp_port_init_phy_port(%struct.nfp_pf*, %struct.nfp_app*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @nfp_port_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
