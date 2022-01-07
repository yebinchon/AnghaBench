; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tfd_get_num_tbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_tx.c_iwl_pcie_tfd_get_num_tbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_tfh_tfd = type { i32 }
%struct.iwl_tfd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i8*)* @iwl_pcie_tfd_get_num_tbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_tfd_get_num_tbs(%struct.iwl_trans* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iwl_tfh_tfd*, align 8
  %7 = alloca %struct.iwl_tfd*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.iwl_tfh_tfd*
  store %struct.iwl_tfh_tfd* %16, %struct.iwl_tfh_tfd** %6, align 8
  %17 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_tfh_tfd, %struct.iwl_tfh_tfd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  %21 = and i32 %20, 31
  store i32 %21, i32* %3, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.iwl_tfd*
  store %struct.iwl_tfd* %24, %struct.iwl_tfd** %7, align 8
  %25 = load %struct.iwl_tfd*, %struct.iwl_tfd** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_tfd, %struct.iwl_tfd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 31
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
