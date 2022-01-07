; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_t3_sge_err_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_t3_sge_err_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32 }

@A_SG_INT_CAUSE = common dso_local global i32 0, align 4
@F_FLEMPTY = common dso_local global i32 0, align 4
@SGE_PARERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SGE parity error (0x%x)\0A\00", align 1
@SGE_FRAMINGERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"SGE framing error (0x%x)\0A\00", align 1
@F_RSPQCREDITOVERFOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"SGE response queue credit overflow\0A\00", align 1
@F_RSPQDISABLED = common dso_local global i32 0, align 4
@A_SG_RSPQ_FL_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"packet delivered to disabled response queue (0x%x)\0A\00", align 1
@S_RSPQ0DISABLED = common dso_local global i32 0, align 4
@F_HIPIODRBDROPERR = common dso_local global i32 0, align 4
@F_LOPIODRBDROPERR = common dso_local global i32 0, align 4
@cxgb3_wq = common dso_local global i32 0, align 4
@F_HIPRIORITYDBFULL = common dso_local global i32 0, align 4
@F_LOPRIORITYDBFULL = common dso_local global i32 0, align 4
@F_HIPRIORITYDBEMPTY = common dso_local global i32 0, align 4
@F_LOPRIORITYDBEMPTY = common dso_local global i32 0, align 4
@SGE_FATALERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_sge_err_intr_handler(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = load i32, i32* @A_SG_INT_CAUSE, align 4
  %7 = call i32 @t3_read_reg(%struct.adapter* %5, i32 %6)
  %8 = load i32, i32* @F_FLEMPTY, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SGE_PARERR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SGE_PARERR, align 4
  %19 = and i32 %17, %18
  %20 = call i32 (%struct.adapter*, i8*, ...) @CH_ALERT(%struct.adapter* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SGE_FRAMINGERR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SGE_FRAMINGERR, align 4
  %30 = and i32 %28, %29
  %31 = call i32 (%struct.adapter*, i8*, ...) @CH_ALERT(%struct.adapter* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @F_RSPQCREDITOVERFOW, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.adapter*, %struct.adapter** %2, align 8
  %39 = call i32 (%struct.adapter*, i8*, ...) @CH_ALERT(%struct.adapter* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @F_RSPQDISABLED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.adapter*, %struct.adapter** %2, align 8
  %47 = load i32, i32* @A_SG_RSPQ_FL_STATUS, align 4
  %48 = call i32 @t3_read_reg(%struct.adapter* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @S_RSPQ0DISABLED, align 4
  %52 = lshr i32 %50, %51
  %53 = and i32 %52, 255
  %54 = call i32 (%struct.adapter*, i8*, ...) @CH_ALERT(%struct.adapter* %49, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %45, %40
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @F_HIPIODRBDROPERR, align 4
  %58 = load i32, i32* @F_LOPIODRBDROPERR, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* @cxgb3_wq, align 4
  %64 = load %struct.adapter*, %struct.adapter** %2, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 2
  %66 = call i32 @queue_work(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %62, %55
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @F_HIPRIORITYDBFULL, align 4
  %70 = load i32, i32* @F_LOPRIORITYDBFULL, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i32, i32* @cxgb3_wq, align 4
  %76 = load %struct.adapter*, %struct.adapter** %2, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 1
  %78 = call i32 @queue_work(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %74, %67
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @F_HIPRIORITYDBEMPTY, align 4
  %82 = load i32, i32* @F_LOPRIORITYDBEMPTY, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load i32, i32* @cxgb3_wq, align 4
  %88 = load %struct.adapter*, %struct.adapter** %2, align 8
  %89 = getelementptr inbounds %struct.adapter, %struct.adapter* %88, i32 0, i32 0
  %90 = call i32 @queue_work(i32 %87, i32* %89)
  br label %91

91:                                               ; preds = %86, %79
  %92 = load %struct.adapter*, %struct.adapter** %2, align 8
  %93 = load i32, i32* @A_SG_INT_CAUSE, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @t3_write_reg(%struct.adapter* %92, i32 %93, i32 %94)
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @SGE_FATALERR, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load %struct.adapter*, %struct.adapter** %2, align 8
  %102 = call i32 @t3_fatal_err(%struct.adapter* %101)
  br label %103

103:                                              ; preds = %100, %91
  ret void
}

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @CH_ALERT(%struct.adapter*, i8*, ...) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t3_fatal_err(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
