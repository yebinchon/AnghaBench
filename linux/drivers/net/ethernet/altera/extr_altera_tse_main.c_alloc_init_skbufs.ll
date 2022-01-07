; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_alloc_init_skbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_alloc_init_skbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_tse_private = type { i32, i32, i32*, i32*, i64, i64, i32, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_tse_private*)* @alloc_init_skbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_init_skbufs(%struct.altera_tse_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.altera_tse_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.altera_tse_private* %0, %struct.altera_tse_private** %3, align 8
  %8 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %9 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %12 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kcalloc(i32 %16, i32 4, i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %21 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %23 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %96

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kcalloc(i32 %28, i32 4, i32 %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %33 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  %34 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %35 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %91

39:                                               ; preds = %27
  %40 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %41 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %40, i32 0, i32 8
  store i64 0, i64* %41, align 8
  %42 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %43 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %42, i32 0, i32 7
  store i64 0, i64* %43, align 8
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %64, %39
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %50 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %51 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %57 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @tse_init_rx_buffer(%struct.altera_tse_private* %49, i32* %55, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %72

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %44

67:                                               ; preds = %44
  %68 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %69 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %68, i32 0, i32 5
  store i64 0, i64* %69, align 8
  %70 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %71 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %70, i32 0, i32 4
  store i64 0, i64* %71, align 8
  store i32 0, i32* %2, align 4
  br label %98

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %77, %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %7, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %79 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %80 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = call i32 @tse_free_rx_buffer(%struct.altera_tse_private* %78, i32* %84)
  br label %73

86:                                               ; preds = %73
  %87 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %88 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @kfree(i32* %89)
  br label %91

91:                                               ; preds = %86, %38
  %92 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %93 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @kfree(i32* %94)
  br label %96

96:                                               ; preds = %91, %26
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %67
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @tse_init_rx_buffer(%struct.altera_tse_private*, i32*, i32) #1

declare dso_local i32 @tse_free_rx_buffer(%struct.altera_tse_private*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
