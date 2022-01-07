; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_pf_app_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_pf_app_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*)* @nfp_net_pf_app_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_pf_app_start(%struct.nfp_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_pf*, align 8
  %4 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %3, align 8
  %5 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %6 = call i32 @nfp_net_pf_app_start_ctrl(%struct.nfp_pf* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %49

11:                                               ; preds = %1
  %12 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %13 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %16 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @nfp_app_start(i32 %14, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %45

22:                                               ; preds = %11
  %23 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %24 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %29 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %32 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @nfp_app_sriov_enable(i32 %30, i64 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %40

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %22
  store i32 0, i32* %2, align 4
  br label %49

40:                                               ; preds = %37
  %41 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %42 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @nfp_app_stop(i32 %43)
  br label %45

45:                                               ; preds = %40, %21
  %46 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %47 = call i32 @nfp_net_pf_app_stop_ctrl(%struct.nfp_pf* %46)
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %39, %9
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @nfp_net_pf_app_start_ctrl(%struct.nfp_pf*) #1

declare dso_local i32 @nfp_app_start(i32, i32) #1

declare dso_local i32 @nfp_app_sriov_enable(i32, i64) #1

declare dso_local i32 @nfp_app_stop(i32) #1

declare dso_local i32 @nfp_net_pf_app_stop_ctrl(%struct.nfp_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
