; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_get_qs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_get_qs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i8*, i8*, i32, i32, i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { i32, i32, i32, i32, i32 }
%struct.ice_qs_cfg = type { i8*, i32, i32, i32, i32, i32, i32, i32* }

@ICE_MAX_SCATTER_TXQS = common dso_local global i32 0, align 4
@ICE_MAX_SCATTER_RXQS = common dso_local global i32 0, align 4
@ICE_VSI_MAP_CONTIG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*)* @ice_vsi_get_qs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsi_get_qs(%struct.ice_vsi* %0) #0 {
  %2 = alloca %struct.ice_vsi*, align 8
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca %struct.ice_qs_cfg, align 8
  %5 = alloca %struct.ice_qs_cfg, align 8
  %6 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %2, align 8
  %7 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %8 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %7, i32 0, i32 6
  %9 = load %struct.ice_pf*, %struct.ice_pf** %8, align 8
  store %struct.ice_pf* %9, %struct.ice_pf** %3, align 8
  %10 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %4, i32 0, i32 0
  %11 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %12 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  %14 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %4, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %4, i32 0, i32 2
  %16 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %17 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %4, i32 0, i32 3
  %20 = load i32, i32* @ICE_MAX_SCATTER_TXQS, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %4, i32 0, i32 4
  %22 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %23 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %4, i32 0, i32 5
  %26 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %27 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 8
  %29 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %4, i32 0, i32 6
  %30 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %31 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %4, i32 0, i32 7
  %34 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %35 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %34, i32 0, i32 2
  store i32* %35, i32** %33, align 8
  %36 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %5, i32 0, i32 0
  %37 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %38 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %36, align 8
  %40 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %5, i32 0, i32 1
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %5, i32 0, i32 2
  %42 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %43 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %41, align 4
  %45 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %5, i32 0, i32 3
  %46 = load i32, i32* @ICE_MAX_SCATTER_RXQS, align 4
  store i32 %46, i32* %45, align 8
  %47 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %5, i32 0, i32 4
  %48 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %49 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %47, align 4
  %51 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %5, i32 0, i32 5
  %52 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %53 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %51, align 8
  %55 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %5, i32 0, i32 6
  %56 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %57 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %55, align 4
  %59 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %5, i32 0, i32 7
  %60 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %61 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %60, i32 0, i32 2
  store i32* %61, i32** %59, align 8
  store i32 0, i32* %6, align 4
  %62 = load i8*, i8** @ICE_VSI_MAP_CONTIG, align 8
  %63 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %64 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @ICE_VSI_MAP_CONTIG, align 8
  %66 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %67 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = call i32 @__ice_vsi_get_qs(%struct.ice_qs_cfg* %4)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %1
  %72 = call i32 @__ice_vsi_get_qs(%struct.ice_qs_cfg* %5)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %71, %1
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @__ice_vsi_get_qs(%struct.ice_qs_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
