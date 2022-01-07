; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_srf.c_clear_all_rep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_srf.c_clear_all_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__, %struct.s_srf_evc* }
%struct.TYPE_2__ = type { i8* }
%struct.s_srf_evc = type { i8**, i32, i8* }

@MAX_EVCS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @clear_all_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_all_rep(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca %struct.s_srf_evc*, align 8
  %4 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %6 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %5, i32 0, i32 1
  %7 = load %struct.s_srf_evc*, %struct.s_srf_evc** %6, align 8
  store %struct.s_srf_evc* %7, %struct.s_srf_evc** %3, align 8
  br label %8

8:                                                ; preds = %27, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MAX_EVCS, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load i8*, i8** @FALSE, align 8
  %14 = load %struct.s_srf_evc*, %struct.s_srf_evc** %3, align 8
  %15 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load %struct.s_srf_evc*, %struct.s_srf_evc** %3, align 8
  %17 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @SMT_IS_CONDITION(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load i8*, i8** @FALSE, align 8
  %23 = load %struct.s_srf_evc*, %struct.s_srf_evc** %3, align 8
  %24 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  store i8* %22, i8** %25, align 8
  br label %26

26:                                               ; preds = %21, %12
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %4, align 4
  %30 = load %struct.s_srf_evc*, %struct.s_srf_evc** %3, align 8
  %31 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %30, i32 1
  store %struct.s_srf_evc* %31, %struct.s_srf_evc** %3, align 8
  br label %8

32:                                               ; preds = %8
  %33 = load i8*, i8** @FALSE, align 8
  %34 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %35 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  ret void
}

declare dso_local i64 @SMT_IS_CONDITION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
