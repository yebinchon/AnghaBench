; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_qdisc_offload_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_qdisc_offload_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.nfp_qdisc = type { %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Offload of '%08x' stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_abm_link*, %struct.nfp_qdisc*)* @nfp_abm_qdisc_offload_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_abm_qdisc_offload_stop(%struct.nfp_abm_link* %0, %struct.nfp_qdisc* %1) #0 {
  %3 = alloca %struct.nfp_abm_link*, align 8
  %4 = alloca %struct.nfp_qdisc*, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %3, align 8
  store %struct.nfp_qdisc* %1, %struct.nfp_qdisc** %4, align 8
  %6 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %4, align 8
  %7 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %3, align 8
  %12 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %4, align 8
  %19 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @nfp_warn(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %10, %2
  %23 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %4, align 8
  %24 = call i32 @nfp_abm_qdisc_is_red(%struct.nfp_qdisc* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %57

27:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %54, %27
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %4, align 8
  %31 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %29, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %28
  %36 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %4, align 8
  %37 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %4, align 8
  %46 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %28

57:                                               ; preds = %26, %28
  ret void
}

declare dso_local i32 @nfp_warn(i32, i8*, i32) #1

declare dso_local i32 @nfp_abm_qdisc_is_red(%struct.nfp_qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
