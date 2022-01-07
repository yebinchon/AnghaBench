; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_offload_compile_mq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_offload_compile_mq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { i32 }
%struct.nfp_qdisc = type { i32, i64, %struct.nfp_qdisc** }

@NFP_QDISC_MQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_abm_link*, %struct.nfp_qdisc*)* @nfp_abm_offload_compile_mq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_abm_offload_compile_mq(%struct.nfp_abm_link* %0, %struct.nfp_qdisc* %1) #0 {
  %3 = alloca %struct.nfp_abm_link*, align 8
  %4 = alloca %struct.nfp_qdisc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_qdisc*, align 8
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %3, align 8
  store %struct.nfp_qdisc* %1, %struct.nfp_qdisc** %4, align 8
  %7 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %4, align 8
  %8 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NFP_QDISC_MQ, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %4, align 8
  %14 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %4, align 8
  %16 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %48

20:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %45, %20
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %3, align 8
  %24 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %4, align 8
  %29 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %28, i32 0, i32 2
  %30 = load %struct.nfp_qdisc**, %struct.nfp_qdisc*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.nfp_qdisc*, %struct.nfp_qdisc** %30, i64 %32
  %34 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %33, align 8
  store %struct.nfp_qdisc* %34, %struct.nfp_qdisc** %6, align 8
  %35 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @nfp_abm_qdisc_child_valid(%struct.nfp_qdisc* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %27
  br label %45

40:                                               ; preds = %27
  %41 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %3, align 8
  %42 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @nfp_abm_offload_compile_red(%struct.nfp_abm_link* %41, %struct.nfp_qdisc* %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %39
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %21

48:                                               ; preds = %19, %21
  ret void
}

declare dso_local i32 @nfp_abm_qdisc_child_valid(%struct.nfp_qdisc*, i32) #1

declare dso_local i32 @nfp_abm_offload_compile_red(%struct.nfp_abm_link*, %struct.nfp_qdisc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
