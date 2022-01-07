; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_abm* }
%struct.nfp_abm = type { i32, i32, i32 }

@NFP_REPR_TYPE_PF = common dso_local global i32 0, align 4
@NFP_REPR_TYPE_PHYS_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*)* @nfp_abm_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_abm_clean(%struct.nfp_app* %0) #0 {
  %2 = alloca %struct.nfp_app*, align 8
  %3 = alloca %struct.nfp_abm*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %2, align 8
  %4 = load %struct.nfp_app*, %struct.nfp_app** %2, align 8
  %5 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %4, i32 0, i32 0
  %6 = load %struct.nfp_abm*, %struct.nfp_abm** %5, align 8
  store %struct.nfp_abm* %6, %struct.nfp_abm** %3, align 8
  %7 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %8 = call i32 @nfp_abm_eswitch_clean_up(%struct.nfp_abm* %7)
  %9 = load %struct.nfp_app*, %struct.nfp_app** %2, align 8
  %10 = load i32, i32* @NFP_REPR_TYPE_PF, align 4
  %11 = call i32 @nfp_reprs_clean_and_free_by_type(%struct.nfp_app* %9, i32 %10)
  %12 = load %struct.nfp_app*, %struct.nfp_app** %2, align 8
  %13 = load i32, i32* @NFP_REPR_TYPE_PHYS_PORT, align 4
  %14 = call i32 @nfp_reprs_clean_and_free_by_type(%struct.nfp_app* %12, i32 %13)
  %15 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %16 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bitmap_free(i32 %17)
  %19 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %20 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kvfree(i32 %21)
  %23 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %24 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kvfree(i32 %25)
  %27 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %28 = call i32 @kfree(%struct.nfp_abm* %27)
  %29 = load %struct.nfp_app*, %struct.nfp_app** %2, align 8
  %30 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %29, i32 0, i32 0
  store %struct.nfp_abm* null, %struct.nfp_abm** %30, align 8
  ret void
}

declare dso_local i32 @nfp_abm_eswitch_clean_up(%struct.nfp_abm*) #1

declare dso_local i32 @nfp_reprs_clean_and_free_by_type(%struct.nfp_app*, i32) #1

declare dso_local i32 @bitmap_free(i32) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @kfree(%struct.nfp_abm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
