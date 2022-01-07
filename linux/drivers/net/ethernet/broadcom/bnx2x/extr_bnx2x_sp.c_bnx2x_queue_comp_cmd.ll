; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_queue_comp_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_queue_comp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_queue_sp_obj = type { i64, i64, i64, i64, i32, i32, i32* }

@.str = private unnamed_addr constant [71 x i8] c"Bad MC reply %d for queue %d in state %d pending 0x%lx, next_state %d\0A\00", align 1
@BNX2X_PRIMARY_CID_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"illegal value for next tx_only: %d. max cos was %d\00", align 1
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Completing command %d for queue %d, setting state to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"primary cid %d: num tx-only cons %d\0A\00", align 1
@BNX2X_Q_STATE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_queue_sp_obj*, i32)* @bnx2x_queue_comp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_queue_comp_cmd(%struct.bnx2x* %0, %struct.bnx2x_queue_sp_obj* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_queue_sp_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_queue_sp_obj* %1, %struct.bnx2x_queue_sp_obj** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %10 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @test_and_clear_bit(i32 %12, i64* %8)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %19 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @BNX2X_PRIMARY_CID_INDEX, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %26 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %30 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, i64, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %24, i32 %27, i64 %28, i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %101

35:                                               ; preds = %3
  %36 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %37 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %40 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %45 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %48 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, i64, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %46, i64 %49)
  br label %51

51:                                               ; preds = %43, %35
  %52 = load i32, i32* @BNX2X_MSG_SP, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %55 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @BNX2X_PRIMARY_CID_INDEX, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %62 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, i32, i64, ...) @DP(i32 %52, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %53, i64 %60, i32 %63)
  %65 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %66 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %51
  %70 = load i32, i32* @BNX2X_MSG_SP, align 4
  %71 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %72 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @BNX2X_PRIMARY_CID_INDEX, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %78 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i32, i8*, i32, i64, ...) @DP(i32 %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %76, i64 %79)
  br label %81

81:                                               ; preds = %69, %51
  %82 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %83 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %86 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %88 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %91 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  %92 = load i32, i32* @BNX2X_Q_STATE_MAX, align 4
  %93 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %94 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = call i32 (...) @wmb()
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.bnx2x_queue_sp_obj*, %struct.bnx2x_queue_sp_obj** %6, align 8
  %98 = getelementptr inbounds %struct.bnx2x_queue_sp_obj, %struct.bnx2x_queue_sp_obj* %97, i32 0, i32 0
  %99 = call i32 @clear_bit(i32 %96, i64* %98)
  %100 = call i32 (...) @smp_mb__after_atomic()
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %81, %15
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64, i64, ...) #1

declare dso_local i32 @DP(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
