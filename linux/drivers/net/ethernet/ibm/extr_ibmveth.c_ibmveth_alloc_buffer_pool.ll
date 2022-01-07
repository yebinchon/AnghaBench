; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_alloc_buffer_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_alloc_buffer_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmveth_buff_pool = type { i32*, i32, i32*, i64, i64, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmveth_buff_pool*)* @ibmveth_alloc_buffer_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_alloc_buffer_pool(%struct.ibmveth_buff_pool* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmveth_buff_pool*, align 8
  %4 = alloca i32, align 4
  store %struct.ibmveth_buff_pool* %0, %struct.ibmveth_buff_pool** %3, align 8
  %5 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %6 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32* @kmalloc_array(i32 %7, i32 4, i32 %8)
  %10 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %11 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %10, i32 0, i32 0
  store i32* %9, i32** %11, align 8
  %12 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %13 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %88

17:                                               ; preds = %1
  %18 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %19 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kcalloc(i32 %20, i32 4, i32 %21)
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %25 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %27 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %17
  %31 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %32 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %36 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  store i32 -1, i32* %2, align 4
  br label %88

37:                                               ; preds = %17
  %38 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %39 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kcalloc(i32 %40, i32 8, i32 %41)
  %43 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %44 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %46 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %45, i32 0, i32 6
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %37
  %50 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %51 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @kfree(i32* %52)
  %54 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %55 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %57 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @kfree(i32* %58)
  %60 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %61 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  store i32 -1, i32* %2, align 4
  br label %88

62:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %77, %62
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %66 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %72 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %63

80:                                               ; preds = %63
  %81 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %82 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %81, i32 0, i32 5
  %83 = call i32 @atomic_set(i32* %82, i32 0)
  %84 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %85 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %84, i32 0, i32 4
  store i64 0, i64* %85, align 8
  %86 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %3, align 8
  %87 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %80, %49, %30, %16
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
