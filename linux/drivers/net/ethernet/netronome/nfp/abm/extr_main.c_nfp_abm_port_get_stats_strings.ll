; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_port_get_stats_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_port_get_stats_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.nfp_port = type { i64, i32 }
%struct.nfp_repr = type { %struct.nfp_abm_link* }
%struct.nfp_abm_link = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NFP_PORT_PF_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"q%u_no_wait\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"q%u_delayed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.nfp_app*, %struct.nfp_port*, i32*)* @nfp_abm_port_get_stats_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nfp_abm_port_get_stats_strings(%struct.nfp_app* %0, %struct.nfp_port* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.nfp_port*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nfp_repr*, align 8
  %9 = alloca %struct.nfp_abm_link*, align 8
  %10 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.nfp_port* %1, %struct.nfp_port** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.nfp_port*, %struct.nfp_port** %6, align 8
  %12 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.nfp_repr* @netdev_priv(i32 %13)
  store %struct.nfp_repr* %14, %struct.nfp_repr** %8, align 8
  %15 = load %struct.nfp_port*, %struct.nfp_port** %6, align 8
  %16 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NFP_PORT_PF_PORT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  store i32* %21, i32** %4, align 8
  br label %47

22:                                               ; preds = %3
  %23 = load %struct.nfp_repr*, %struct.nfp_repr** %8, align 8
  %24 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %23, i32 0, i32 0
  %25 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %24, align 8
  store %struct.nfp_abm_link* %25, %struct.nfp_abm_link** %9, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %42, %22
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %9, align 8
  %29 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %27, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32* @nfp_pr_et(i32* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32* @nfp_pr_et(i32* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i32* %41, i32** %7, align 8
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %26

45:                                               ; preds = %26
  %46 = load i32*, i32** %7, align 8
  store i32* %46, i32** %4, align 8
  br label %47

47:                                               ; preds = %45, %20
  %48 = load i32*, i32** %4, align 8
  ret i32* %48
}

declare dso_local %struct.nfp_repr* @netdev_priv(i32) #1

declare dso_local i32* @nfp_pr_et(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
