; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_res.h_enic_queue_wq_desc_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_res.h_enic_queue_wq_desc_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq = type { i32 }
%struct.wq_enet_desc = type { i32 }

@VNIC_PADDR_TARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_wq*, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @enic_queue_wq_desc_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_queue_wq_desc_ex(%struct.vnic_wq* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.vnic_wq*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.wq_enet_desc*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.vnic_wq* %0, %struct.vnic_wq** %14, align 8
  store i8* %1, i8** %15, align 8
  store i64 %2, i64* %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %31 = load %struct.vnic_wq*, %struct.vnic_wq** %14, align 8
  %32 = call %struct.wq_enet_desc* @vnic_wq_next_desc(%struct.vnic_wq* %31)
  store %struct.wq_enet_desc* %32, %struct.wq_enet_desc** %27, align 8
  store i32 1, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %33 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %27, align 8
  %34 = load i64, i64* %16, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @VNIC_PADDR_TARGET, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* %22, align 4
  %42 = load i32, i32* %25, align 4
  %43 = load i32, i32* %23, align 4
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* %26, align 4
  %47 = call i32 @wq_enet_desc_enc(%struct.wq_enet_desc* %33, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 0, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.vnic_wq*, %struct.vnic_wq** %14, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = load i64, i64* %16, align 8
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %24, align 4
  %53 = load i32, i32* %25, align 4
  %54 = load i32, i32* %28, align 4
  %55 = load i32, i32* %23, align 4
  %56 = load i32, i32* %29, align 4
  %57 = load i32, i32* %30, align 4
  %58 = call i32 @vnic_wq_post(%struct.vnic_wq* %48, i8* %49, i64 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  ret void
}

declare dso_local %struct.wq_enet_desc* @vnic_wq_next_desc(%struct.vnic_wq*) #1

declare dso_local i32 @wq_enet_desc_enc(%struct.wq_enet_desc*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vnic_wq_post(%struct.vnic_wq*, i8*, i64, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
