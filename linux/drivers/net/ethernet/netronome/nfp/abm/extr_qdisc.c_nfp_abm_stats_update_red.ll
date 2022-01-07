; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_stats_update_red.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_stats_update_red.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.nfp_cpp* }
%struct.nfp_cpp = type { i32 }
%struct.nfp_qdisc = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"RED stats (%d, %d) read failed with error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"RED xstats (%d, %d) read failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_abm_link*, %struct.nfp_qdisc*, i32)* @nfp_abm_stats_update_red to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_abm_stats_update_red(%struct.nfp_abm_link* %0, %struct.nfp_qdisc* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_abm_link*, align 8
  %5 = alloca %struct.nfp_qdisc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_cpp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %4, align 8
  store %struct.nfp_qdisc* %1, %struct.nfp_qdisc** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %11 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.nfp_cpp*, %struct.nfp_cpp** %15, align 8
  store %struct.nfp_cpp* %16, %struct.nfp_cpp** %7, align 8
  %17 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %76

22:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %73, %22
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %26 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %24, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %23
  %31 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %35 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = call i32 @nfp_abm_ctrl_read_q_stats(%struct.nfp_abm_link* %31, i32 %32, i32 %33, i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %30
  %46 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @nfp_err(%struct.nfp_cpp* %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %30
  %52 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %5, align 8
  %56 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = call i32 @nfp_abm_ctrl_read_q_xstats(%struct.nfp_abm_link* %52, i32 %53, i32 %54, i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %51
  %67 = load %struct.nfp_cpp*, %struct.nfp_cpp** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @nfp_err(%struct.nfp_cpp* %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %51
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %23

76:                                               ; preds = %21, %23
  ret void
}

declare dso_local i32 @nfp_abm_ctrl_read_q_stats(%struct.nfp_abm_link*, i32, i32, i32*) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*, i32, i32, i32) #1

declare dso_local i32 @nfp_abm_ctrl_read_q_xstats(%struct.nfp_abm_link*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
