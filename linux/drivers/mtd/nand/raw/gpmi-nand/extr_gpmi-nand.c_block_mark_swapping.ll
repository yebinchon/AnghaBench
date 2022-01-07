; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_block_mark_swapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_block_mark_swapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { i32, %struct.bch_geometry }
%struct.bch_geometry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpmi_nand_data*, i8*, i8*)* @block_mark_swapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @block_mark_swapping(%struct.gpmi_nand_data* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.gpmi_nand_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bch_geometry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %15 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %14, i32 0, i32 1
  store %struct.bch_geometry* %15, %struct.bch_geometry** %7, align 8
  %16 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %4, align 8
  %17 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %91

21:                                               ; preds = %3
  %22 = load %struct.bch_geometry*, %struct.bch_geometry** %7, align 8
  %23 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.bch_geometry*, %struct.bch_geometry** %7, align 8
  %27 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %25, i64 %29
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* %10, align 4
  %37 = ashr i32 %35, %36
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i32, i32* %10, align 4
  %43 = sub i32 8, %42
  %44 = shl i32 %41, %43
  %45 = or i32 %37, %44
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %12, align 1
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %13, align 1
  %50 = load i8, i8* %12, align 1
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 %50, i8* %52, align 1
  %53 = load i32, i32* %10, align 4
  %54 = shl i32 1, %53
  %55 = sub nsw i32 %54, 1
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %11, align 1
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %11, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %60, %62
  %64 = load i8, i8* %13, align 1
  %65 = zext i8 %64 to i32
  %66 = load i32, i32* %10, align 4
  %67 = shl i32 %65, %66
  %68 = or i32 %63, %67
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 %69, i8* %71, align 1
  %72 = load i32, i32* %10, align 4
  %73 = shl i32 -1, %72
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %11, align 1
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* %11, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %78, %80
  %82 = load i8, i8* %13, align 1
  %83 = zext i8 %82 to i32
  %84 = load i32, i32* %10, align 4
  %85 = sub i32 8, %84
  %86 = ashr i32 %83, %85
  %87 = or i32 %81, %86
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  store i8 %88, i8* %90, align 1
  br label %91

91:                                               ; preds = %21, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
