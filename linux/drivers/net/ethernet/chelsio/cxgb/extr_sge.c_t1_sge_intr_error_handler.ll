; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_t1_sge_intr_error_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_t1_sge_intr_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { %struct.TYPE_6__, %struct.adapter* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.adapter = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@A_SG_INT_CAUSE = common dso_local global i64 0, align 8
@NETIF_F_TSO = common dso_local global i32 0, align 4
@F_PACKET_TOO_BIG = common dso_local global i32 0, align 4
@F_RESPQ_EXHAUSTED = common dso_local global i32 0, align 4
@F_RESPQ_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: SGE response queue overflow\0A\00", align 1
@F_FL_EXHAUSTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: SGE max packet size exceeded\0A\00", align 1
@F_PACKET_MISMATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: SGE packet mismatch\0A\00", align 1
@SGE_INT_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1_sge_intr_error_handler(%struct.sge* %0) #0 {
  %2 = alloca %struct.sge*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.sge* %0, %struct.sge** %2, align 8
  %5 = load %struct.sge*, %struct.sge** %2, align 8
  %6 = getelementptr inbounds %struct.sge, %struct.sge* %5, i32 0, i32 1
  %7 = load %struct.adapter*, %struct.adapter** %6, align 8
  store %struct.adapter* %7, %struct.adapter** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @A_SG_INT_CAUSE, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NETIF_F_TSO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load i32, i32* @F_PACKET_TOO_BIG, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @F_RESPQ_EXHAUSTED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.sge*, %struct.sge** %2, align 8
  %37 = getelementptr inbounds %struct.sge, %struct.sge* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @F_RESPQ_OVERFLOW, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.sge*, %struct.sge** %2, align 8
  %48 = getelementptr inbounds %struct.sge, %struct.sge* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.adapter*, %struct.adapter** %3, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pr_alert(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %46, %41
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @F_FL_EXHAUSTED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.sge*, %struct.sge** %2, align 8
  %63 = getelementptr inbounds %struct.sge, %struct.sge* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.sge*, %struct.sge** %2, align 8
  %68 = call i32 @freelQs_empty(%struct.sge* %67)
  br label %69

69:                                               ; preds = %61, %56
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @F_PACKET_TOO_BIG, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.sge*, %struct.sge** %2, align 8
  %76 = getelementptr inbounds %struct.sge, %struct.sge* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.adapter*, %struct.adapter** %3, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @pr_alert(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %74, %69
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @F_PACKET_MISMATCH, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.sge*, %struct.sge** %2, align 8
  %91 = getelementptr inbounds %struct.sge, %struct.sge* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load %struct.adapter*, %struct.adapter** %3, align 8
  %96 = getelementptr inbounds %struct.adapter, %struct.adapter* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @pr_alert(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %89, %84
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @SGE_INT_FATAL, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.adapter*, %struct.adapter** %3, align 8
  %106 = call i32 @t1_fatal_err(%struct.adapter* %105)
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.adapter*, %struct.adapter** %3, align 8
  %110 = getelementptr inbounds %struct.adapter, %struct.adapter* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @A_SG_INT_CAUSE, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @writel(i32 %108, i64 %113)
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pr_alert(i8*, i32) #1

declare dso_local i32 @freelQs_empty(%struct.sge*) #1

declare dso_local i32 @t1_fatal_err(%struct.adapter*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
