; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_read_leb_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_read_leb_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_volume = type { i32 }
%struct.ubi_sgl = type { i64, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@UBI_MAX_SG_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_eba_read_leb_sg(%struct.ubi_device* %0, %struct.ubi_volume* %1, %struct.ubi_sgl* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_device*, align 8
  %10 = alloca %struct.ubi_volume*, align 8
  %11 = alloca %struct.ubi_sgl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.scatterlist*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %9, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %10, align 8
  store %struct.ubi_sgl* %2, %struct.ubi_sgl** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  br label %19

19:                                               ; preds = %101, %7
  %20 = load %struct.ubi_sgl*, %struct.ubi_sgl** %11, align 8
  %21 = getelementptr inbounds %struct.ubi_sgl, %struct.ubi_sgl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UBI_MAX_SG_COUNT, align 8
  %24 = icmp ult i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ubi_assert(i32 %25)
  %27 = load %struct.ubi_sgl*, %struct.ubi_sgl** %11, align 8
  %28 = getelementptr inbounds %struct.ubi_sgl, %struct.ubi_sgl* %27, i32 0, i32 2
  %29 = load %struct.scatterlist*, %struct.scatterlist** %28, align 8
  %30 = load %struct.ubi_sgl*, %struct.ubi_sgl** %11, align 8
  %31 = getelementptr inbounds %struct.ubi_sgl, %struct.ubi_sgl* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %29, i64 %32
  store %struct.scatterlist* %33, %struct.scatterlist** %18, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %36 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ubi_sgl*, %struct.ubi_sgl** %11, align 8
  %39 = getelementptr inbounds %struct.ubi_sgl, %struct.ubi_sgl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %37, %40
  %42 = icmp slt i32 %34, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %19
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %16, align 4
  br label %53

45:                                               ; preds = %19
  %46 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %47 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ubi_sgl*, %struct.ubi_sgl** %11, align 8
  %50 = getelementptr inbounds %struct.ubi_sgl, %struct.ubi_sgl* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %16, align 4
  br label %53

53:                                               ; preds = %45, %43
  %54 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  %55 = load %struct.ubi_volume*, %struct.ubi_volume** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %58 = call i32 @sg_virt(%struct.scatterlist* %57)
  %59 = load %struct.ubi_sgl*, %struct.ubi_sgl** %11, align 8
  %60 = getelementptr inbounds %struct.ubi_sgl, %struct.ubi_sgl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %58, %61
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @ubi_eba_read_leb(%struct.ubi_device* %54, %struct.ubi_volume* %55, i32 %56, i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %53
  %70 = load i32, i32* %17, align 4
  store i32 %70, i32* %8, align 4
  br label %110

71:                                               ; preds = %53
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.ubi_sgl*, %struct.ubi_sgl** %11, align 8
  %83 = getelementptr inbounds %struct.ubi_sgl, %struct.ubi_sgl* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.ubi_sgl*, %struct.ubi_sgl** %11, align 8
  %87 = getelementptr inbounds %struct.ubi_sgl, %struct.ubi_sgl* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %90 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %80
  %94 = load %struct.ubi_sgl*, %struct.ubi_sgl** %11, align 8
  %95 = getelementptr inbounds %struct.ubi_sgl, %struct.ubi_sgl* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = load %struct.ubi_sgl*, %struct.ubi_sgl** %11, align 8
  %99 = getelementptr inbounds %struct.ubi_sgl, %struct.ubi_sgl* %98, i32 0, i32 1
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %93, %80
  br label %108

101:                                              ; preds = %71
  %102 = load %struct.ubi_sgl*, %struct.ubi_sgl** %11, align 8
  %103 = getelementptr inbounds %struct.ubi_sgl, %struct.ubi_sgl* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = load %struct.ubi_sgl*, %struct.ubi_sgl** %11, align 8
  %107 = getelementptr inbounds %struct.ubi_sgl, %struct.ubi_sgl* %106, i32 0, i32 1
  store i32 0, i32* %107, align 8
  br label %19

108:                                              ; preds = %100
  %109 = load i32, i32* %17, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %108, %69
  %111 = load i32, i32* %8, align 4
  ret i32 %111
}

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @ubi_eba_read_leb(%struct.ubi_device*, %struct.ubi_volume*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sg_virt(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
