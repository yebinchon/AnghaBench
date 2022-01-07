; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c_t1_get_board_rev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c_t1_get_board_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.board_info = type { i64 }
%struct.adapter_params = type { i64, i32, i32 }

@CHBT_TERM_FPGA = common dso_local global i64 0, align 8
@CHBT_TERM_T1 = common dso_local global i64 0, align 8
@CHBT_TERM_T2 = common dso_local global i64 0, align 8
@A_TP_PC_CONFIG = common dso_local global i64 0, align 8
@TERM_T1B = common dso_local global i32 0, align 4
@TERM_T2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1_get_board_rev(%struct.TYPE_3__* %0, %struct.board_info* %1, %struct.adapter_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.board_info*, align 8
  %7 = alloca %struct.adapter_params*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.board_info* %1, %struct.board_info** %6, align 8
  store %struct.adapter_params* %2, %struct.adapter_params** %7, align 8
  %9 = load %struct.board_info*, %struct.board_info** %6, align 8
  %10 = getelementptr inbounds %struct.board_info, %struct.board_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.adapter_params*, %struct.adapter_params** %7, align 8
  %13 = getelementptr inbounds %struct.adapter_params, %struct.adapter_params* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.adapter_params*, %struct.adapter_params** %7, align 8
  %15 = getelementptr inbounds %struct.adapter_params, %struct.adapter_params* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CHBT_TERM_FPGA, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load %struct.adapter_params*, %struct.adapter_params** %7, align 8
  %21 = getelementptr inbounds %struct.adapter_params, %struct.adapter_params* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.adapter_params*, %struct.adapter_params** %7, align 8
  %23 = getelementptr inbounds %struct.adapter_params, %struct.adapter_params* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHBT_TERM_T1, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %3
  %28 = load %struct.adapter_params*, %struct.adapter_params** %7, align 8
  %29 = getelementptr inbounds %struct.adapter_params, %struct.adapter_params* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CHBT_TERM_T2, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.adapter_params*, %struct.adapter_params** %7, align 8
  %35 = getelementptr inbounds %struct.adapter_params, %struct.adapter_params* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CHBT_TERM_FPGA, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %33, %27, %3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @A_TP_PC_CONFIG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @G_TP_PC_REV(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load i32, i32* @TERM_T1B, align 4
  %52 = load %struct.adapter_params*, %struct.adapter_params** %7, align 8
  %53 = getelementptr inbounds %struct.adapter_params, %struct.adapter_params* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %63

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @TERM_T2, align 4
  %59 = load %struct.adapter_params*, %struct.adapter_params** %7, align 8
  %60 = getelementptr inbounds %struct.adapter_params, %struct.adapter_params* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %62

61:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %66

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %50
  br label %65

64:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %66

65:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %64, %61
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @G_TP_PC_REV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
