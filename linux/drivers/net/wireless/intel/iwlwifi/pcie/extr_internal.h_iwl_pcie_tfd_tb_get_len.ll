; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_pcie_tfd_tb_get_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_internal.h_iwl_pcie_tfd_tb_get_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_tfh_tfd = type { %struct.iwl_tfh_tb* }
%struct.iwl_tfh_tb = type { i32 }
%struct.iwl_tfd = type { %struct.iwl_tfd_tb* }
%struct.iwl_tfd_tb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i8*, i64)* @iwl_pcie_tfd_tb_get_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_tfd_tb_get_len(%struct.iwl_trans* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iwl_tfh_tfd*, align 8
  %9 = alloca %struct.iwl_tfh_tb*, align 8
  %10 = alloca %struct.iwl_tfd*, align 8
  %11 = alloca %struct.iwl_tfd_tb*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.iwl_tfh_tfd*
  store %struct.iwl_tfh_tfd* %20, %struct.iwl_tfh_tfd** %8, align 8
  %21 = load %struct.iwl_tfh_tfd*, %struct.iwl_tfh_tfd** %8, align 8
  %22 = getelementptr inbounds %struct.iwl_tfh_tfd, %struct.iwl_tfh_tfd* %21, i32 0, i32 0
  %23 = load %struct.iwl_tfh_tb*, %struct.iwl_tfh_tb** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.iwl_tfh_tb, %struct.iwl_tfh_tb* %23, i64 %24
  store %struct.iwl_tfh_tb* %25, %struct.iwl_tfh_tb** %9, align 8
  %26 = load %struct.iwl_tfh_tb*, %struct.iwl_tfh_tb** %9, align 8
  %27 = getelementptr inbounds %struct.iwl_tfh_tb, %struct.iwl_tfh_tb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %43

30:                                               ; preds = %3
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to %struct.iwl_tfd*
  store %struct.iwl_tfd* %32, %struct.iwl_tfd** %10, align 8
  %33 = load %struct.iwl_tfd*, %struct.iwl_tfd** %10, align 8
  %34 = getelementptr inbounds %struct.iwl_tfd, %struct.iwl_tfd* %33, i32 0, i32 0
  %35 = load %struct.iwl_tfd_tb*, %struct.iwl_tfd_tb** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.iwl_tfd_tb, %struct.iwl_tfd_tb* %35, i64 %36
  store %struct.iwl_tfd_tb* %37, %struct.iwl_tfd_tb** %11, align 8
  %38 = load %struct.iwl_tfd_tb*, %struct.iwl_tfd_tb** %11, align 8
  %39 = getelementptr inbounds %struct.iwl_tfd_tb, %struct.iwl_tfd_tb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = ashr i32 %41, 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %30, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
