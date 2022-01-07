; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_set_fec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_set_fec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.nfp_nsp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_eth_set_fec(%struct.nfp_cpp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_cpp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_nsp*, align 8
  %9 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nfp_cpp*, %struct.nfp_cpp** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.nfp_nsp* @nfp_eth_config_start(%struct.nfp_cpp* %10, i32 %11)
  store %struct.nfp_nsp* %12, %struct.nfp_nsp** %8, align 8
  %13 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %14 = call i64 @IS_ERR(%struct.nfp_nsp* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %18 = call i32 @PTR_ERR(%struct.nfp_nsp* %17)
  store i32 %18, i32* %4, align 4
  br label %32

19:                                               ; preds = %3
  %20 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @__nfp_eth_set_fec(%struct.nfp_nsp* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %27 = call i32 @nfp_eth_config_cleanup_end(%struct.nfp_nsp* %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %32

29:                                               ; preds = %19
  %30 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %31 = call i32 @nfp_eth_config_commit_end(%struct.nfp_nsp* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %25, %16
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.nfp_nsp* @nfp_eth_config_start(%struct.nfp_cpp*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @PTR_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @__nfp_eth_set_fec(%struct.nfp_nsp*, i32) #1

declare dso_local i32 @nfp_eth_config_cleanup_end(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_eth_config_commit_end(%struct.nfp_nsp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
