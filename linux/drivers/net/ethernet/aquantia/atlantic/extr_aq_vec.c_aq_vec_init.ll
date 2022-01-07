; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_vec.c_aq_vec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_vec_s = type { i32, %struct.aq_hw_s*, %struct.aq_hw_ops*, i32, %struct.aq_ring_s** }
%struct.aq_ring_s = type { i32 }
%struct.aq_hw_ops = type { i32 (%struct.aq_hw_s*, %struct.aq_ring_s*, i32*)*, i32 (%struct.aq_hw_s*, %struct.aq_ring_s*, i32*)*, i32 (%struct.aq_hw_s*, %struct.aq_ring_s*, i32)* }
%struct.aq_hw_s = type { i32 }

@AQ_VEC_TX_ID = common dso_local global i64 0, align 8
@AQ_VEC_RX_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_vec_init(%struct.aq_vec_s* %0, %struct.aq_hw_ops* %1, %struct.aq_hw_s* %2) #0 {
  %4 = alloca %struct.aq_vec_s*, align 8
  %5 = alloca %struct.aq_hw_ops*, align 8
  %6 = alloca %struct.aq_hw_s*, align 8
  %7 = alloca %struct.aq_ring_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aq_vec_s* %0, %struct.aq_vec_s** %4, align 8
  store %struct.aq_hw_ops* %1, %struct.aq_hw_ops** %5, align 8
  store %struct.aq_hw_s* %2, %struct.aq_hw_s** %6, align 8
  store %struct.aq_ring_s* null, %struct.aq_ring_s** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.aq_hw_ops*, %struct.aq_hw_ops** %5, align 8
  %11 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %12 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %11, i32 0, i32 2
  store %struct.aq_hw_ops* %10, %struct.aq_hw_ops** %12, align 8
  %13 = load %struct.aq_hw_s*, %struct.aq_hw_s** %6, align 8
  %14 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %15 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %14, i32 0, i32 1
  store %struct.aq_hw_s* %13, %struct.aq_hw_s** %15, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %17 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %16, i32 0, i32 4
  %18 = load %struct.aq_ring_s**, %struct.aq_ring_s*** %17, align 8
  %19 = getelementptr inbounds %struct.aq_ring_s*, %struct.aq_ring_s** %18, i64 0
  %20 = load %struct.aq_ring_s*, %struct.aq_ring_s** %19, align 8
  store %struct.aq_ring_s* %20, %struct.aq_ring_s** %7, align 8
  br label %21

21:                                               ; preds = %104, %3
  %22 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %23 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %114

27:                                               ; preds = %21
  %28 = load %struct.aq_ring_s*, %struct.aq_ring_s** %7, align 8
  %29 = load i64, i64* @AQ_VEC_TX_ID, align 8
  %30 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %28, i64 %29
  %31 = call i32 @aq_ring_init(%struct.aq_ring_s* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %115

35:                                               ; preds = %27
  %36 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %37 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %36, i32 0, i32 2
  %38 = load %struct.aq_hw_ops*, %struct.aq_hw_ops** %37, align 8
  %39 = getelementptr inbounds %struct.aq_hw_ops, %struct.aq_hw_ops* %38, i32 0, i32 0
  %40 = load i32 (%struct.aq_hw_s*, %struct.aq_ring_s*, i32*)*, i32 (%struct.aq_hw_s*, %struct.aq_ring_s*, i32*)** %39, align 8
  %41 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %42 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %41, i32 0, i32 1
  %43 = load %struct.aq_hw_s*, %struct.aq_hw_s** %42, align 8
  %44 = load %struct.aq_ring_s*, %struct.aq_ring_s** %7, align 8
  %45 = load i64, i64* @AQ_VEC_TX_ID, align 8
  %46 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %44, i64 %45
  %47 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %48 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %47, i32 0, i32 3
  %49 = call i32 %40(%struct.aq_hw_s* %43, %struct.aq_ring_s* %46, i32* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  br label %115

53:                                               ; preds = %35
  %54 = load %struct.aq_ring_s*, %struct.aq_ring_s** %7, align 8
  %55 = load i64, i64* @AQ_VEC_RX_ID, align 8
  %56 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %54, i64 %55
  %57 = call i32 @aq_ring_init(%struct.aq_ring_s* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %115

61:                                               ; preds = %53
  %62 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %63 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %62, i32 0, i32 2
  %64 = load %struct.aq_hw_ops*, %struct.aq_hw_ops** %63, align 8
  %65 = getelementptr inbounds %struct.aq_hw_ops, %struct.aq_hw_ops* %64, i32 0, i32 1
  %66 = load i32 (%struct.aq_hw_s*, %struct.aq_ring_s*, i32*)*, i32 (%struct.aq_hw_s*, %struct.aq_ring_s*, i32*)** %65, align 8
  %67 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %68 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %67, i32 0, i32 1
  %69 = load %struct.aq_hw_s*, %struct.aq_hw_s** %68, align 8
  %70 = load %struct.aq_ring_s*, %struct.aq_ring_s** %7, align 8
  %71 = load i64, i64* @AQ_VEC_RX_ID, align 8
  %72 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %70, i64 %71
  %73 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %74 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %73, i32 0, i32 3
  %75 = call i32 %66(%struct.aq_hw_s* %69, %struct.aq_ring_s* %72, i32* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %61
  br label %115

79:                                               ; preds = %61
  %80 = load %struct.aq_ring_s*, %struct.aq_ring_s** %7, align 8
  %81 = load i64, i64* @AQ_VEC_RX_ID, align 8
  %82 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %80, i64 %81
  %83 = call i32 @aq_ring_rx_fill(%struct.aq_ring_s* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %115

87:                                               ; preds = %79
  %88 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %89 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %88, i32 0, i32 2
  %90 = load %struct.aq_hw_ops*, %struct.aq_hw_ops** %89, align 8
  %91 = getelementptr inbounds %struct.aq_hw_ops, %struct.aq_hw_ops* %90, i32 0, i32 2
  %92 = load i32 (%struct.aq_hw_s*, %struct.aq_ring_s*, i32)*, i32 (%struct.aq_hw_s*, %struct.aq_ring_s*, i32)** %91, align 8
  %93 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %94 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %93, i32 0, i32 1
  %95 = load %struct.aq_hw_s*, %struct.aq_hw_s** %94, align 8
  %96 = load %struct.aq_ring_s*, %struct.aq_ring_s** %7, align 8
  %97 = load i64, i64* @AQ_VEC_RX_ID, align 8
  %98 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %96, i64 %97
  %99 = call i32 %92(%struct.aq_hw_s* %95, %struct.aq_ring_s* %98, i32 0)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  br label %115

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %8, align 4
  %107 = load %struct.aq_vec_s*, %struct.aq_vec_s** %4, align 8
  %108 = getelementptr inbounds %struct.aq_vec_s, %struct.aq_vec_s* %107, i32 0, i32 4
  %109 = load %struct.aq_ring_s**, %struct.aq_ring_s*** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.aq_ring_s*, %struct.aq_ring_s** %109, i64 %111
  %113 = load %struct.aq_ring_s*, %struct.aq_ring_s** %112, align 8
  store %struct.aq_ring_s* %113, %struct.aq_ring_s** %7, align 8
  br label %21

114:                                              ; preds = %21
  br label %115

115:                                              ; preds = %114, %102, %86, %78, %60, %52, %34
  %116 = load i32, i32* %9, align 4
  ret i32 %116
}

declare dso_local i32 @aq_ring_init(%struct.aq_ring_s*) #1

declare dso_local i32 @aq_ring_rx_fill(%struct.aq_ring_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
