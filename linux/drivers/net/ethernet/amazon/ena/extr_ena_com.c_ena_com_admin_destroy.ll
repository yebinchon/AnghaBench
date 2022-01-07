; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_admin_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_admin_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, %struct.ena_com_aenq, %struct.ena_com_admin_queue }
%struct.ena_com_aenq = type { i32*, i32, i32 }
%struct.ena_com_admin_queue = type { i32, i32*, %struct.ena_com_admin_sq, %struct.ena_com_admin_cq }
%struct.ena_com_admin_sq = type { i32*, i32 }
%struct.ena_com_admin_cq = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_com_admin_destroy(%struct.ena_com_dev* %0) #0 {
  %2 = alloca %struct.ena_com_dev*, align 8
  %3 = alloca %struct.ena_com_admin_queue*, align 8
  %4 = alloca %struct.ena_com_admin_cq*, align 8
  %5 = alloca %struct.ena_com_admin_sq*, align 8
  %6 = alloca %struct.ena_com_aenq*, align 8
  %7 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %2, align 8
  %8 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %9 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %8, i32 0, i32 2
  store %struct.ena_com_admin_queue* %9, %struct.ena_com_admin_queue** %3, align 8
  %10 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %11 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %10, i32 0, i32 3
  store %struct.ena_com_admin_cq* %11, %struct.ena_com_admin_cq** %4, align 8
  %12 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %13 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %12, i32 0, i32 2
  store %struct.ena_com_admin_sq* %13, %struct.ena_com_admin_sq** %5, align 8
  %14 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %15 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %14, i32 0, i32 1
  store %struct.ena_com_aenq* %15, %struct.ena_com_aenq** %6, align 8
  %16 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %17 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %22 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %25 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @devm_kfree(i32 %23, i32* %26)
  br label %28

28:                                               ; preds = %20, %1
  %29 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %30 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %32 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ADMIN_SQ_SIZE(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %5, align 8
  %36 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %28
  %40 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %41 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %5, align 8
  %45 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %5, align 8
  %48 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dma_free_coherent(i32 %42, i32 %43, i32* %46, i32 %49)
  br label %51

51:                                               ; preds = %39, %28
  %52 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %5, align 8
  %53 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %55 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ADMIN_CQ_SIZE(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.ena_com_admin_cq*, %struct.ena_com_admin_cq** %4, align 8
  %59 = getelementptr inbounds %struct.ena_com_admin_cq, %struct.ena_com_admin_cq* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %51
  %63 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %64 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.ena_com_admin_cq*, %struct.ena_com_admin_cq** %4, align 8
  %68 = getelementptr inbounds %struct.ena_com_admin_cq, %struct.ena_com_admin_cq* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.ena_com_admin_cq*, %struct.ena_com_admin_cq** %4, align 8
  %71 = getelementptr inbounds %struct.ena_com_admin_cq, %struct.ena_com_admin_cq* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dma_free_coherent(i32 %65, i32 %66, i32* %69, i32 %72)
  br label %74

74:                                               ; preds = %62, %51
  %75 = load %struct.ena_com_admin_cq*, %struct.ena_com_admin_cq** %4, align 8
  %76 = getelementptr inbounds %struct.ena_com_admin_cq, %struct.ena_com_admin_cq* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  %77 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %78 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ADMIN_AENQ_SIZE(i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %82 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %74
  %87 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %88 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %92 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %95 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @dma_free_coherent(i32 %89, i32 %90, i32* %93, i32 %96)
  br label %98

98:                                               ; preds = %86, %74
  %99 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %100 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  ret void
}

declare dso_local i32 @devm_kfree(i32, i32*) #1

declare dso_local i32 @ADMIN_SQ_SIZE(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @ADMIN_CQ_SIZE(i32) #1

declare dso_local i32 @ADMIN_AENQ_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
