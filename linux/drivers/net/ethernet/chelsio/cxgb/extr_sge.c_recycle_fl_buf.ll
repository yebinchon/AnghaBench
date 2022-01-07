; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_recycle_fl_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_recycle_fl_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freelQ = type { i64, i32, i64, i32, i32*, %struct.freelQ_e* }
%struct.freelQ_e = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.freelQ*, i32)* @recycle_fl_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recycle_fl_buf(%struct.freelQ* %0, i32 %1) #0 {
  %3 = alloca %struct.freelQ*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.freelQ_e*, align 8
  %6 = alloca %struct.freelQ_e*, align 8
  store %struct.freelQ* %0, %struct.freelQ** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.freelQ*, %struct.freelQ** %3, align 8
  %8 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %7, i32 0, i32 5
  %9 = load %struct.freelQ_e*, %struct.freelQ_e** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %9, i64 %11
  store %struct.freelQ_e* %12, %struct.freelQ_e** %5, align 8
  %13 = load %struct.freelQ*, %struct.freelQ** %3, align 8
  %14 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %13, i32 0, i32 5
  %15 = load %struct.freelQ_e*, %struct.freelQ_e** %14, align 8
  %16 = load %struct.freelQ*, %struct.freelQ** %3, align 8
  %17 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %15, i64 %18
  store %struct.freelQ_e* %19, %struct.freelQ_e** %6, align 8
  %20 = load %struct.freelQ*, %struct.freelQ** %3, align 8
  %21 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.freelQ*, %struct.freelQ** %3, align 8
  %28 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.freelQ*, %struct.freelQ** %3, align 8
  %31 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %26, i32* %33, align 4
  %34 = load %struct.freelQ_e*, %struct.freelQ_e** %5, align 8
  %35 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.freelQ_e*, %struct.freelQ_e** %6, align 8
  %38 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.freelQ_e*, %struct.freelQ_e** %5, align 8
  %40 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.freelQ_e*, %struct.freelQ_e** %6, align 8
  %43 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.freelQ_e*, %struct.freelQ_e** %5, align 8
  %45 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @G_CMD_LEN(i32 %46)
  %48 = load %struct.freelQ*, %struct.freelQ** %3, align 8
  %49 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @V_CMD_GEN1(i32 %50)
  %52 = or i32 %47, %51
  %53 = load %struct.freelQ_e*, %struct.freelQ_e** %6, align 8
  %54 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = call i32 (...) @wmb()
  %56 = load %struct.freelQ*, %struct.freelQ** %3, align 8
  %57 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @V_CMD_GEN2(i32 %58)
  %60 = load %struct.freelQ_e*, %struct.freelQ_e** %6, align 8
  %61 = getelementptr inbounds %struct.freelQ_e, %struct.freelQ_e* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.freelQ*, %struct.freelQ** %3, align 8
  %63 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.freelQ*, %struct.freelQ** %3, align 8
  %67 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.freelQ*, %struct.freelQ** %3, align 8
  %71 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %2
  %75 = load %struct.freelQ*, %struct.freelQ** %3, align 8
  %76 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load %struct.freelQ*, %struct.freelQ** %3, align 8
  %78 = getelementptr inbounds %struct.freelQ, %struct.freelQ* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = xor i32 %79, 1
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %74, %2
  ret void
}

declare dso_local i32 @G_CMD_LEN(i32) #1

declare dso_local i32 @V_CMD_GEN1(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @V_CMD_GEN2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
