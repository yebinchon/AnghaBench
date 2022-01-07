; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c___nfp_abm_stats_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c___nfp_abm_stats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nfp_alink_stats = type { i8*, i8* }
%struct.nfp_alink_xstats = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"RED stats init (%d, %d) failed with error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"RED xstats init (%d, %d) failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_abm_link*, i32, i32, %struct.nfp_alink_stats*, %struct.nfp_alink_xstats*)* @__nfp_abm_stats_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfp_abm_stats_init(%struct.nfp_abm_link* %0, i32 %1, i32 %2, %struct.nfp_alink_stats* %3, %struct.nfp_alink_xstats* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_abm_link*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfp_alink_stats*, align 8
  %11 = alloca %struct.nfp_alink_xstats*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.nfp_alink_stats* %3, %struct.nfp_alink_stats** %10, align 8
  store %struct.nfp_alink_xstats* %4, %struct.nfp_alink_xstats** %11, align 8
  %15 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %10, align 8
  %16 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %12, align 8
  %18 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %10, align 8
  %19 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %13, align 8
  %21 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %10, align 8
  %25 = call i32 @nfp_abm_ctrl_read_q_stats(%struct.nfp_abm_link* %21, i32 %22, i32 %23, %struct.nfp_alink_stats* %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %5
  %29 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %7, align 8
  %30 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @nfp_err(i32 %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %6, align 4
  br label %69

41:                                               ; preds = %5
  %42 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.nfp_alink_xstats*, %struct.nfp_alink_xstats** %11, align 8
  %46 = call i32 @nfp_abm_ctrl_read_q_xstats(%struct.nfp_abm_link* %42, i32 %43, i32 %44, %struct.nfp_alink_xstats* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %41
  %50 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %7, align 8
  %51 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @nfp_err(i32 %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %6, align 4
  br label %69

62:                                               ; preds = %41
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %10, align 8
  %65 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %10, align 8
  %68 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %62, %49, %28
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @nfp_abm_ctrl_read_q_stats(%struct.nfp_abm_link*, i32, i32, %struct.nfp_alink_stats*) #1

declare dso_local i32 @nfp_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @nfp_abm_ctrl_read_q_xstats(%struct.nfp_abm_link*, i32, i32, %struct.nfp_alink_xstats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
