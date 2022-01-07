; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_ksz_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_ksz_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_info = type { %struct.ksz_hw }
%struct.ksz_hw = type { i32, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NUM_OF_RX_DESC = common dso_local global i32 0, align 4
@NUM_OF_TX_DESC = common dso_local global i32 0, align 4
@DESC_ALIGNMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Hardware descriptor size not right!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_info*)* @ksz_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz_alloc_mem(%struct.dev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dev_info*, align 8
  %4 = alloca %struct.ksz_hw*, align 8
  store %struct.dev_info* %0, %struct.dev_info** %3, align 8
  %5 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %6 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %5, i32 0, i32 0
  store %struct.ksz_hw* %6, %struct.ksz_hw** %4, align 8
  %7 = load i32, i32* @NUM_OF_RX_DESC, align 4
  %8 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @NUM_OF_TX_DESC, align 4
  %12 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @NUM_OF_TX_DESC, align 4
  %18 = sdiv i32 %17, 4
  %19 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %20 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %22 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 8
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %27 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %26, i32 0, i32 1
  store i32 8, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %1
  br label %29

29:                                               ; preds = %34, %28
  %30 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %31 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %36 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %40 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %29

43:                                               ; preds = %29
  %44 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %45 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %50 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = shl i32 1, %52
  %54 = sub nsw i32 %53, 1
  %55 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %56 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %58 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %48, %43
  %60 = load i32, i32* @DESC_ALIGNMENT, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 4, %61
  %63 = sub i64 %62, 1
  %64 = load i32, i32* @DESC_ALIGNMENT, align 4
  %65 = sext i32 %64 to i64
  %66 = udiv i64 %63, %65
  %67 = load i32, i32* @DESC_ALIGNMENT, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %66, %68
  %70 = trunc i64 %69 to i32
  %71 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %72 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @DESC_ALIGNMENT, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 4, %75
  %77 = sub i64 %76, 1
  %78 = load i32, i32* @DESC_ALIGNMENT, align 4
  %79 = sext i32 %78 to i64
  %80 = udiv i64 %77, %79
  %81 = load i32, i32* @DESC_ALIGNMENT, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %80, %82
  %84 = trunc i64 %83 to i32
  %85 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %86 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %89 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ne i64 %92, 4
  br i1 %93, label %94, label %96

94:                                               ; preds = %59
  %95 = call i32 @pr_alert(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %59
  %97 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %98 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %97, i32 0, i32 3
  %99 = call i32 @ksz_check_desc_num(%struct.TYPE_2__* %98)
  %100 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %101 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %100, i32 0, i32 2
  %102 = call i32 @ksz_check_desc_num(%struct.TYPE_2__* %101)
  %103 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %104 = call i64 @ksz_alloc_desc(%struct.dev_info* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  store i32 1, i32* %2, align 4
  br label %108

107:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %106
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @pr_alert(i8*) #1

declare dso_local i32 @ksz_check_desc_num(%struct.TYPE_2__*) #1

declare dso_local i64 @ksz_alloc_desc(%struct.dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
