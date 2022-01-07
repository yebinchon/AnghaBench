; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smtdef.c_smt_set_mac_opvalues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smtdef.c_smt_set_mac_opvalues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@MAC0 = common dso_local global i64 0, align 8
@PATH0 = common dso_local global i64 0, align 8
@FDDI_RING_STATUS = common dso_local global i64 0, align 8
@FDDI_SMT_EVENT = common dso_local global i64 0, align 8
@FDDI_REMOTE_T_REQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smt_set_mac_opvalues(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %5 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %6 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = load i64, i64* @MAC0, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %14 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i64, i64* @PATH0, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %22 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i64, i64* @MAC0, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  %28 = call i32 @set_min_max(i32 1, i32 %12, i32 %20, i32* %27)
  store i32 %28, i32* %3, align 4
  %29 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %30 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i64, i64* @MAC0, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %38 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* @PATH0, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %46 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i64, i64* @MAC0, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = call i32 @set_min_max(i32 0, i32 %36, i32 %44, i32* %51)
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %56 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i64, i64* @MAC0, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %64 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i64, i64* @PATH0, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %72 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i64, i64* @MAC0, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = call i32 @set_min_max(i32 0, i32 %62, i32 %70, i32* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %3, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %1
  %84 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %85 = load i64, i64* @FDDI_RING_STATUS, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i64, i64* @FDDI_SMT_EVENT, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i64, i64* @FDDI_REMOTE_T_REQ, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %92 = call i32 @smt_get_event_word(%struct.s_smc* %91)
  %93 = call i32 @AIX_EVENT(%struct.s_smc* %84, i32 %86, i32 %88, i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %83, %1
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @set_min_max(i32, i32, i32, i32*) #1

declare dso_local i32 @AIX_EVENT(%struct.s_smc*, i32, i32, i32, i32) #1

declare dso_local i32 @smt_get_event_word(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
