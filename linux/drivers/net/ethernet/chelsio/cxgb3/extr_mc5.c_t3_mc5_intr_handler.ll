; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_mc5.c_t3_mc5_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_mc5.c_t3_mc5_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc5 = type { %struct.TYPE_2__, i64, %struct.adapter* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.adapter = type { i32 }

@A_MC5_DB_INT_CAUSE = common dso_local global i32 0, align 4
@F_PARITYERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MC5 parity error\0A\00", align 1
@F_REQQPARERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"MC5 request queue parity error\0A\00", align 1
@F_DISPQPARERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"MC5 dispatch queue parity error\0A\00", align 1
@F_ACTRGNFULL = common dso_local global i32 0, align 4
@F_NFASRCHFAIL = common dso_local global i32 0, align 4
@F_UNKNOWNCMD = common dso_local global i32 0, align 4
@F_DELACTEMPTY = common dso_local global i32 0, align 4
@MC5_INT_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_mc5_intr_handler(%struct.mc5* %0) #0 {
  %2 = alloca %struct.mc5*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.mc5* %0, %struct.mc5** %2, align 8
  %5 = load %struct.mc5*, %struct.mc5** %2, align 8
  %6 = getelementptr inbounds %struct.mc5, %struct.mc5* %5, i32 0, i32 2
  %7 = load %struct.adapter*, %struct.adapter** %6, align 8
  store %struct.adapter* %7, %struct.adapter** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = load i32, i32* @A_MC5_DB_INT_CAUSE, align 4
  %10 = call i32 @t3_read_reg(%struct.adapter* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @F_PARITYERR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.mc5*, %struct.mc5** %2, align 8
  %17 = getelementptr inbounds %struct.mc5, %struct.mc5* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = call i32 @CH_ALERT(%struct.adapter* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.mc5*, %struct.mc5** %2, align 8
  %24 = getelementptr inbounds %struct.mc5, %struct.mc5* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %20, %15, %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @F_REQQPARERR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = call i32 @CH_ALERT(%struct.adapter* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.mc5*, %struct.mc5** %2, align 8
  %37 = getelementptr inbounds %struct.mc5, %struct.mc5* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %33, %28
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @F_DISPQPARERR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.adapter*, %struct.adapter** %3, align 8
  %48 = call i32 @CH_ALERT(%struct.adapter* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.mc5*, %struct.mc5** %2, align 8
  %50 = getelementptr inbounds %struct.mc5, %struct.mc5* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %46, %41
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @F_ACTRGNFULL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.mc5*, %struct.mc5** %2, align 8
  %61 = getelementptr inbounds %struct.mc5, %struct.mc5* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @F_NFASRCHFAIL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.mc5*, %struct.mc5** %2, align 8
  %72 = getelementptr inbounds %struct.mc5, %struct.mc5* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @F_UNKNOWNCMD, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.mc5*, %struct.mc5** %2, align 8
  %83 = getelementptr inbounds %struct.mc5, %struct.mc5* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @F_DELACTEMPTY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.mc5*, %struct.mc5** %2, align 8
  %94 = getelementptr inbounds %struct.mc5, %struct.mc5* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %87
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @MC5_INT_FATAL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.adapter*, %struct.adapter** %3, align 8
  %105 = call i32 @t3_fatal_err(%struct.adapter* %104)
  br label %106

106:                                              ; preds = %103, %98
  %107 = load %struct.adapter*, %struct.adapter** %3, align 8
  %108 = load i32, i32* @A_MC5_DB_INT_CAUSE, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @t3_write_reg(%struct.adapter* %107, i32 %108, i32 %109)
  ret void
}

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @CH_ALERT(%struct.adapter*, i8*) #1

declare dso_local i32 @t3_fatal_err(%struct.adapter*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
