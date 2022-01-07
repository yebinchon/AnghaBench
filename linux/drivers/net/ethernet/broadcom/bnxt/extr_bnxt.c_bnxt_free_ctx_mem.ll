; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_ctx_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_ctx_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_ctx_mem_info* }
%struct.bnxt_ctx_mem_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32** }

@BNXT_CTX_FLAG_INITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_free_ctx_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_free_ctx_mem(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.bnxt_ctx_mem_info*, align 8
  %4 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %5 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %6 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %5, i32 0, i32 1
  %7 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %6, align 8
  store %struct.bnxt_ctx_mem_info* %7, %struct.bnxt_ctx_mem_info** %3, align 8
  %8 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %3, align 8
  %9 = icmp ne %struct.bnxt_ctx_mem_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %85

11:                                               ; preds = %1
  %12 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %3, align 8
  %13 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %12, i32 0, i32 8
  %14 = load i32**, i32*** %13, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %36, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %22 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %28 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %3, align 8
  %29 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %28, i32 0, i32 8
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @bnxt_free_ctx_pg_tbls(%struct.bnxt* %27, i32* %34)
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %19

39:                                               ; preds = %19
  %40 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %3, align 8
  %41 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %40, i32 0, i32 8
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @kfree(i32* %44)
  %46 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %3, align 8
  %47 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %46, i32 0, i32 8
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %39, %11
  %51 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %52 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %3, align 8
  %53 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %52, i32 0, i32 7
  %54 = call i32 @bnxt_free_ctx_pg_tbls(%struct.bnxt* %51, i32* %53)
  %55 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %56 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %3, align 8
  %57 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %56, i32 0, i32 6
  %58 = call i32 @bnxt_free_ctx_pg_tbls(%struct.bnxt* %55, i32* %57)
  %59 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %60 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %3, align 8
  %61 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %60, i32 0, i32 5
  %62 = call i32 @bnxt_free_ctx_pg_tbls(%struct.bnxt* %59, i32* %61)
  %63 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %64 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %3, align 8
  %65 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %64, i32 0, i32 4
  %66 = call i32 @bnxt_free_ctx_pg_tbls(%struct.bnxt* %63, i32* %65)
  %67 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %68 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %3, align 8
  %69 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %68, i32 0, i32 3
  %70 = call i32 @bnxt_free_ctx_pg_tbls(%struct.bnxt* %67, i32* %69)
  %71 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %72 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %3, align 8
  %73 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %72, i32 0, i32 2
  %74 = call i32 @bnxt_free_ctx_pg_tbls(%struct.bnxt* %71, i32* %73)
  %75 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %76 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %3, align 8
  %77 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %76, i32 0, i32 1
  %78 = call i32 @bnxt_free_ctx_pg_tbls(%struct.bnxt* %75, i32* %77)
  %79 = load i32, i32* @BNXT_CTX_FLAG_INITED, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %3, align 8
  %82 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %50, %10
  ret void
}

declare dso_local i32 @bnxt_free_ctx_pg_tbls(%struct.bnxt*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
