; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_verify_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_verify_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i32, %struct.scatterlist*, i32)* @msb_verify_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_verify_block(%struct.msb_data* %0, i32 %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.msb_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.msb_data* %0, %struct.msb_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %14 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %17 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sg_init_one(%struct.scatterlist* %10, i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %40, %4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %23 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %32 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  %35 = call i32 @msb_read_page(%struct.msb_data* %27, i32 %28, i32 %29, i32* null, %struct.scatterlist* %10, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %58

40:                                               ; preds = %26
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %20

43:                                               ; preds = %20
  %44 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %47 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.msb_data*, %struct.msb_data** %6, align 8
  %50 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @msb_sg_compare_to_buffer(%struct.scatterlist* %44, i32 %45, i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %54, %38
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @msb_read_page(%struct.msb_data*, i32, i32, i32*, %struct.scatterlist*, i32) #1

declare dso_local i64 @msb_sg_compare_to_buffer(%struct.scatterlist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
