; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_lem_check_lct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_lem_check_lct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.s_phy = type { i32, i8*, i64, %struct.fddi_mib_p*, %struct.lem_counter }
%struct.fddi_mib_p = type { i32, i64, i32 }
%struct.lem_counter = type { i64 }

@FALSE = common dso_local global i8* null, align 8
@PL_LINK_ERR_CTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c" >>errors : %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*, %struct.s_phy*)* @lem_check_lct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lem_check_lct(%struct.s_smc* %0, %struct.s_phy* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.s_phy*, align 8
  %5 = alloca %struct.lem_counter*, align 8
  %6 = alloca %struct.fddi_mib_p*, align 8
  %7 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store %struct.s_phy* %1, %struct.s_phy** %4, align 8
  %8 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %9 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %8, i32 0, i32 4
  store %struct.lem_counter* %9, %struct.lem_counter** %5, align 8
  %10 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %11 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %10, i32 0, i32 3
  %12 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %11, align 8
  store %struct.fddi_mib_p* %12, %struct.fddi_mib_p** %6, align 8
  %13 = load i8*, i8** @FALSE, align 8
  %14 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %15 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %17 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @PL_LINK_ERR_CTR, align 4
  %21 = call i32 @PLC(i32 %19, i32 %20)
  %22 = call i32 @inpw(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.lem_counter*, %struct.lem_counter** %5, align 8
  %26 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %6, align 8
  %31 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.lem_counter*, %struct.lem_counter** %5, align 8
  %35 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %103

38:                                               ; preds = %2
  %39 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %40 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %98 [
    i32 128, label %42
    i32 129, label %56
    i32 130, label %70
    i32 131, label %84
  ]

42:                                               ; preds = %38
  %43 = load %struct.lem_counter*, %struct.lem_counter** %5, align 8
  %44 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %47 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %45, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i8*, i8** @TRUE, align 8
  %53 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %54 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %42
  br label %98

56:                                               ; preds = %38
  %57 = load %struct.lem_counter*, %struct.lem_counter** %5, align 8
  %58 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %61 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %59, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i8*, i8** @TRUE, align 8
  %67 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %68 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %56
  br label %98

70:                                               ; preds = %38
  %71 = load %struct.lem_counter*, %struct.lem_counter** %5, align 8
  %72 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %75 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %73, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i8*, i8** @TRUE, align 8
  %81 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %82 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %79, %70
  br label %98

84:                                               ; preds = %38
  %85 = load %struct.lem_counter*, %struct.lem_counter** %5, align 8
  %86 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %89 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sge i64 %87, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load i8*, i8** @TRUE, align 8
  %95 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %96 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %93, %84
  br label %98

98:                                               ; preds = %38, %97, %83, %69, %55
  %99 = load %struct.lem_counter*, %struct.lem_counter** %5, align 8
  %100 = getelementptr inbounds %struct.lem_counter, %struct.lem_counter* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @DB_PCMN(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %98, %2
  %104 = load %struct.s_phy*, %struct.s_phy** %4, align 8
  %105 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %6, align 8
  %110 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %110, align 8
  %113 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %6, align 8
  %114 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %120

117:                                              ; preds = %103
  %118 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %6, align 8
  %119 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %118, i32 0, i32 1
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %117, %108
  ret void
}

declare dso_local i32 @inpw(i32) #1

declare dso_local i32 @PLC(i32, i32) #1

declare dso_local i32 @DB_PCMN(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
