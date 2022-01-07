; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_alloc_qpls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_alloc_qpls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i8*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gve_priv*)* @gve_alloc_qpls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_alloc_qpls(%struct.gve_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gve_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %3, align 8
  %8 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %9 = call i32 @gve_num_tx_qpls(%struct.gve_priv* %8)
  %10 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %11 = call i32 @gve_num_rx_qpls(%struct.gve_priv* %10)
  %12 = add nsw i32 %9, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kvzalloc(i32 %16, i32 %17)
  %19 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %20 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %22 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %116

28:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %32 = call i32 @gve_num_tx_qpls(%struct.gve_priv* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %38 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gve_alloc_queue_page_list(%struct.gve_priv* %35, i32 %36, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %98

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %29

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %57 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @gve_alloc_queue_page_list(%struct.gve_priv* %54, i32 %55, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %98

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %49

67:                                               ; preds = %49
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @BITS_TO_LONGS(i32 %68)
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 8
  %72 = load i32, i32* @BITS_PER_BYTE, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %71, %73
  %75 = trunc i64 %74 to i32
  %76 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %77 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @BITS_TO_LONGS(i32 %79)
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 8
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i8* @kvzalloc(i32 %83, i32 %84)
  %86 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %87 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %90 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %67
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  br label %98

97:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %116

98:                                               ; preds = %94, %62, %43
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %107, %98
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @gve_free_queue_page_list(%struct.gve_priv* %104, i32 %105)
  br label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %99

110:                                              ; preds = %99
  %111 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %112 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @kvfree(i8* %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %110, %97, %25
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @gve_num_tx_qpls(%struct.gve_priv*) #1

declare dso_local i32 @gve_num_rx_qpls(%struct.gve_priv*) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @gve_alloc_queue_page_list(%struct.gve_priv*, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @gve_free_queue_page_list(%struct.gve_priv*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
