; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_alloc_q_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_alloc_q_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*)* @igb_alloc_q_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_alloc_q_vectors(%struct.igb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @igb_alloc_q_vector(%struct.igb_adapter* %32, i32 %33, i32 %34, i32 0, i32 0, i32 1, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %91

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %28

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48, %1
  br label %50

50:                                               ; preds = %87, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %56, %57
  %59 = call i32 @DIV_ROUND_UP(i32 %55, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i32 @DIV_ROUND_UP(i32 %60, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @igb_alloc_q_vector(%struct.igb_adapter* %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %54
  br label %91

76:                                               ; preds = %54
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %50

90:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %109

91:                                               ; preds = %75, %39
  %92 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %92, i32 0, i32 2
  store i32 0, i32* %93, align 4
  %94 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %96, i32 0, i32 0
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %102, %91
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %9, align 4
  %101 = icmp ne i32 %99, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @igb_free_q_vector(%struct.igb_adapter* %103, i32 %104)
  br label %98

106:                                              ; preds = %98
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %106, %90
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @igb_alloc_q_vector(%struct.igb_adapter*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @igb_free_q_vector(%struct.igb_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
