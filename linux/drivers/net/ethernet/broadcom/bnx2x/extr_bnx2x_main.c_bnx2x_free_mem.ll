; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_free_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ILT_MEMOP_FREE = common dso_local global i32 0, align 4
@BCM_PAGE_SIZE = common dso_local global i32 0, align 4
@NUM_EQ_PAGES = common dso_local global i32 0, align 4
@SRC_T2_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_free_mem(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %4, i32 0, i32 15
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 14
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  %17 = call i32 @BNX2X_PCI_FREE(i32 %6, i32 %9, i32 %16)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = call i64 @IS_VF(%struct.bnx2x* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %109

22:                                               ; preds = %1
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 13
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %27 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @BNX2X_PCI_FREE(i32 %25, i32 %28, i32 4)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %34 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @BNX2X_PCI_FREE(i32 %32, i32 %35, i32 4)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %68, %22
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %40 = call i32 @L2_ILT_LINES(%struct.bnx2x* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  %43 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %44 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %43, i32 0, i32 9
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %52 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %51, i32 0, i32 9
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %60 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %59, i32 0, i32 9
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @BNX2X_PCI_FREE(i32 %50, i32 %58, i32 %66)
  br label %68

68:                                               ; preds = %42
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %37

71:                                               ; preds = %37
  %72 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %73 = load i32, i32* @ILT_MEMOP_FREE, align 4
  %74 = call i32 @bnx2x_ilt_mem_op(%struct.bnx2x* %72, i32 %73)
  %75 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %76 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %75, i32 0, i32 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @BNX2X_FREE(i32 %79)
  %81 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %82 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %85 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %88 = call i32 @BNX2X_PCI_FREE(i32 %83, i32 %86, i32 %87)
  %89 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %90 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %93 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %96 = load i32, i32* @NUM_EQ_PAGES, align 4
  %97 = mul nsw i32 %95, %96
  %98 = call i32 @BNX2X_PCI_FREE(i32 %91, i32 %94, i32 %97)
  %99 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %100 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %103 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SRC_T2_SZ, align 4
  %106 = call i32 @BNX2X_PCI_FREE(i32 %101, i32 %104, i32 %105)
  %107 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %108 = call i32 @bnx2x_iov_free_mem(%struct.bnx2x* %107)
  br label %109

109:                                              ; preds = %71, %21
  ret void
}

declare dso_local i32 @BNX2X_PCI_FREE(i32, i32, i32) #1

declare dso_local i64 @IS_VF(%struct.bnx2x*) #1

declare dso_local i32 @L2_ILT_LINES(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_ilt_mem_op(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_FREE(i32) #1

declare dso_local i32 @bnx2x_iov_free_mem(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
