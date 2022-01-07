; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_pf_app_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_pf_app_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32*, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_pf*)* @nfp_net_pf_app_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_pf_app_clean(%struct.nfp_pf* %0) #0 {
  %2 = alloca %struct.nfp_pf*, align 8
  store %struct.nfp_pf* %0, %struct.nfp_pf** %2, align 8
  %3 = load %struct.nfp_pf*, %struct.nfp_pf** %2, align 8
  %4 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.nfp_pf*, %struct.nfp_pf** %2, align 8
  %9 = load %struct.nfp_pf*, %struct.nfp_pf** %2, align 8
  %10 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @nfp_net_pf_free_vnic(%struct.nfp_pf* %8, i64 %11)
  %13 = load %struct.nfp_pf*, %struct.nfp_pf** %2, align 8
  %14 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nfp_cpp_area_release_free(i32 %15)
  br label %17

17:                                               ; preds = %7, %1
  %18 = load %struct.nfp_pf*, %struct.nfp_pf** %2, align 8
  %19 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.nfp_pf*, %struct.nfp_pf** %2, align 8
  %22 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @nfp_app_clean(i32* %23)
  %25 = load %struct.nfp_pf*, %struct.nfp_pf** %2, align 8
  %26 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.nfp_pf*, %struct.nfp_pf** %2, align 8
  %29 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @nfp_app_free(i32* %30)
  %32 = load %struct.nfp_pf*, %struct.nfp_pf** %2, align 8
  %33 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  ret void
}

declare dso_local i32 @nfp_net_pf_free_vnic(%struct.nfp_pf*, i64) #1

declare dso_local i32 @nfp_cpp_area_release_free(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nfp_app_clean(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nfp_app_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
