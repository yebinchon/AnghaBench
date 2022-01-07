; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_repr_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_repr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32* }
%struct.nfp_app = type { i32* }
%struct.nfp_reprs = type { i64, i32* }

@NFP_ABM_PORTID_TYPE = common dso_local global i32 0, align 4
@NFP_ABM_PORTID_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.nfp_app*, i32, i32*)* @nfp_abm_repr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @nfp_abm_repr_get(%struct.nfp_app* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_reprs*, align 8
  %10 = alloca i64, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @NFP_ABM_PORTID_TYPE, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i8* @FIELD_GET(i32 %11, i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @NFP_ABM_PORTID_ID, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @FIELD_GET(i32 %15, i32 %16)
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %10, align 8
  %19 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %20 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.nfp_reprs* @rcu_dereference(i32 %25)
  store %struct.nfp_reprs* %26, %struct.nfp_reprs** %9, align 8
  %27 = load %struct.nfp_reprs*, %struct.nfp_reprs** %9, align 8
  %28 = icmp ne %struct.nfp_reprs* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %46

30:                                               ; preds = %3
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.nfp_reprs*, %struct.nfp_reprs** %9, align 8
  %33 = getelementptr inbounds %struct.nfp_reprs, %struct.nfp_reprs* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %46

37:                                               ; preds = %30
  %38 = load %struct.nfp_reprs*, %struct.nfp_reprs** %9, align 8
  %39 = getelementptr inbounds %struct.nfp_reprs, %struct.nfp_reprs* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.nfp_reprs* @rcu_dereference(i32 %43)
  %45 = bitcast %struct.nfp_reprs* %44 to %struct.net_device*
  store %struct.net_device* %45, %struct.net_device** %4, align 8
  br label %46

46:                                               ; preds = %37, %36, %29
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %47
}

declare dso_local i8* @FIELD_GET(i32, i32) #1

declare dso_local %struct.nfp_reprs* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
