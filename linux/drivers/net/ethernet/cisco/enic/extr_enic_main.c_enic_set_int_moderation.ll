; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_set_int_moderation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_set_int_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32*, %struct.vnic_cq* }
%struct.vnic_cq = type { i64, i64 }
%struct.vnic_rq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enic*, %struct.vnic_rq*)* @enic_set_int_moderation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_set_int_moderation(%struct.enic* %0, %struct.vnic_rq* %1) #0 {
  %3 = alloca %struct.enic*, align 8
  %4 = alloca %struct.vnic_rq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnic_cq*, align 8
  %7 = alloca i64, align 8
  store %struct.enic* %0, %struct.enic** %3, align 8
  store %struct.vnic_rq* %1, %struct.vnic_rq** %4, align 8
  %8 = load %struct.enic*, %struct.enic** %3, align 8
  %9 = load %struct.vnic_rq*, %struct.vnic_rq** %4, align 8
  %10 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @enic_msix_rq_intr(%struct.enic* %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.enic*, %struct.enic** %3, align 8
  %14 = getelementptr inbounds %struct.enic, %struct.enic* %13, i32 0, i32 1
  %15 = load %struct.vnic_cq*, %struct.vnic_cq** %14, align 8
  %16 = load %struct.enic*, %struct.enic** %3, align 8
  %17 = load %struct.vnic_rq*, %struct.vnic_rq** %4, align 8
  %18 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @enic_cq_rq(%struct.enic* %16, i32 %19)
  %21 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %15, i64 %20
  store %struct.vnic_cq* %21, %struct.vnic_cq** %6, align 8
  %22 = load %struct.vnic_cq*, %struct.vnic_cq** %6, align 8
  %23 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.vnic_cq*, %struct.vnic_cq** %6, align 8
  %26 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.vnic_cq*, %struct.vnic_cq** %6, align 8
  %29 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %2
  %33 = load %struct.enic*, %struct.enic** %3, align 8
  %34 = getelementptr inbounds %struct.enic, %struct.enic* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @vnic_intr_coalescing_timer_set(i32* %38, i64 %39)
  %41 = load %struct.vnic_cq*, %struct.vnic_cq** %6, align 8
  %42 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.vnic_cq*, %struct.vnic_cq** %6, align 8
  %45 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %32, %2
  ret void
}

declare dso_local i32 @enic_msix_rq_intr(%struct.enic*, i32) #1

declare dso_local i64 @enic_cq_rq(%struct.enic*, i32) #1

declare dso_local i32 @vnic_intr_coalescing_timer_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
