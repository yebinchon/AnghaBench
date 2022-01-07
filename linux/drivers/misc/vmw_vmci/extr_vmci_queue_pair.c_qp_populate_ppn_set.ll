; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_populate_ppn_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_queue_pair.c_qp_populate_ppn_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppn_set = type { i32, i32, i64*, i64* }

@VMCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ppn_set*)* @qp_populate_ppn_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_populate_ppn_set(i32* %0, %struct.ppn_set* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ppn_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ppn_set* %1, %struct.ppn_set** %4, align 8
  %7 = call i64 (...) @vmci_use_ppn64()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.ppn_set*, %struct.ppn_set** %4, align 8
  %12 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %11, i32 0, i32 3
  %13 = load i64*, i64** %12, align 8
  %14 = load %struct.ppn_set*, %struct.ppn_set** %4, align 8
  %15 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memcpy(i32* %10, i64* %13, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.ppn_set*, %struct.ppn_set** %4, align 8
  %23 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  %28 = load %struct.ppn_set*, %struct.ppn_set** %4, align 8
  %29 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.ppn_set*, %struct.ppn_set** %4, align 8
  %32 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memcpy(i32* %27, i64* %30, i32 %36)
  br label %91

38:                                               ; preds = %2
  %39 = load i32*, i32** %3, align 8
  %40 = bitcast i32* %39 to i64*
  store i64* %40, i64** %6, align 8
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %59, %38
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.ppn_set*, %struct.ppn_set** %4, align 8
  %44 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.ppn_set*, %struct.ppn_set** %4, align 8
  %49 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %48, i32 0, i32 3
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %6, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 %54, i64* %58, align 8
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %41

62:                                               ; preds = %41
  %63 = load i64*, i64** %6, align 8
  %64 = load %struct.ppn_set*, %struct.ppn_set** %4, align 8
  %65 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %63, i64 %67
  store i64* %68, i64** %6, align 8
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %87, %62
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.ppn_set*, %struct.ppn_set** %4, align 8
  %72 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %69
  %76 = load %struct.ppn_set*, %struct.ppn_set** %4, align 8
  %77 = getelementptr inbounds %struct.ppn_set, %struct.ppn_set* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %6, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 %82, i64* %86, align 8
  br label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %69

90:                                               ; preds = %69
  br label %91

91:                                               ; preds = %90, %9
  %92 = load i32, i32* @VMCI_SUCCESS, align 4
  ret i32 %92
}

declare dso_local i64 @vmci_use_ppn64(...) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
