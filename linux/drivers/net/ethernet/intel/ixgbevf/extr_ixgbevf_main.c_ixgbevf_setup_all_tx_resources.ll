; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_setup_all_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_setup_all_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Allocation for Tx Queue %u failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Allocation for XDP Queue %u failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*)* @ixgbevf_setup_all_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_setup_all_tx_resources(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ixgbevf_setup_tx_resources(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %30

25:                                               ; preds = %13
  %26 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %26, i32 0, i32 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @hw_dbg(i32* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %61

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %7

33:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ixgbevf_setup_tx_resources(i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %57

52:                                               ; preds = %40
  %53 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %53, i32 0, i32 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @hw_dbg(i32* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %34

60:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %91

61:                                               ; preds = %52, %25
  br label %62

62:                                               ; preds = %66, %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %5, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ixgbevf_free_tx_resources(i32 %73)
  br label %62

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %80, %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %4, align 4
  %79 = icmp ne i32 %77, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ixgbevf_free_tx_resources(i32 %87)
  br label %76

89:                                               ; preds = %76
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %60
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @ixgbevf_setup_tx_resources(i32) #1

declare dso_local i32 @hw_dbg(i32*, i8*, i32) #1

declare dso_local i32 @ixgbevf_free_tx_resources(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
