; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_set_txptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_set_txptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@FM_CMDREG2 = common dso_local global i32 0, align 4
@FM_IRSTQ = common dso_local global i64 0, align 8
@FM_RPXA0 = common dso_local global i32 0, align 4
@FM_SWPXA0 = common dso_local global i32 0, align 4
@FM_WPXA0 = common dso_local global i32 0, align 4
@FM_EAA0 = common dso_local global i32 0, align 4
@FM_RPXS = common dso_local global i32 0, align 4
@FM_SWPXS = common dso_local global i32 0, align 4
@FM_WPXS = common dso_local global i32 0, align 4
@FM_EAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @set_txptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_txptr(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load i32, i32* @FM_CMDREG2, align 4
  %4 = call i32 @FM_A(i32 %3)
  %5 = load i64, i64* @FM_IRSTQ, align 8
  %6 = call i32 @outpw(i32 %4, i64 %5)
  %7 = load i32, i32* @FM_RPXA0, align 4
  %8 = call i32 @FM_A(i32 %7)
  %9 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %10 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @outpw(i32 %8, i64 %14)
  %16 = load i32, i32* @FM_SWPXA0, align 4
  %17 = call i32 @FM_A(i32 %16)
  %18 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %19 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @outpw(i32 %17, i64 %23)
  %25 = load i32, i32* @FM_WPXA0, align 4
  %26 = call i32 @FM_A(i32 %25)
  %27 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %28 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @outpw(i32 %26, i64 %32)
  %34 = load i32, i32* @FM_EAA0, align 4
  %35 = call i32 @FM_A(i32 %34)
  %36 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %37 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, 1
  %43 = call i32 @outpw(i32 %35, i64 %42)
  %44 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %45 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %1
  %52 = load i32, i32* @FM_RPXS, align 4
  %53 = call i32 @FM_A(i32 %52)
  %54 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %55 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @outpw(i32 %53, i64 %59)
  %61 = load i32, i32* @FM_SWPXS, align 4
  %62 = call i32 @FM_A(i32 %61)
  %63 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %64 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @outpw(i32 %62, i64 %68)
  %70 = load i32, i32* @FM_WPXS, align 4
  %71 = call i32 @FM_A(i32 %70)
  %72 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %73 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @outpw(i32 %71, i64 %77)
  %79 = load i32, i32* @FM_EAS, align 4
  %80 = call i32 @FM_A(i32 %79)
  %81 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %82 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %86, 1
  %88 = call i32 @outpw(i32 %80, i64 %87)
  br label %130

89:                                               ; preds = %1
  %90 = load i32, i32* @FM_RPXS, align 4
  %91 = call i32 @FM_A(i32 %90)
  %92 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %93 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %97, 1
  %99 = call i32 @outpw(i32 %91, i64 %98)
  %100 = load i32, i32* @FM_SWPXS, align 4
  %101 = call i32 @FM_A(i32 %100)
  %102 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %103 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %107, 1
  %109 = call i32 @outpw(i32 %101, i64 %108)
  %110 = load i32, i32* @FM_WPXS, align 4
  %111 = call i32 @FM_A(i32 %110)
  %112 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %113 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %117, 1
  %119 = call i32 @outpw(i32 %111, i64 %118)
  %120 = load i32, i32* @FM_EAS, align 4
  %121 = call i32 @FM_A(i32 %120)
  %122 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %123 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %127, 1
  %129 = call i32 @outpw(i32 %121, i64 %128)
  br label %130

130:                                              ; preds = %89, %51
  ret void
}

declare dso_local i32 @outpw(i32, i64) #1

declare dso_local i32 @FM_A(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
