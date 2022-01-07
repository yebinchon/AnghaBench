; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_t3_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_t3_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sge_rspq }
%struct.sge_rspq = type { i64, i32, i32* }

@A_PL_CLI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @t3_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.sge_rspq*, align 8
  %10 = alloca %struct.sge_rspq*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.adapter*
  store %struct.adapter* %12, %struct.adapter** %8, align 8
  %13 = load %struct.adapter*, %struct.adapter** %8, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.sge_rspq* %18, %struct.sge_rspq** %9, align 8
  %19 = load %struct.adapter*, %struct.adapter** %8, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.sge_rspq* %24, %struct.sge_rspq** %10, align 8
  %25 = load %struct.sge_rspq*, %struct.sge_rspq** %9, align 8
  %26 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %25, i32 0, i32 1
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.sge_rspq*, %struct.sge_rspq** %9, align 8
  %29 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.sge_rspq*, %struct.sge_rspq** %9, align 8
  %32 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load %struct.sge_rspq*, %struct.sge_rspq** %9, align 8
  %36 = call i32 @is_new_response(i32* %34, %struct.sge_rspq* %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.adapter*, %struct.adapter** %8, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %53

42:                                               ; preds = %2
  %43 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %44 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %47 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %51 = call i32 @is_new_response(i32* %49, %struct.sge_rspq* %50)
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %42, %2
  %54 = phi i1 [ false, %2 ], [ %52, %42 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %56, %57
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %53
  %62 = load %struct.adapter*, %struct.adapter** %8, align 8
  %63 = load i32, i32* @A_PL_CLI, align 4
  %64 = call i32 @t3_write_reg(%struct.adapter* %62, i32 %63, i32 0)
  %65 = load %struct.adapter*, %struct.adapter** %8, align 8
  %66 = load i32, i32* @A_PL_CLI, align 4
  %67 = call i32 @t3_read_reg(%struct.adapter* %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = call i64 @likely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load %struct.adapter*, %struct.adapter** %8, align 8
  %73 = load %struct.sge_rspq*, %struct.sge_rspq** %9, align 8
  %74 = call i32 @process_responses_gts(%struct.adapter* %72, %struct.sge_rspq* %73)
  br label %75

75:                                               ; preds = %71, %61
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.adapter*, %struct.adapter** %8, align 8
  %80 = load %struct.sge_rspq*, %struct.sge_rspq** %10, align 8
  %81 = call i32 @process_responses_gts(%struct.adapter* %79, %struct.sge_rspq* %80)
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %5, align 4
  br label %89

86:                                               ; preds = %53
  %87 = load %struct.adapter*, %struct.adapter** %8, align 8
  %88 = call i32 @t3_slow_intr_handler(%struct.adapter* %87)
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %86, %82
  %90 = load %struct.sge_rspq*, %struct.sge_rspq** %9, align 8
  %91 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %90, i32 0, i32 1
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @IRQ_RETVAL(i32 %95)
  ret i32 %96
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @is_new_response(i32*, %struct.sge_rspq*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @process_responses_gts(%struct.adapter*, %struct.sge_rspq*) #1

declare dso_local i32 @t3_slow_intr_handler(%struct.adapter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
