; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_free_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_free_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, %struct.TYPE_2__**, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*)* @i40e_vsi_free_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_vsi_free_tx_resources(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %4 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %5 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %5, align 8
  %7 = icmp ne %struct.TYPE_2__** %6, null
  br i1 %7, label %8, label %49

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %45, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %12 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %9
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %17 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %15
  %25 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %26 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %37 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = call i32 @i40e_free_tx_resources(%struct.TYPE_2__* %42)
  br label %44

44:                                               ; preds = %35, %24, %15
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %9

48:                                               ; preds = %9
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %51 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %51, align 8
  %53 = icmp ne %struct.TYPE_2__** %52, null
  br i1 %53, label %54, label %95

54:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %91, %54
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %58 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %94

61:                                               ; preds = %55
  %62 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %63 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = icmp ne %struct.TYPE_2__* %68, null
  br i1 %69, label %70, label %90

70:                                               ; preds = %61
  %71 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %72 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %73, i64 %75
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %70
  %82 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %83 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %84, i64 %86
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = call i32 @i40e_free_tx_resources(%struct.TYPE_2__* %88)
  br label %90

90:                                               ; preds = %81, %70, %61
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %55

94:                                               ; preds = %55
  br label %95

95:                                               ; preds = %94, %49
  ret void
}

declare dso_local i32 @i40e_free_tx_resources(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
