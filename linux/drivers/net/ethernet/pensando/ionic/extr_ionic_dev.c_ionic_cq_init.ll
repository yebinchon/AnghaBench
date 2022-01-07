; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_cq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_cq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32 }
%struct.ionic_cq = type { i32, i64, i32, %struct.ionic_cq_info*, %struct.ionic_cq_info*, %struct.ionic_intr_info*, %struct.ionic_lif* }
%struct.ionic_cq_info = type { i32, i32, %struct.ionic_cq_info* }
%struct.ionic_intr_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_cq_init(%struct.ionic_lif* %0, %struct.ionic_cq* %1, %struct.ionic_intr_info* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ionic_lif*, align 8
  %8 = alloca %struct.ionic_cq*, align 8
  %9 = alloca %struct.ionic_intr_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ionic_cq_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %7, align 8
  store %struct.ionic_cq* %1, %struct.ionic_cq** %8, align 8
  store %struct.ionic_intr_info* %2, %struct.ionic_intr_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @is_power_of_2(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %90

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @ilog2(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %13, align 4
  %31 = icmp ugt i32 %30, 16
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %24
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %90

35:                                               ; preds = %29
  %36 = load %struct.ionic_lif*, %struct.ionic_lif** %7, align 8
  %37 = load %struct.ionic_cq*, %struct.ionic_cq** %8, align 8
  %38 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %37, i32 0, i32 6
  store %struct.ionic_lif* %36, %struct.ionic_lif** %38, align 8
  %39 = load %struct.ionic_intr_info*, %struct.ionic_intr_info** %9, align 8
  %40 = load %struct.ionic_cq*, %struct.ionic_cq** %8, align 8
  %41 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %40, i32 0, i32 5
  store %struct.ionic_intr_info* %39, %struct.ionic_intr_info** %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.ionic_cq*, %struct.ionic_cq** %8, align 8
  %44 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.ionic_cq*, %struct.ionic_cq** %8, align 8
  %47 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ionic_cq*, %struct.ionic_cq** %8, align 8
  %49 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %48, i32 0, i32 3
  %50 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %49, align 8
  %51 = load %struct.ionic_cq*, %struct.ionic_cq** %8, align 8
  %52 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %51, i32 0, i32 4
  store %struct.ionic_cq_info* %50, %struct.ionic_cq_info** %52, align 8
  %53 = load %struct.ionic_cq*, %struct.ionic_cq** %8, align 8
  %54 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %53, i32 0, i32 2
  store i32 1, i32* %54, align 8
  %55 = load %struct.ionic_cq*, %struct.ionic_cq** %8, align 8
  %56 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %55, i32 0, i32 3
  %57 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %56, align 8
  store %struct.ionic_cq_info* %57, %struct.ionic_cq_info** %12, align 8
  store i32 0, i32* %14, align 4
  br label %58

58:                                               ; preds = %86, %35
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %58
  %63 = load i32, i32* %14, align 4
  %64 = add i32 %63, 1
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.ionic_cq*, %struct.ionic_cq** %8, align 8
  %69 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %68, i32 0, i32 3
  %70 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %69, align 8
  %71 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %12, align 8
  %72 = getelementptr inbounds %struct.ionic_cq_info, %struct.ionic_cq_info* %71, i32 0, i32 2
  store %struct.ionic_cq_info* %70, %struct.ionic_cq_info** %72, align 8
  %73 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %12, align 8
  %74 = getelementptr inbounds %struct.ionic_cq_info, %struct.ionic_cq_info* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %80

75:                                               ; preds = %62
  %76 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %12, align 8
  %77 = getelementptr inbounds %struct.ionic_cq_info, %struct.ionic_cq_info* %76, i64 1
  %78 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %12, align 8
  %79 = getelementptr inbounds %struct.ionic_cq_info, %struct.ionic_cq_info* %78, i32 0, i32 2
  store %struct.ionic_cq_info* %77, %struct.ionic_cq_info** %79, align 8
  br label %80

80:                                               ; preds = %75, %67
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %12, align 8
  %83 = getelementptr inbounds %struct.ionic_cq_info, %struct.ionic_cq_info* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %12, align 8
  %85 = getelementptr inbounds %struct.ionic_cq_info, %struct.ionic_cq_info* %84, i32 1
  store %struct.ionic_cq_info* %85, %struct.ionic_cq_info** %12, align 8
  br label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %14, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %58

89:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %32, %21
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
