; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_buddy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_buddy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_buddy = type { i32, i32*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_buddy*, i32)* @mlx4_buddy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_buddy_init(%struct.mlx4_buddy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_buddy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx4_buddy* %0, %struct.mlx4_buddy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %11, i32 0, i32 3
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kcalloc(i32 %17, i32 8, i32 %18)
  %20 = bitcast i8* %19 to i32*
  %21 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %22 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %24 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kcalloc(i32 %26, i32 4, i32 %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %31 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %38 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %2
  br label %120

42:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %78, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %46 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %44, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %43
  %50 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %52, %53
  %55 = shl i32 1, %54
  %56 = call i32 @BITS_TO_LONGS(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = load i32, i32* @__GFP_ZERO, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @kvmalloc_array(i32 %57, i32 8, i32 %60)
  %62 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %63 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %69 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %49
  br label %100

77:                                               ; preds = %49
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %43

81:                                               ; preds = %43
  %82 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %83 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %86 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @set_bit(i32 0, i32 %90)
  %92 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %93 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %96 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  store i32 1, i32* %99, align 4
  store i32 0, i32* %3, align 4
  br label %131

100:                                              ; preds = %76
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %116, %100
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %104 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp sle i32 %102, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %101
  %108 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %109 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @kvfree(i32 %114)
  br label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %101

119:                                              ; preds = %101
  br label %120

120:                                              ; preds = %119, %41
  %121 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %122 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @kfree(i32* %123)
  %125 = load %struct.mlx4_buddy*, %struct.mlx4_buddy** %4, align 8
  %126 = getelementptr inbounds %struct.mlx4_buddy, %struct.mlx4_buddy* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @kfree(i32* %127)
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %120, %81
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
