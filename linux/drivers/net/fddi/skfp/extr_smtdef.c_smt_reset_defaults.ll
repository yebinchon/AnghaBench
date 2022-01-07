; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smtdef.c_smt_reset_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smtdef.c_smt_reset_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.smt_config, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32, i8*, i32, i8*, i64, i64 }
%struct.smt_config = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i8** }
%struct.TYPE_6__ = type { i32 }

@SMC_VERSION = common dso_local global i32 0, align 4
@NUMMACS = common dso_local global i32 0, align 4
@SMT_DAS = common dso_local global i32 0, align 4
@NUMPHYS = common dso_local global i32 0, align 4
@DEFAULT_TB_MIN = common dso_local global i32 0, align 4
@DEFAULT_TB_MAX = common dso_local global i32 0, align 4
@DEFAULT_C_MIN = common dso_local global i32 0, align 4
@DEFAULT_T_OUT = common dso_local global i32 0, align 4
@DEFAULT_TL_MIN = common dso_local global i32 0, align 4
@DEFAULT_LC_SHORT = common dso_local global i32 0, align 4
@DEFAULT_LC_MEDIUM = common dso_local global i32 0, align 4
@DEFAULT_LC_LONG = common dso_local global i32 0, align 4
@DEFAULT_LC_EXTENDED = common dso_local global i32 0, align 4
@DEFAULT_T_NEXT_9 = common dso_local global i32 0, align 4
@DEFAULT_NS_MAX = common dso_local global i32 0, align 4
@DEFAULT_I_MAX = common dso_local global i32 0, align 4
@DEFAULT_IN_MAX = common dso_local global i32 0, align 4
@DEFAULT_TD_MIN = common dso_local global i32 0, align 4
@DEFAULT_TEST_DONE = common dso_local global i32 0, align 4
@DEFAULT_CHECK_POLL = common dso_local global i32 0, align 4
@DEFAULT_T_NON_OP = common dso_local global i32 0, align 4
@DEFAULT_T_STUCK = common dso_local global i32 0, align 4
@DEFAULT_T_DIRECT = common dso_local global i32 0, align 4
@DEFAULT_T_JAM = common dso_local global i32 0, align 4
@DEFAULT_T_ANNOUNCE = common dso_local global i32 0, align 4
@DEFAULT_POLL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@DEFAULT_D_MAX = common dso_local global i32 0, align 4
@DEFAULT_LCT_SHORT = common dso_local global i32 0, align 4
@DEFAULT_LCT_MEDIUM = common dso_local global i32 0, align 4
@DEFAULT_LCT_LONG = common dso_local global i32 0, align 4
@DEFAULT_LCT_EXTEND = common dso_local global i32 0, align 4
@SB_STATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smt_reset_defaults(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smt_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @smt_init_mib(%struct.s_smc* %8, i32 %9)
  %11 = load i32, i32* @SMC_VERSION, align 4
  %12 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %13 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = call i8* (...) @smt_get_time()
  store i8* %15, i8** %7, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %29, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NUMMACS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %23 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  store i8* %21, i8** %28, align 8
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %16

32:                                               ; preds = %16
  %33 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %34 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %33, i32 0, i32 3
  store %struct.smt_config* %34, %struct.smt_config** %5, align 8
  %35 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %36 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %35, i32 0, i32 31
  store i64 0, i64* %36, align 8
  %37 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %38 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* @SMT_DAS, align 4
  %40 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %41 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %40, i32 0, i32 30
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @NUMPHYS, align 4
  %43 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %44 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %43, i32 0, i32 29
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @DEFAULT_TB_MIN, align 4
  %46 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %47 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %46, i32 0, i32 28
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @DEFAULT_TB_MAX, align 4
  %49 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %50 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %49, i32 0, i32 27
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @DEFAULT_C_MIN, align 4
  %52 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %53 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %52, i32 0, i32 26
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @DEFAULT_T_OUT, align 4
  %55 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %56 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %55, i32 0, i32 25
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @DEFAULT_TL_MIN, align 4
  %58 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %59 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %58, i32 0, i32 24
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @DEFAULT_LC_SHORT, align 4
  %61 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %62 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %61, i32 0, i32 23
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @DEFAULT_LC_MEDIUM, align 4
  %64 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %65 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %64, i32 0, i32 22
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @DEFAULT_LC_LONG, align 4
  %67 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %68 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %67, i32 0, i32 21
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @DEFAULT_LC_EXTENDED, align 4
  %70 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %71 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %70, i32 0, i32 20
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @DEFAULT_T_NEXT_9, align 4
  %73 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %74 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %73, i32 0, i32 19
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @DEFAULT_NS_MAX, align 4
  %76 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %77 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %76, i32 0, i32 18
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @DEFAULT_I_MAX, align 4
  %79 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %80 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %79, i32 0, i32 17
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @DEFAULT_IN_MAX, align 4
  %82 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %83 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %82, i32 0, i32 16
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @DEFAULT_TD_MIN, align 4
  %85 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %86 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %85, i32 0, i32 15
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @DEFAULT_TEST_DONE, align 4
  %88 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %89 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %88, i32 0, i32 14
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @DEFAULT_CHECK_POLL, align 4
  %91 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %92 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %91, i32 0, i32 13
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @DEFAULT_T_NON_OP, align 4
  %94 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %95 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %94, i32 0, i32 12
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @DEFAULT_T_STUCK, align 4
  %97 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %98 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %97, i32 0, i32 11
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @DEFAULT_T_DIRECT, align 4
  %100 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %101 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %100, i32 0, i32 10
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @DEFAULT_T_JAM, align 4
  %103 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %104 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %103, i32 0, i32 9
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @DEFAULT_T_ANNOUNCE, align 4
  %106 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %107 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %106, i32 0, i32 8
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @DEFAULT_POLL, align 4
  %109 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %110 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 8
  %111 = load i8*, i8** @FALSE, align 8
  %112 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %113 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %112, i32 0, i32 6
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* @DEFAULT_D_MAX, align 4
  %115 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %116 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @DEFAULT_LCT_SHORT, align 4
  %118 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %119 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @DEFAULT_LCT_MEDIUM, align 4
  %121 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %122 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @DEFAULT_LCT_LONG, align 4
  %124 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %125 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @DEFAULT_LCT_EXTEND, align 4
  %127 = load %struct.smt_config*, %struct.smt_config** %5, align 8
  %128 = getelementptr inbounds %struct.smt_config, %struct.smt_config* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  ret void
}

declare dso_local i32 @smt_init_mib(%struct.s_smc*, i32) #1

declare dso_local i8* @smt_get_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
