; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_vnic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_vnic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_2__*, %struct.nfp_flower_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.nfp_flower_priv = type { %struct.nfp_net* }
%struct.nfp_net = type { i32 }

@NFP_FLOWER_CMSG_PORT_VNIC_TYPE_PF = common dso_local global i32 0, align 4
@NFP_REPR_TYPE_PF = common dso_local global i32 0, align 4
@NFP_FLOWER_CMSG_PORT_VNIC_TYPE_VF = common dso_local global i32 0, align 4
@NFP_REPR_TYPE_VF = common dso_local global i32 0, align 4
@NFP_REPR_TYPE_PHYS_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.nfp_net*)* @nfp_flower_vnic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_vnic_init(%struct.nfp_app* %0, %struct.nfp_net* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.nfp_net*, align 8
  %6 = alloca %struct.nfp_flower_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.nfp_net* %1, %struct.nfp_net** %5, align 8
  %8 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %8, i32 0, i32 1
  %10 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  store %struct.nfp_flower_priv* %10, %struct.nfp_flower_priv** %6, align 8
  %11 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %12 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %13 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %12, i32 0, i32 0
  store %struct.nfp_net* %11, %struct.nfp_net** %13, align 8
  %14 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %15 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %16 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %15, i32 0, i32 1
  %17 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %16, align 8
  %18 = call i32 @nfp_flower_spawn_phy_reprs(%struct.nfp_app* %14, %struct.nfp_flower_priv* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %60

22:                                               ; preds = %2
  %23 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %24 = load i32, i32* @NFP_FLOWER_CMSG_PORT_VNIC_TYPE_PF, align 4
  %25 = load i32, i32* @NFP_REPR_TYPE_PF, align 4
  %26 = call i32 @nfp_flower_spawn_vnic_reprs(%struct.nfp_app* %23, i32 %24, i32 %25, i32 1)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %56

30:                                               ; preds = %22
  %31 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %32 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %39 = load i32, i32* @NFP_FLOWER_CMSG_PORT_VNIC_TYPE_VF, align 4
  %40 = load i32, i32* @NFP_REPR_TYPE_VF, align 4
  %41 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %42 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nfp_flower_spawn_vnic_reprs(%struct.nfp_app* %38, i32 %39, i32 %40, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %52

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %30
  store i32 0, i32* %3, align 4
  br label %64

52:                                               ; preds = %49
  %53 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %54 = load i32, i32* @NFP_REPR_TYPE_PF, align 4
  %55 = call i32 @nfp_reprs_clean_and_free_by_type(%struct.nfp_app* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %29
  %57 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %58 = load i32, i32* @NFP_REPR_TYPE_PHYS_PORT, align 4
  %59 = call i32 @nfp_reprs_clean_and_free_by_type(%struct.nfp_app* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %21
  %61 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %62 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %61, i32 0, i32 0
  store %struct.nfp_net* null, %struct.nfp_net** %62, align 8
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %51
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @nfp_flower_spawn_phy_reprs(%struct.nfp_app*, %struct.nfp_flower_priv*) #1

declare dso_local i32 @nfp_flower_spawn_vnic_reprs(%struct.nfp_app*, i32, i32, i32) #1

declare dso_local i32 @nfp_reprs_clean_and_free_by_type(%struct.nfp_app*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
