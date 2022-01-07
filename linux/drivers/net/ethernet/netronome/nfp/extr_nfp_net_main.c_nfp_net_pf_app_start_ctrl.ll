; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_pf_app_start_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_main.c_nfp_net_pf_app_start_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*)* @nfp_net_pf_app_start_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_pf_app_start_ctrl(%struct.nfp_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_pf*, align 8
  %4 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %3, align 8
  %5 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %6 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %12 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %13 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @nfp_net_pf_init_vnic(%struct.nfp_pf* %11, i32 %14, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %10
  %21 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %22 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @nfp_ctrl_open(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %29

28:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %36

29:                                               ; preds = %27
  %30 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %31 = load %struct.nfp_pf*, %struct.nfp_pf** %3, align 8
  %32 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @nfp_net_pf_clean_vnic(%struct.nfp_pf* %30, i32 %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %29, %28, %18, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @nfp_net_pf_init_vnic(%struct.nfp_pf*, i32, i32) #1

declare dso_local i32 @nfp_ctrl_open(i32) #1

declare dso_local i32 @nfp_net_pf_clean_vnic(%struct.nfp_pf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
