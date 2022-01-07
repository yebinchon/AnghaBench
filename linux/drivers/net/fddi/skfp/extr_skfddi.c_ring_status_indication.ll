; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_ring_status_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_ring_status_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"ring_status_indication( \00", align 1
@RS_RES15 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"RS_RES15 \00", align 1
@RS_HARDERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"RS_HARDERROR \00", align 1
@RS_SOFTERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"RS_SOFTERROR \00", align 1
@RS_BEACON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"RS_BEACON \00", align 1
@RS_PATHTEST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"RS_PATHTEST \00", align 1
@RS_SELFTEST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"RS_SELFTEST \00", align 1
@RS_RES9 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"RS_RES9 \00", align 1
@RS_DISCONNECT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"RS_DISCONNECT \00", align 1
@RS_RES7 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"RS_RES7 \00", align 1
@RS_DUPADDR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"RS_DUPADDR \00", align 1
@RS_NORINGOP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"RS_NORINGOP \00", align 1
@RS_VERSION = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"RS_VERSION \00", align 1
@RS_STUCKBYPASSS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"RS_STUCKBYPASSS \00", align 1
@RS_EVENT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"RS_EVENT \00", align 1
@RS_RINGOPCHANGE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"RS_RINGOPCHANGE \00", align 1
@RS_RES0 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"RS_RES0 \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ring_status_indication(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @RS_RES15, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @RS_HARDERROR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @RS_SOFTERROR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @RS_BEACON, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @RS_PATHTEST, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @RS_SELFTEST, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @RS_RES9, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %47
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @RS_DISCONNECT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %54
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @RS_RES7, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %61
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @RS_DUPADDR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %68
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @RS_NORINGOP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %75
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @RS_VERSION, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %82
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @RS_STUCKBYPASSS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %89
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @RS_EVENT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %96
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @RS_RINGOPCHANGE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %103
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @RS_RES0, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %110
  %118 = call i32 @pr_debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
