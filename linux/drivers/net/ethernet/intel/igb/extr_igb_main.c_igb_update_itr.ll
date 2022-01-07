; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_update_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_update_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_q_vector = type { i32 }
%struct.igb_ring_container = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_q_vector*, %struct.igb_ring_container*)* @igb_update_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_update_itr(%struct.igb_q_vector* %0, %struct.igb_ring_container* %1) #0 {
  %3 = alloca %struct.igb_q_vector*, align 8
  %4 = alloca %struct.igb_ring_container*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.igb_q_vector* %0, %struct.igb_q_vector** %3, align 8
  store %struct.igb_ring_container* %1, %struct.igb_ring_container** %4, align 8
  %8 = load %struct.igb_ring_container*, %struct.igb_ring_container** %4, align 8
  %9 = getelementptr inbounds %struct.igb_ring_container, %struct.igb_ring_container* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.igb_ring_container*, %struct.igb_ring_container** %4, align 8
  %12 = getelementptr inbounds %struct.igb_ring_container, %struct.igb_ring_container* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.igb_ring_container*, %struct.igb_ring_container** %4, align 8
  %15 = getelementptr inbounds %struct.igb_ring_container, %struct.igb_ring_container* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %100

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %92 [
    i32 128, label %22
    i32 129, label %37
    i32 130, label %78
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = udiv i32 %23, %24
  %26 = icmp ugt i32 %25, 8000
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 130, i32* %7, align 4
  br label %36

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = icmp ult i32 %29, 5
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp ugt i32 %32, 512
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 129, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %31, %28
  br label %36

36:                                               ; preds = %35, %27
  br label %92

37:                                               ; preds = %20
  %38 = load i32, i32* %6, align 4
  %39 = icmp ugt i32 %38, 10000
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = udiv i32 %41, %42
  %44 = icmp ugt i32 %43, 8000
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 130, i32* %7, align 4
  br label %61

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = icmp ult i32 %47, 10
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = udiv i32 %50, %51
  %53 = icmp ugt i32 %52, 1200
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %46
  store i32 130, i32* %7, align 4
  br label %60

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = icmp ugt i32 %56, 35
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 128, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %55
  br label %60

60:                                               ; preds = %59, %54
  br label %61

61:                                               ; preds = %60, %45
  br label %77

62:                                               ; preds = %37
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %5, align 4
  %65 = udiv i32 %63, %64
  %66 = icmp ugt i32 %65, 2000
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 130, i32* %7, align 4
  br label %76

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  %70 = icmp ule i32 %69, 2
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = icmp ult i32 %72, 512
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 128, i32* %7, align 4
  br label %75

75:                                               ; preds = %74, %71, %68
  br label %76

76:                                               ; preds = %75, %67
  br label %77

77:                                               ; preds = %76, %61
  br label %92

78:                                               ; preds = %20
  %79 = load i32, i32* %6, align 4
  %80 = icmp ugt i32 %79, 25000
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = icmp ugt i32 %82, 35
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 129, i32* %7, align 4
  br label %85

85:                                               ; preds = %84, %81
  br label %91

86:                                               ; preds = %78
  %87 = load i32, i32* %6, align 4
  %88 = icmp ult i32 %87, 1500
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 129, i32* %7, align 4
  br label %90

90:                                               ; preds = %89, %86
  br label %91

91:                                               ; preds = %90, %85
  br label %92

92:                                               ; preds = %20, %91, %77, %36
  %93 = load %struct.igb_ring_container*, %struct.igb_ring_container** %4, align 8
  %94 = getelementptr inbounds %struct.igb_ring_container, %struct.igb_ring_container* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  %95 = load %struct.igb_ring_container*, %struct.igb_ring_container** %4, align 8
  %96 = getelementptr inbounds %struct.igb_ring_container, %struct.igb_ring_container* %95, i32 0, i32 0
  store i32 0, i32* %96, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.igb_ring_container*, %struct.igb_ring_container** %4, align 8
  %99 = getelementptr inbounds %struct.igb_ring_container, %struct.igb_ring_container* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %92, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
